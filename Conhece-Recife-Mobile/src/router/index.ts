import { createRouter, createWebHistory } from '@ionic/vue-router';
import { RouteRecordRaw } from 'vue-router';
import HomePage from '../views/HomePage.vue'
import MenuHome from '../views/MenuHome.vue'

const routes: Array<RouteRecordRaw> = [
  {
    path: '/',
    redirect: '/home'
  },
  {
    path: '/home',
    name: 'Home',
    component: HomePage
  },
  {
    path: '/menu/',
    component: MenuHome,
    children: [
      {
        path: 'places',
        component: () => import('@/views/PlacesPage.vue')
      },
      {
        path: 'partners',
        component: () => import('@/views/PartnersPage.vue')
      },
      {
        path: 'contacts',
        component: () => import('@/views/ContactPage.vue')
      },
      {
        path: 'streets',
        component: () => import('@/views/StreetsPage.vue')
      },
      {
        path: 'whopage',
        component: () => import('@/views/WhoPage.vue')
      }
    ]
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
