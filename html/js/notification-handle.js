const DEFAULT_OPTIONS = {
    position: "top-right",
    autoClose: 5000,
    canClose: true,
    hideProgress: false
};

class Notification {
    #notiElem;
    #removeBinded;
    #autoClose;
    #autoCloseTimeout;
    #visibleSince;
    #progressInterval;
    #textElem;

    constructor(options) {
        this.#notiElem = document.createElement("div");
        this.#notiElem.classList.add("noti");
        requestAnimationFrame(() => { this.#notiElem.classList.add("show"); });
        this.#removeBinded = this.remove.bind(this);
        this.update({ ...DEFAULT_OPTIONS, ...options });
    }

    get notiElem() { return this.#notiElem; }
    
    get textElem() { return this.#textElem; }

    set position(value) {
        const currentContainer = this.#notiElem.parentElement;
        const selector = `.noti-container[data-position="${value}"]`;
        const container = document.querySelector(selector) || createContainer(value);

        container.appendChild(this.#notiElem);
        if (currentContainer == null || currentContainer.hasChildNodes()) return;
        currentContainer.remove();
    }

    set text(value) {
        var textElem = document.createElement("span");
        textElem.classList.add("text");
        this.#notiElem.appendChild(textElem);
        textElem.textContent = value;
        this.#textElem = textElem;
    }

    set autoClose(value) {
        if (value === false) {
            this.#autoClose = value;
            return; 
        }
        this.#visibleSince = new Date();
        if (this.#autoCloseTimeout != null) clearTimeout(this.#autoCloseTimeout);
        if (value === true) value = DEFAULT_OPTIONS.autoClose;
        this.#autoCloseTimeout = setTimeout(() => this.remove(), value);
        this.#autoClose = value;
    }

    set canClose(value) {
        this.#notiElem.classList.toggle("can-close", value);
        if (value) {
            this.#notiElem.addEventListener("click", this.#removeBinded);
        } else { 
            this.#notiElem.removeEventListener("click", this.#removeBinded);
        }
    }

    set hideProgress(value) {
        this.#notiElem.classList.toggle("progress", !value);
        var val;
        (this.#autoClose == false) ? val = 0 : val = 1;
        this.#notiElem.style.setProperty("--progress", val);
        if (!value) {
            this.#progressInterval = setInterval(() => {
                if (this.#autoClose == false) return; 
                var timeVisible = new Date() - this.#visibleSince;
                this.#notiElem.style.setProperty("--progress", 1 - timeVisible / this.#autoClose);
            }, 10);
        }
    }

    update(options) {
        Object.entries(options).forEach(([key, value]) => {
            this[key] = value;
        });
    }

    remove() {
        clearInterval(this.#progressInterval);
        clearTimeout(this.#autoCloseTimeout);
        const container = this.#notiElem.parentElement;
        this.#notiElem.classList.remove("show");
        this.#notiElem.addEventListener("transitionend", () => {
            this.#notiElem.remove();
            if (container.hasChildNodes()) return;
            container.remove();
        });
    }

}

class TwoToneNotification extends Notification {

    constructor(options) {
        super(options);
    }

    set text(value) {
        if (typeof value != "object") return;
        
        var textElem1 = document.createElement("span");
        textElem1.classList.add("text1");
        var textElem2 = document.createElement("span");
        textElem2.classList.add("text2");
        this.notiElem.appendChild(textElem1);
        this.notiElem.appendChild(textElem2);


        textElem1.textContent = value.primary;
        textElem2.textContent = value.secondary;
    }
}

class ColourNotification extends Notification {

    constructor(options) {
        super(options);
    }

    set colour(value) {
        var regex = "^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$";
        if (!value.match(regex)) return;
        this.textElem.style.setProperty("color", value);
    }
}

function createContainer(position) {
    const container = document.createElement("div");
    container.classList.add("noti-container");
    container.dataset.position = position;
    document.body.append(container);
    return container;
}

/**
 * NUI Message Example
 * SendNUIMessage({
 *     module = "JayNotify",
 *     data = {
 *         type = "",
 *         options = {
 *              position: """,
 *              text: "", 
 *              autoClose: false
 *         }
 *     }
 * })
 */

window.addEventListener("message", function (event) {
    if (event.data.module == "JayNotify") {
        const data = event.data.data
    
        if (data.type == "standard") {
            new Notification({ 
                position: data.options.position,
                text: data.options.text, 
                autoClose: data.options.autoClose,
                canClose: false,
                hideProgress: false
            });
        } else if (data.type == "twotone") {
            new TwoToneNotification({ 
                position: data.options.position,
                text: {
                    primary: data.options.text.primary,
                    secondary: data.options.text.secondary
                }, 
                autoClose: data.options.autoClose,
                canClose: false,
                hideProgress: false
            });
        } else if (data.type == "colour") {
            new ColourNotification({ 
                position: data.options.position,
                text: data.options.text, 
                autoClose: data.options.autoClose,
                colour: data.options.colour,
                canClose: false,
                hideProgress: false
            });
        }

    }
});