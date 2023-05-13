%class RangeFactorWithTransform3D, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%RangeFactorWithTransform3D(size_t key1, size_t key2, double measured, Base noiseModel, Pose3 body_T_sensor)
%
%-------Methods-------
%measured() : returns double
%
classdef RangeFactorWithTransform3D < gtsam.NoiseModelFactor
  properties
    ptr_gtsamRangeFactorWithTransform3D = 0
  end
  methods
    function obj = RangeFactorWithTransform3D(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3452, varargin{2});
        end
        base_ptr = gtsam_wrapper(3451, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && isa(varargin{4},'gtsam.noiseModel.Base') && isa(varargin{5},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3453, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.RangeFactorWithTransform3D constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamRangeFactorWithTransform3D = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3454, obj.ptr_gtsamRangeFactorWithTransform3D);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3455, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.RangeFactorWithTransform3D.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3456, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.RangeFactorWithTransform3D.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.RangeFactorWithTransform3D
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3457, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.RangeFactorWithTransform3D.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.RangeFactorWithTransform3D.string_deserialize(sobj);
    end
  end
end
