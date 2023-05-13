%class NonlinearISAM, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearISAM()
%NonlinearISAM(int reorderInterval)
%
%-------Methods-------
%bayesTree() : returns gtsam::GaussianISAM
%estimate() : returns gtsam::Values
%getFactorsUnsafe() : returns gtsam::NonlinearFactorGraph
%getLinearizationPoint() : returns gtsam::Values
%marginalCovariance(size_t key) : returns Matrix
%print(string s, KeyFormatter keyFormatter) : returns void
%printStats() : returns void
%reorderCounter() : returns int
%reorderInterval() : returns int
%reorder_relinearize() : returns void
%saveGraph(string s) : returns void
%update(NonlinearFactorGraph newFactors, Values initialValues) : returns void
%
classdef NonlinearISAM < handle
  properties
    ptr_gtsamNonlinearISAM = 0
  end
  methods
    function obj = NonlinearISAM(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2791, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2792);
      elseif nargin == 1 && isa(varargin{1},'numeric')
        my_ptr = gtsam_wrapper(2793, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.NonlinearISAM constructor');
      end
      obj.ptr_gtsamNonlinearISAM = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2794, obj.ptr_gtsamNonlinearISAM);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = bayesTree(this, varargin)
      % BAYESTREE usage: bayesTree() : returns gtsam.GaussianISAM
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2795, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.bayesTree');
    end

    function varargout = estimate(this, varargin)
      % ESTIMATE usage: estimate() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2796, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.estimate');
    end

    function varargout = getFactorsUnsafe(this, varargin)
      % GETFACTORSUNSAFE usage: getFactorsUnsafe() : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2797, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.getFactorsUnsafe');
    end

    function varargout = getLinearizationPoint(this, varargin)
      % GETLINEARIZATIONPOINT usage: getLinearizationPoint() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2798, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.getLinearizationPoint');
    end

    function varargout = marginalCovariance(this, varargin)
      % MARGINALCOVARIANCE usage: marginalCovariance(size_t key) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2799, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.marginalCovariance');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2800, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2801, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2802, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.print');
    end

    function varargout = printStats(this, varargin)
      % PRINTSTATS usage: printStats() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2803, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.printStats');
    end

    function varargout = reorderCounter(this, varargin)
      % REORDERCOUNTER usage: reorderCounter() : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2804, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.reorderCounter');
    end

    function varargout = reorderInterval(this, varargin)
      % REORDERINTERVAL usage: reorderInterval() : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2805, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.reorderInterval');
    end

    function varargout = reorder_relinearize(this, varargin)
      % REORDER_RELINEARIZE usage: reorder_relinearize() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2806, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.reorder_relinearize');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2807, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.saveGraph');
    end

    function varargout = update(this, varargin)
      % UPDATE usage: update(NonlinearFactorGraph newFactors, Values initialValues) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values')
        gtsam_wrapper(2808, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearISAM.update');
    end

  end

  methods(Static = true)
  end
end
