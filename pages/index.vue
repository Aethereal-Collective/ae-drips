<template>
	<header class="flex flex-col justify-center w-full items-center mt-20 text-center">
		<h1 class="text-6xl font-bold">æthereal Drips</h1>
		<p class="opacity-80 pt-2">Small amount for Bigger movement</p>
	</header>

	<ClientOnly>
		<!-- your section with fetch + skeleton -->
		<section id="faucet" class="w-[80%] mx-auto">
			<!-- Radio buttons here -->
			<RadioGroup default-value="testnet" class="flex mt-20 space-x-5">
				<div class="flex items-center space-x-2">
					<RadioGroupItem id="testnet" value="testnet" />
					<Label for="testnet" class="text-base">Testnet</Label>
				</div>
				<div class="flex items-center space-x-2">
					<RadioGroupItem id="mainnet" value="mainnet" />
					<Label for="mainnet" class="text-base">Mainnet</Label>
				</div>
			</RadioGroup>

			<!-- Show skeleton while loading -->
			<div v-if="status === 'pending'" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 xl:gap-10 mt-10">
				<Skeleton v-for="i in 10" :key="i" class="h-[80px] rounded-lg" />
			</div>

			<!-- Show actual data -->
			<div v-else class="list-network mt-10 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 xl:gap-10">
				<div class="network" v-for="item in data" :key="item.contract_url">
					<div class="flex items-center justify-between p-4 border rounded-lg shadow-md">
						<div class="flex items-center space-x-2">
							<img :src="item.image" :alt="item.name" class="w-10 h-10 rounded-full" />
							<span class="text-lg font-semibold">{{ item.name }}</span>
						</div>
						<Button>Request</Button>
					</div>
				</div>
			</div>
		</section>
	</ClientOnly>
</template>

<script setup lang="ts">
interface Network {
	name: string;
	image: string;
	contract_url: string;
}

const baseUrl = useRequestURL().origin; // works for SSR + client
const { data, status, error } = await useFetch<Network[]>("/data/network.json", {
	server: false,
});

if (error.value) {
	console.log(baseUrl);

	console.error("Failed to fetch JSON:", error.value);
}
</script>
