<script>
  import Button from '$lib/components/Button/Button.svelte';
</script>

<div class="container">
  <Button onClick={() => {console.log("test")}}>LOGIN</Button>
  <Button onClick={() => {console.log("test")}} size='small'>LOGIN</Button>
</div>

<style>
    .container{
        display: flex;
        padding: 10px 50px;
        justify-content: space-between;
        align-items: center;
        align-self: stretch;
        border-radius: 10px;
        width: 100%;
        border: 2px solid rgba(255, 255, 255, 0.25);
        background: rgba(255, 255, 255, 0.10);
        box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.20);
        backdrop-filter: blur(2px);
    }
</style>
