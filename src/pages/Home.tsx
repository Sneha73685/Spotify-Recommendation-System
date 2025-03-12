import React, { useState } from 'react';
import { Search } from 'lucide-react';

export function Home() {
  const [searchQuery, setSearchQuery] = useState('');

  return (
    <div className="space-y-8">
      <div className="text-center">
        <h1 className="text-4xl font-bold mb-4">Discover Your Next Favorite Song</h1>
        <p className="text-gray-400">Get personalized music recommendations based on your listening history</p>
      </div>

      <div className="max-w-xl mx-auto">
        <div className="relative">
          <input
            type="text"
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            placeholder="Search for a song or artist..."
            className="w-full px-4 py-2 bg-gray-800 rounded-lg text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-green-500"
          />
          <Search className="absolute right-3 top-2.5 h-5 w-5 text-gray-400" />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {/* Placeholder for recommended songs */}
        {Array.from({ length: 6 }).map((_, i) => (
          <div key={i} className="bg-gray-800 p-4 rounded-lg hover:bg-gray-700 transition">
            <div className="w-full h-48 bg-gray-700 rounded-md mb-4"></div>
            <div className="space-y-2">
              <div className="h-4 bg-gray-700 rounded w-3/4"></div>
              <div className="h-4 bg-gray-700 rounded w-1/2"></div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}