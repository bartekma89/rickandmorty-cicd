import React from 'react';
import { Outlet } from 'react-router-dom';

import { APP_IMAGES } from './mainConfig';
import { useStatus } from '@featurevisor/react';

const App = () => {
  const { isReady } = useStatus();

  return (
    <div>
      <header>
        <img src={`${APP_IMAGES}/header.png`} alt="header logo" className="mb-4" />
      </header>
      <div className="bg-white rounded-lg shadow-sm p-4 mb-4">
        <h1 className="text-xl font-bold text-center">🚀 Rick and Morty - From AWS! 🚀</h1>
      </div>
      {isReady && <Outlet />}
      <footer>
        <div className="flex relative">
          <img
            src={`${APP_IMAGES}/logo-dark-vertical-1.png`}
            alt="Logo projektu Opanuj Frontend"
            className="w-32 mt-4 mx-auto justify-center"
          />
          {import.meta.env.VITE_ENVIRONMENT !== 'PROD' && (
            <div className="self-center absolute right-0 bg-white rounded-lg shadow-sm p-2">
              ENV: {import.meta.env.VITE_ENVIRONMENT ?? 'Local'} - VER: {__APP_VERSION__}
            </div>
          )}
        </div>
      </footer>
    </div>
  );
};

export default App;
