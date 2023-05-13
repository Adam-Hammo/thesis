%class BearingRangeFactorPose3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BearingRangeFactorPose3(size_t poseKey, size_t pointKey, Unit3 measuredBearing, double measuredRange, Base noiseModel)
%
%-------Methods-------
%measured() : returns gtsam::BearingRange<gtsam::Pose3,gtsam::Pose3,gtsam::Unit3,double>
%
classdef BearingRangeFactorPose3 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamBearingRangeFactorPose3 = 0
  end
  methods
    function obj = BearingRangeFactorPose3(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3515, varargin{2});
        end
        base_ptr = gtsam_wrapper(3514, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.Unit3') && isa(varargin{4},'double') && isa(varargin{5},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3516, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.BearingRangeFactorPose3 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamBearingRangeFactorPose3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3517, obj.ptr_gtsamBearingRangeFactorPose3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.BearingRangegtsam::Pose3gtsam::Pose3gtsam::Unit3double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3518, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BearingRangeFactorPose3.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3519, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BearingRangeFactorPose3.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.BearingRangeFactorPose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3520, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BearingRangeFactorPose3.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.BearingRangeFactorPose3.string_deserialize(sobj);
    end
  end
end
