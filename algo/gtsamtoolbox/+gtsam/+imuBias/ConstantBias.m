%class ConstantBias, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ConstantBias()
%ConstantBias(Vector biasAcc, Vector biasGyro)
%
%-------Methods-------
%accelerometer() : returns Vector
%correctAccelerometer(Vector measurement) : returns Vector
%correctGyroscope(Vector measurement) : returns Vector
%equals(ConstantBias expected, double tol) : returns bool
%gyroscope() : returns Vector
%print(string s) : returns void
%vector() : returns Vector
%
%-------Static Methods-------
%Identity() : returns gtsam::imuBias::ConstantBias
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns ConstantBias
%
classdef ConstantBias < handle
  properties
    ptr_gtsamimuBiasConstantBias = 0
  end
  methods
    function obj = ConstantBias(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(4114, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(4115);
      elseif nargin == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        my_ptr = gtsam_wrapper(4116, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.imuBias.ConstantBias constructor');
      end
      obj.ptr_gtsamimuBiasConstantBias = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(4117, obj.ptr_gtsamimuBiasConstantBias);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = accelerometer(this, varargin)
      % ACCELEROMETER usage: accelerometer() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4118, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.accelerometer');
    end

    function varargout = correctAccelerometer(this, varargin)
      % CORRECTACCELEROMETER usage: correctAccelerometer(Vector measurement) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(4119, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.correctAccelerometer');
    end

    function varargout = correctGyroscope(this, varargin)
      % CORRECTGYROSCOPE usage: correctGyroscope(Vector measurement) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(4120, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.correctGyroscope');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(ConstantBias expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.imuBias.ConstantBias') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(4121, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.equals');
    end

    function varargout = gyroscope(this, varargin)
      % GYROSCOPE usage: gyroscope() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4122, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.gyroscope');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(4123, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(4124, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.print');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4125, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = vector(this, varargin)
      % VECTOR usage: vector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4126, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.vector');
    end

  end

  methods(Static = true)
    function varargout = Identity(varargin)
      % IDENTITY usage: Identity() : returns gtsam.imuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4127, varargin{:});
        return
      end

      error('Arguments do not match any overload of function ConstantBias.Identity');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsamimuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(4128, varargin{:});
      else
        error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsamimuBias.ConstantBias.string_deserialize(sobj);
    end
  end
end
