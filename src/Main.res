open Belt

@set external setInnerHTML: (Dom.element, string) => unit = "innerHTML"
@get external getInnerHTML: Dom.element => string = "innerHTML"
@val external element: Dom.element = "document"
@send @return(nullable)
external querySelector: (Dom.element, string) => option<Dom.element> = "querySelector"
@scope("document") @val external createElement: string => Dom.element = "createElement"
@send external appendChild: (Dom.element, Dom.element) => unit = "appendChild"
@send
external addEventListener: (Dom.element, string, unit => unit) => unit = "addEventListener"
@send
external removeEventListener: (Dom.element, string, unit => unit) => unit = "removeEventListener"
@module("./Main.module.scss") @val external style: {..} = "default"
@set external setClass: (Dom.element, string) => unit = "className"

switch element->querySelector("#app") {
| Some(app) => {
    let countor = ref(1)
    app->setInnerHTML("Hello World")
    let h1 = createElement("h1")
    h1->setInnerHTML("append Head 1")
    let button = createElement("button")
    let div = createElement("div")
    div->setClass(style["counterButton"])
    div->setInnerHTML(`counter: ${countor.contents->Int.toString}`)
    button->setInnerHTML("click")
    button->addEventListener("click", () => {
      countor.contents = countor.contents + 1
      div->setInnerHTML(`counter: ${countor.contents->Int.toString}`)
    })
    app->appendChild(h1)
    app->appendChild(button)
    app->appendChild(div)
  }
| _ => Js.log("not find #app")
}
