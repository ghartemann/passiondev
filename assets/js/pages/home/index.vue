<template>
    <div id="wp-bg" class="tw-w-full tw-min-h-screen tw-flex tw-justify-center tw-py-10">
        <h1 class="tw-fixed tw-text-white tw-text-3xl tw-left-10">
            <span
                v-for="(letter, index) in 'passion.dev'.split('')"
                class="anim-anniversaire"
                :style="'animation-delay:' + (.5 + index / 10) + 's'"
            >
                {{ letter }}
            </span>
        </h1>

        <div class="tw-w-[72rem] tw-space-y-8">
            <div class="tw-flex">
                <div>
                    <div v-for="lineNumber in 200"
                         :id="lineNumber.toString()"
                         class="tw-text-end tw-text-white/30 tw-pr-3 tw-mr-8 tw-border-r tw-border-white/30 tw-font-mono"
                    >
                        {{ lineNumber }}
                    </div>
                </div>

                <div>
                    <p>
                        bla
                    </p>

                    <p>
                        bla bla<sup @click="goTo('ref1')" class="tw-cursor-pointer">1</sup>
                    </p>

                    <p>
                        blou
                    </p>
                </div>
            </div>

            <div>
                <h2 class="tw-font-semibold tw-text-lg tw-text-white">Références</h2>

                <ol>
                    <li id="ref1">
                        <sup>1</sup> test
                        <span class="tw-text-xs" @click="goTo(1)">Retour</span>
                    </li>
                </ol>
            </div>
        </div>
    </div>
</template>

<script setup>
function goTo(id) {
    window.location = `#${id}`;
}
</script>

<style scoped>
#wp-bg {
    background-image: linear-gradient(to right, #434343 0%, #000000 100%);
    @apply tw-bg-cover tw-bg-center tw-bg-no-repeat tw-bg-fixed tw-bg-gray-300;
}

p {
    @apply tw-text-white tw-mb-6;
}

sup {
    @apply tw-text-yellow-400 tw-ml-1;
}

li {
    @apply tw-text-white;
}

* {
    @apply tw-font-mono;
}

.anim-anniversaire {
    animation: move-text 1s infinite;
    position: relative;
}

@keyframes move-text {
    0% {
        bottom: -.1em;
    }

    50% {
        bottom: .1em;
    }

    100% {
        bottom: 0;
    }
}
</style>
