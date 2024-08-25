import React from 'react';
import { Outlet } from 'react-router-dom';

const App = () => {
  return (
    <div>
      <div className="bg-white rounded-lg shadow-sm p-4 mb-4">
        <h1 className="text-xl font-bold text-center">
          🚀 Rick and Morty - Fan Service - {__APP_VERSION__} 🚀
        </h1>
      </div>
      <Outlet />
      <footer>
        <div className="flex">
          <img
            src="/resources/img/logo-dark-vertical-1.png"
            alt="Logo projektu Opanuj Frontend"
            className="w-32 mt-4 mx-auto justify-center"
          />
          {import.meta.env.VITE_ENVIRONMENT !== 'PROD' && (
            <div className="justify-end self-center bg-white rounded-lg shadow-sm p-2">
              ENV: {import.meta.env.VITE_ENVIRONMENT ?? 'Local'} - VER: {__APP_VERSION__}
            </div>
          )}
        </div>
      </footer>
    </div>
  );
};

export default App;
