#include <SDL2/SDL.h>
#include <stdio.h>

int main(int argc, char* argv[]) {
    // Inicializar el subsistema de video de SDL
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        printf("Error al iniciar SDL: %s\n", SDL_GetError());
        return 1;
    }

    // Crear la ventana principal para el motor HLE
    SDL_Window* window = SDL_CreateWindow(
        "FIFA 07 HLE - Web Port Base", 
        SDL_WINDOWPOS_CENTERED, 
        SDL_WINDOWPOS_CENTERED, 
        800, 600, 
        SDL_WINDOW_SHOWN
    );

    if (!window) {
        printf("Error al crear la ventana: %s\n", SDL_GetError());
        SDL_Quit();
        return 1;
    }

    int running = 1;
    SDL_Event event;

    // Bucle principal del juego / motor
    while (running) {
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                running = 0;
            }
        }

        // TODO: Acá agregaremos la lógica del motor y el renderizado 3D
    }

    // Limpieza de recursos al cerrar
    SDL_DestroyWindow(window);
    SDL_Quit();
    
    return 0;
}