%class RangeFactorWithTransformPose3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%RangeFactorWithTransformPose3(size_t key1, size_t key2, double measured, Base noiseModel, Pose3 body_T_sensor)
%
%-------Methods-------
%measured() : returns double
%
classdef RangeFactorWithTransformPose3 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamRangeFactorWithTransformPose3 = 0
  end
  methods
    function obj = RangeFactorWithTransformPose3(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3466, varargin{2});
        end
        base_ptr = gtsam_wrapper(3465, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && isa(varargin{4},'gtsam.noiseModel.Base') && isa(varargin{5},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3467, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.RangeFactorWithTransformPose3 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamRangeFactorWithTransformPose3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3468, obj.ptr_gtsamRangeFactorWithTransformPose3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3469, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.RangeFactorWithTransformPose3.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3470, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.RangeFactorWithTransformPose3.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.RangeFactorWithTransformPose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3471, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.RangeFactorWithTransformPose3.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.RangeFactorWithTransformPose3.string_deserialize(sobj);
    end
  end
end
