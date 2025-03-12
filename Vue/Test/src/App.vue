<script setup>
</script>

<template>
  <div class="container">
    <nav>
      <a href="/AboutMe">About Me</a>
    </nav>

    <img class="me" src="./assets/me.jpeg"/>
    <h1>Jhuan Nycolas</h1>

    <main>
      <p>Eu sou Jhuan Nycolas, um garoto apaixonado por programação.</p>

      <div class="github-repos"></div>
    </main>
  </div>
</template>

<style scoped>
nav > a {
  color: #D8DEE9;
  text-decoration: none;
}

nav > a:hover {
  text-decoration: underline;
}

.container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.me {
  border-radius: 200px;
  width: 180px;
  height: 180px;
}

h1 {
  text-align: center;
}

main > p {
  text-align: center;
}
</style>
