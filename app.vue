<script setup>
useSeoMeta({
	title: "aethereal Drips",
	ogTitle: "aethereal Drips",
	description: "aethereal Drips is a fast and reliable testnet faucet designed to provide developers with free testnet tokens for blockchain testing and smart contract deployment. Whether you're building on emerging networks or fine-tuning your decentralized applications (dApps), Aetheral Drips ensures you have the resources to innovate without limits.",
	ogDescription: "aethereal Drips is a fast and reliable testnet faucet designed to provide developers with free testnet tokens for blockchain testing and smart contract deployment. Whether you're building on emerging networks or fine-tuning your decentralized applications (dApps), Aetheral Drips ensures you have the resources to innovate without limits.",
	ogImage: "/logo.jpg",
	twitterCard: "summary_large_image",
	ogimageAlt: "aethereal Drips",
	ogImageWidth: "226",
	ogImageHeight: "226",
	twitterImage: "/logo.jpg",
});
</script>

<template>
	<Html lang="id" class="dark">
		<NuxtLayout>
			<NuxtLoadingIndicator />
			<NuxtPage />
		</NuxtLayout>
	</Html>
</template>

<style>
.page-enter-active,
.page-leave-active {
	transition: all 0.1s;
}
.page-enter-from,
.page-leave-to {
	opacity: 0;
	filter: blur(1rem);
}
</style>
