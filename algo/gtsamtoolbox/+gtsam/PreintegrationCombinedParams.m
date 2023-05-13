%class PreintegrationCombinedParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PreintegrationCombinedParams(Vector n_gravity)
%
%-------Methods-------
%equals(PreintegrationCombinedParams expected, double tol) : returns bool
%getBiasAccCovariance() : returns Matrix
%getBiasAccOmegaInit() : returns Matrix
%getBiasOmegaCovariance() : returns Matrix
%print(string s) : returns void
%setBiasAccCovariance(Matrix cov) : returns void
%setBiasAccOmegaInit(Matrix cov) : returns void
%setBiasOmegaCovariance(Matrix cov) : returns void
%
%-------Static Methods-------
%MakeSharedD(double g) : returns gtsam::PreintegrationCombinedParams
%MakeSharedD() : returns gtsam::PreintegrationCombinedParams
%MakeSharedU(double g) : returns gtsam::PreintegrationCombinedParams
%MakeSharedU() : returns gtsam::PreintegrationCombinedParams
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns PreintegrationCombinedParams
%
classdef PreintegrationCombinedParams < gtsam.PreintegrationParams
  properties
    ptr_gtsamPreintegrationCombinedParams = 0
  end
  methods
    function obj = PreintegrationCombinedParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(4205, varargin{2});
        end
        base_ptr = gtsam_wrapper(4204, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(4206, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.PreintegrationCombinedParams constructor');
      end
      obj = obj@gtsam.PreintegrationParams(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamPreintegrationCombinedParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(4207, obj.ptr_gtsamPreintegrationCombinedParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(PreintegrationCombinedParams expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PreintegrationCombinedParams') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(4208, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationCombinedParams.equals');
    end

    function varargout = getBiasAccCovariance(this, varargin)
      % GETBIASACCCOVARIANCE usage: getBiasAccCovariance() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4209, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationCombinedParams.getBiasAccCovariance');
    end

    function varargout = getBiasAccOmegaInit(this, varargin)
      % GETBIASACCOMEGAINIT usage: getBiasAccOmegaInit() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4210, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationCombinedParams.getBiasAccOmegaInit');
    end

    function varargout = getBiasOmegaCovariance(this, varargin)
      % GETBIASOMEGACOVARIANCE usage: getBiasOmegaCovariance() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4211, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationCombinedParams.getBiasOmegaCovariance');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(4212, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(4213, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationCombinedParams.print');
    end

    function varargout = setBiasAccCovariance(this, varargin)
      % SETBIASACCCOVARIANCE usage: setBiasAccCovariance(Matrix cov) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(4214, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationCombinedParams.setBiasAccCovariance');
    end

    function varargout = setBiasAccOmegaInit(this, varargin)
      % SETBIASACCOMEGAINIT usage: setBiasAccOmegaInit(Matrix cov) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(4215, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationCombinedParams.setBiasAccOmegaInit');
    end

    function varargout = setBiasOmegaCovariance(this, varargin)
      % SETBIASOMEGACOVARIANCE usage: setBiasOmegaCovariance(Matrix cov) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(4216, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationCombinedParams.setBiasOmegaCovariance');
    end

  end

  methods(Static = true)
    function varargout = MakeSharedD(varargin)
      % MAKESHAREDD usage: MakeSharedD(double g) : returns gtsam.PreintegrationCombinedParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(4217, varargin{:});
        return
      end

      % MAKESHAREDD usage: MakeSharedD() : returns gtsam.PreintegrationCombinedParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4218, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PreintegrationCombinedParams.MakeSharedD');
    end

    function varargout = MakeSharedU(varargin)
      % MAKESHAREDU usage: MakeSharedU(double g) : returns gtsam.PreintegrationCombinedParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(4219, varargin{:});
        return
      end

      % MAKESHAREDU usage: MakeSharedU() : returns gtsam.PreintegrationCombinedParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4220, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PreintegrationCombinedParams.MakeSharedU');
    end

  end
end
