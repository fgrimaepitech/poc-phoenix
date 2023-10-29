<script>
    import NavBar from '$lib/components/NavBar/NavBar.svelte';
</script>

<div class="page_container">
<NavBar />
<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>
</div>

<style>
    :global(body) {
        box-sizing: border-box;
        width: 100%;
        height: 100%;
        overflow: hidden;
        background: linear-gradient(180deg, #031F10 0%, #452750 100%);
    }
</style>
