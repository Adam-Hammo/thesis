%class ISAM2DoglegParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ISAM2DoglegParams()
%
%-------Methods-------
%getAdaptationMode() : returns string
%getInitialDelta() : returns double
%getWildfireThreshold() : returns double
%isVerbose() : returns bool
%print(string s) : returns void
%setAdaptationMode(string adaptationMode) : returns void
%setInitialDelta(double initialDelta) : returns void
%setVerbose(bool verbose) : returns void
%setWildfireThreshold(double wildfireThreshold) : returns void
%
classdef ISAM2DoglegParams < handle
  properties
    ptr_gtsamISAM2DoglegParams = 0
  end
  methods
    function obj = ISAM2DoglegParams(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2685, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2686);
      else
        error('Arguments do not match any overload of gtsam.ISAM2DoglegParams constructor');
      end
      obj.ptr_gtsamISAM2DoglegParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2687, obj.ptr_gtsamISAM2DoglegParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getAdaptationMode(this, varargin)
      % GETADAPTATIONMODE usage: getAdaptationMode() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2688, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.getAdaptationMode');
    end

    function varargout = getInitialDelta(this, varargin)
      % GETINITIALDELTA usage: getInitialDelta() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2689, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.getInitialDelta');
    end

    function varargout = getWildfireThreshold(this, varargin)
      % GETWILDFIRETHRESHOLD usage: getWildfireThreshold() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2690, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.getWildfireThreshold');
    end

    function varargout = isVerbose(this, varargin)
      % ISVERBOSE usage: isVerbose() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2691, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.isVerbose');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2692, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2693, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.print');
    end

    function varargout = setAdaptationMode(this, varargin)
      % SETADAPTATIONMODE usage: setAdaptationMode(string adaptationMode) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2694, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.setAdaptationMode');
    end

    function varargout = setInitialDelta(this, varargin)
      % SETINITIALDELTA usage: setInitialDelta(double initialDelta) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(2695, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.setInitialDelta');
    end

    function varargout = setVerbose(this, varargin)
      % SETVERBOSE usage: setVerbose(bool verbose) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(2696, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.setVerbose');
    end

    function varargout = setWildfireThreshold(this, varargin)
      % SETWILDFIRETHRESHOLD usage: setWildfireThreshold(double wildfireThreshold) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(2697, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2DoglegParams.setWildfireThreshold');
    end

  end

  methods(Static = true)
  end
end
