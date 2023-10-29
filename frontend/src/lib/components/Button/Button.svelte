<script lang="ts">
  export let onClick;
  export let size: "medium" | "small" = "medium";
  let labelClass = "label" + size[0].toUpperCase() + size.slice(1);
  console.log("labelClass: ", labelClass);
</script>

<button on:click={onClick} class={size}>
    <p class={labelClass}>
        <slot/>
    </p>
</button>
```
```
<style>
  button {
      display: flex;
      padding: 10px 20px;
      flex-direction: column;
      align-items: flex-start;
      gap: 10px;
      border-radius: 100px;
      border: 2px solid rgba(255, 255, 255, 0.35);
      background: rgba(28, 28, 31, 0.35);
      transition: ease-out 150ms;
  }
  .small {
      padding: 7px 12px;
  }
  button:hover {
      border: 2px solid rgba(255, 255, 255, 0.65);
      cursor: pointer;
      transition: ease-out 150ms;
  }
  button:active {
      border-radius: 100px;
      border: 2px solid rgba(255, 255, 255, 0.65);
      background: rgba(255, 255, 255, 0.10);
      transition: ease-out 150ms;
  }
  .labelMedium {
      margin: 0;
      padding: 0;
      color: #FFF;
      font-size: 20px;
      font-style: normal;
      font-weight: 600;
  }
  .labelSmall {
      margin: 0;
      padding: 0;
      color: #FFF;
      font-size: 15px;
      font-style: normal;
      font-weight: 600;
  }
</style>
