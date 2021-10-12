class Ride < ApplicationRecord

    def source_latitude=(src)
        begin
            src = src.to_i
        rescue
        end
        unless src in -90..90
            raise Exception, 'source_latitude out of range'
        end
        write_attribute(:source_latitude, src)
    end

    def target_latitude=(src)
        begin
            src = src.to_i
        rescue
        end
        unless src in -90..90
            raise Exception, 'target_latitude out of range'
        end
        write_attribute(:target_latitude, src)
    end

    def source_longitude=(src)
        begin
            src = src.to_i
        rescue
        end
        unless src in -180..180
            raise Exception, 'source_longitude out of range'
        end
        write_attribute(:source_longitude, src)
    end

    def target_longitude=(src)
        begin
            src = src.to_i
        rescue
        end
        unless src in -180..180
            raise Exception, 'target_longitude out of range'
        end
        write_attribute(:target_longitude, src)
    end
end
