%class BearingRangeFactor3D, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BearingRangeFactor3D(size_t poseKey, size_t pointKey, Unit3 measuredBearing, double measuredRange, Base noiseModel)
%
%-------Methods-------
%measured() : returns gtsam::BearingRange<gtsam::Pose3,gtsam::Point3,gtsam::Unit3,double>
%
classdef BearingRangeFactor3D < gtsam.NoiseModelFactor
  properties
    ptr_gtsamBearingRangeFactor3D = 0
  end
  methods
    function obj = BearingRangeFactor3D(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3508, varargin{2});
        end
        base_ptr = gtsam_wrapper(3507, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.Unit3') && isa(varargin{4},'double') && isa(varargin{5},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3509, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.BearingRangeFactor3D constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamBearingRangeFactor3D = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3510, obj.ptr_gtsamBearingRangeFactor3D);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.BearingRangegtsam::Pose3gtsam::Point3gtsam::Unit3double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3511, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangeFactor3D.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3512, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BearingRangeFactor3D.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.BearingRangeFactor3D
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3513, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BearingRangeFactor3D.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.BearingRangeFactor3D.string_deserialize(sobj);
    end
  end
end
