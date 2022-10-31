const artCardTemplate = document.createElement('template')
artCardTemplate.innerHTML = `
      <style>
      :host {
        margin: 1rem;
        padding: 1rem;
        display: grid;
        grid-template:
          "image title subtitle" auto /
          "description email" auto /
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
        margin-top:-2%;

      }

      .subtitle {
        margin: 0;
        grid-area: subtitle;
        align-self: center;
        font-size: 40px;
        color: #263238;
        font-family:sans-serif;
        margin-top:10%;
        margin-left:0.5%;
        position:relative;
      }

      .description {
        margin-top:30%;
        grid-area: description;
        font-size: 1.2rem;
        line-height: 1.5;
        color: var(--description-color, black);
      }

      .email {
        margin-top:40%;
        grid-area: email;
        font-size: 1.2rem;
        line-height: 1.5;
        color: var(--description-color, black);
        font-weight: bold;
      }

      </style>
      <img src="https://picsum.photos/300?image=83" alt="" class="image" />
      <h1 class="title">Title</h1>
      <h2 class="subtitle">Subtitle</h2>
      <p class="description">description</p>
      <p class="email">description</p>

      `

class BrimCard extends HTMLElement {
  constructor() {
    super()

    this
      .attachShadow({mode: 'open'})
      .appendChild(artCardTemplate.content.cloneNode(true))

    // Select the elements in the template that we need to manipulate
    let image = this.shadowRoot.querySelector('.image')
    let title = this.shadowRoot.querySelector('.title')
    let subtitle = this.shadowRoot.querySelector('.subtitle')
    let description = this.shadowRoot.querySelector('.description')
    let email = this.shadowRoot.querySelector('.email')


    // Add data from attributes (props) to our Shadow elements
    image.setAttribute('src', this.getAttribute('image') || 'https://picsum.photos/300?image=83')
    title.innerHTML = this.getAttribute('title') || 'Title'
    subtitle.innerHTML = this.getAttribute('subtitle') || 'subtitle'
    description.innerHTML = this.getAttribute('description') || 'description'
    email.innerHTML = this.getAttribute('email') || 'email'

  }
}

// Register the BrimCard element as `<brimma-card />` in the browser
customElements.define('brimma-card', BrimCard)