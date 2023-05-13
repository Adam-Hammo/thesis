%class NonlinearOptimizerParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearOptimizerParams()
%
%-------Methods-------
%getAbsoluteErrorTol() : returns double
%getErrorTol() : returns double
%getLinearSolverType() : returns string
%getMaxIterations() : returns int
%getOrderingType() : returns string
%getRelativeErrorTol() : returns double
%getVerbosity() : returns string
%isCholmod() : returns bool
%isIterative() : returns bool
%isMultifrontal() : returns bool
%isSequential() : returns bool
%print(string s) : returns void
%setAbsoluteErrorTol(double value) : returns void
%setErrorTol(double value) : returns void
%setIterativeParams(IterativeOptimizationParameters params) : returns void
%setLinearSolverType(string solver) : returns void
%setMaxIterations(int value) : returns void
%setOrdering(Ordering ordering) : returns void
%setOrderingType(string ordering) : returns void
%setRelativeErrorTol(double value) : returns void
%setVerbosity(string s) : returns void
%
classdef NonlinearOptimizerParams < handle
  properties
    ptr_gtsamNonlinearOptimizerParams = 0
  end
  methods
    function obj = NonlinearOptimizerParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2588, varargin{2});
        end
        gtsam_wrapper(2587, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2589);
      else
        error('Arguments do not match any overload of gtsam.NonlinearOptimizerParams constructor');
      end
      obj.ptr_gtsamNonlinearOptimizerParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2590, obj.ptr_gtsamNonlinearOptimizerParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getAbsoluteErrorTol(this, varargin)
      % GETABSOLUTEERRORTOL usage: getAbsoluteErrorTol() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2591, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.getAbsoluteErrorTol');
    end

    function varargout = getErrorTol(this, varargin)
      % GETERRORTOL usage: getErrorTol() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2592, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.getErrorTol');
    end

    function varargout = getLinearSolverType(this, varargin)
      % GETLINEARSOLVERTYPE usage: getLinearSolverType() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2593, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.getLinearSolverType');
    end

    function varargout = getMaxIterations(this, varargin)
      % GETMAXITERATIONS usage: getMaxIterations() : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2594, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.getMaxIterations');
    end

    function varargout = getOrderingType(this, varargin)
      % GETORDERINGTYPE usage: getOrderingType() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2595, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.getOrderingType');
    end

    function varargout = getRelativeErrorTol(this, varargin)
      % GETRELATIVEERRORTOL usage: getRelativeErrorTol() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2596, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.getRelativeErrorTol');
    end

    function varargout = getVerbosity(this, varargin)
      % GETVERBOSITY usage: getVerbosity() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2597, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.getVerbosity');
    end

    function varargout = isCholmod(this, varargin)
      % ISCHOLMOD usage: isCholmod() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2598, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.isCholmod');
    end

    function varargout = isIterative(this, varargin)
      % ISITERATIVE usage: isIterative() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2599, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.isIterative');
    end

    function varargout = isMultifrontal(this, varargin)
      % ISMULTIFRONTAL usage: isMultifrontal() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2600, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.isMultifrontal');
    end

    function varargout = isSequential(this, varargin)
      % ISSEQUENTIAL usage: isSequential() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2601, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.isSequential');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2602, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2603, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.print');
    end

    function varargout = setAbsoluteErrorTol(this, varargin)
      % SETABSOLUTEERRORTOL usage: setAbsoluteErrorTol(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(2604, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setAbsoluteErrorTol');
    end

    function varargout = setErrorTol(this, varargin)
      % SETERRORTOL usage: setErrorTol(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(2605, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setErrorTol');
    end

    function varargout = setIterativeParams(this, varargin)
      % SETITERATIVEPARAMS usage: setIterativeParams(IterativeOptimizationParameters params) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.IterativeOptimizationParameters')
        gtsam_wrapper(2606, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setIterativeParams');
    end

    function varargout = setLinearSolverType(this, varargin)
      % SETLINEARSOLVERTYPE usage: setLinearSolverType(string solver) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2607, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setLinearSolverType');
    end

    function varargout = setMaxIterations(this, varargin)
      % SETMAXITERATIONS usage: setMaxIterations(int value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(2608, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setMaxIterations');
    end

    function varargout = setOrdering(this, varargin)
      % SETORDERING usage: setOrdering(Ordering ordering) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        gtsam_wrapper(2609, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setOrdering');
    end

    function varargout = setOrderingType(this, varargin)
      % SETORDERINGTYPE usage: setOrderingType(string ordering) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2610, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setOrderingType');
    end

    function varargout = setRelativeErrorTol(this, varargin)
      % SETRELATIVEERRORTOL usage: setRelativeErrorTol(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(2611, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setRelativeErrorTol');
    end

    function varargout = setVerbosity(this, varargin)
      % SETVERBOSITY usage: setVerbosity(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2612, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizerParams.setVerbosity');
    end

  end

  methods(Static = true)
  end
end
