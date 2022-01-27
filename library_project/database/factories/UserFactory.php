<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => 'calin',
            'username' => 'calin',
            'password' => '$2y$10$ay7t.KHnzVxBjBLddSrFsOgASj5Zdy6Hld22X0ORE7YmvnbnXHyW.', // password
        ];
    }
}
