<template>
  <div class="cappuccin">
    <img class="shadow" src="../assets/imgs/shadow.png" width="340px">
    <img src="../assets/imgs/cappuccin.png" width="400px" alt="Coffee Drink" class="drink">
  </div>
</template>

<style>

.cappuccin {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.shadow {
  transform: scaleY(-1);
}

.drink {
  position: relative;
}

</style>
