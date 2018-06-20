class TurnManager
    def initialize(players)
        @players = players
      end
    
      def current_player
        @players[0]
      end
    
      def target_player
        @players[1]
      end

      def next
        @players.rotate!
      end
      
    end