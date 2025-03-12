import React from 'react';
import { Outlet } from 'react-router-dom';
import { Music2 } from 'lucide-react';

export function Layout() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-gray-900 to-black text-white">
      <nav className="border-b border-gray-800">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center justify-between h-16">
            <div className="flex items-center">
              <Music2 className="h-8 w-8 text-green-500" />
              <span className="ml-2 text-xl font-bold">Spotify Recommender</span>
            </div>
          </div>
        </div>
      </nav>
      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <Outlet />
      </main>
    </div>
  );
}