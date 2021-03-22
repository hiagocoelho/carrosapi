module Api
    module V1
        class MarcasController < ApplicationController
            def index
                marcas = Marca.order('created_at DESC');
                render json: {status: 'OK', message: 'Marcas encontradas', data:marcas}, status: :ok
            end

            def show
                marca = Marca.find(params[:id])
                render json: {status: 'OK', message: 'Marca encontrada', data:marca}, status: :ok
            end

            def create
                marca = Marca.new(marca_params)

                if marca.save
                    render json: {status: 'OK', message: 'Nova marca criada', data:marca}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Erro ao criar marca',
                    data:marca.errors}, status: :bad_request
                end
            end

            def destroy
                marca = Marca.find(params[:id])

                if marca.destroy
                    render json: {status: 'OK', message: 'Marca removida', data:marca}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Erro ao remover marca',
                    data:marca.errors}, status: :bad_request
                end   
            end

            def update
                marca = Marca.find(params[:id])

                if marca.update(marca_params)
                    render json: {status: 'OK', message: 'Marca atualizada', data:marca}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Erro ao editar marca',
                    data:marca.errors}, status: :bad_request
                end
            end

            private

            def marca_params
                params.permit(:nome)
            end
        end
    end
end
