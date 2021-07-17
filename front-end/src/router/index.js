import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '/',
    redirect: '/challenge_1'
  },
  {
    path: '/challenge_1',
    name: 'Challenge_1',
    component: () => import('@/views/Challenge_1.vue')
  },
  {
    path: '/challenge_2' || '/',
    name: 'Challenge_2',
    component: () => import('@/views/Challenge_2.vue')
  },
  {
    path: '/challenge_3' || '/',
    name: 'Challenge_3',
    component: () => import('@/views/Challenge_3.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
