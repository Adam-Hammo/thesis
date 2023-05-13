%class NonlinearOptimizer, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%error() : returns double
%graph() : returns gtsam::NonlinearFactorGraph
%iterate() : returns gtsam::GaussianFactorGraph
%iterations() : returns int
%optimize() : returns gtsam::Values
%optimizeSafely() : returns gtsam::Values
%values() : returns gtsam::Values
%
classdef NonlinearOptimizer < handle
  properties
    ptr_gtsamNonlinearOptimizer = 0
  end
  methods
    function obj = NonlinearOptimizer(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2650, varargin{2});
        end
        gtsam_wrapper(2649, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.NonlinearOptimizer constructor');
      end
      obj.ptr_gtsamNonlinearOptimizer = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2651, obj.ptr_gtsamNonlinearOptimizer);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = error(this, varargin)
      % ERROR usage: error() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2652, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizer.error');
    end

    function varargout = graph(this, varargin)
      % GRAPH usage: graph() : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2653, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizer.graph');
    end

    function varargout = iterate(this, varargin)
      % ITERATE usage: iterate() : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2654, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizer.iterate');
    end

    function varargout = iterations(this, varargin)
      % ITERATIONS usage: iterations() : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2655, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizer.iterations');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0

          varargout{1} = gtsam_wrapper(2656, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizer.optimize');
    end

    function varargout = optimizeSafely(this, varargin)
      % OPTIMIZESAFELY usage: optimizeSafely() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2657, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizer.optimizeSafely');
    end

    function varargout = values(this, varargin)
      % VALUES usage: values() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2658, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearOptimizer.values');
    end

  end

  methods(Static = true)
  end
end
