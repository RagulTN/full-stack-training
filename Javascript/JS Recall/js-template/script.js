const artCardTemplate = document.createElement('template')
artCardTemplate.innerHTML = `
      <style>
      :host {
        margin: 1rem;
        padding: 1rem;
        display: grid;
        grid-template:
          "image title subtitle" auto /
          "address1 address2" auto /
          25% 1fr;
        gap: 1rem;
        border-radius: .5rem;
        background-color: #CFD8DC;
      }
      .image {
        grid-area: image;
        height: 20px 20px;
      }

      .title {
        margin: 0;
        grid-area: title;
        align-self: center;
        font-size: 100px;
        color: #263238;
        font-family:sans-serif;
      }

      .subtitle {
        margin: 0;
        grid-area: subtitle;
        align-self: center;
        font-size: 40px;
        color: #263238;
        font-family:sans-serif;
      }

      .address1 {
        margin-top:30%;
        grid-area: address1;
        font-size: 1.2rem;
        line-height: 1.5;
        color: var(--address1-color, black);
      }

      .address2 {
        margin-top:40%;
        grid-area: address2;
        font-size: 1.2rem;
        line-height: 1.5;
        color: var(--address1-color, black);
      }

      </style>
      <img src="https://picsum.photos/300?image=83" alt="" class="image" />
      <h1 class="title">Title</h1>
      <h2 class="subtitle">Subtitle</h2>
      <p class="address1">address1</p>
      <p class="address2">address1</p>

      `

class ArtCard extends HTMLElement {
  constructor() {
    super()

    this
      .attachShadow({mode: 'open'})
      .appendChild(artCardTemplate.content.cloneNode(true))

    // Select the elements in the template that we need to manipulate
    let image = this.shadowRoot.querySelector('.image')
    let title = this.shadowRoot.querySelector('.title')
    let subtitle = this.shadowRoot.querySelector('.subtitle')
    let address1 = this.shadowRoot.querySelector('.address1')
    let address2 = this.shadowRoot.querySelector('.address2')


    // Add data from attributes (props) to our Shadow elements
    image.setAttribute('src', this.getAttribute('image') || 'https://picsum.photos/300?image=83')
    title.innerHTML = this.getAttribute('title') || 'Title'
    subtitle.innerHTML = this.getAttribute('subtitle') || 'subtitle'
    address1.innerHTML = this.getAttribute('address1') || 'address1'
    address2.innerHTML = this.getAttribute('address2') || 'address2'

  }
}

// Register the ArtCard element as `<brimma-card />` in the browser
customElements.define('brimma-card', ArtCard)