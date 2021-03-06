module Layer
  module Operations
    module Delete

      module ClassMethods
        def delete(id, client = self.client)
          id = Layer::Client.normalize_id(id)
          client.delete("#{url}/#{id}")
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end

      def delete
        client.delete(url)
      end

    end
  end
end
