class MP3Importer
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if {|k| k == "." || k == ".."}
    end

    def import 
        files.each{|l| Song.new_by_filename(l)}
    end





end