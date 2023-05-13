%class Marginals, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Marginals(NonlinearFactorGraph graph, Values solution)
%Marginals(GaussianFactorGraph gfgraph, Values solution)
%Marginals(GaussianFactorGraph gfgraph, VectorValues solutionvec)
%
%-------Methods-------
%jointMarginalCovariance(KeyVector variables) : returns gtsam::JointMarginal
%jointMarginalInformation(KeyVector variables) : returns gtsam::JointMarginal
%marginalCovariance(size_t variable) : returns Matrix
%marginalInformation(size_t variable) : returns Matrix
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef Marginals < handle
  properties
    ptr_gtsamMarginals = 0
  end
  methods
    function obj = Marginals(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2557, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values')
        my_ptr = gtsam_wrapper(2558, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.Values')
        my_ptr = gtsam_wrapper(2559, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.VectorValues')
        my_ptr = gtsam_wrapper(2560, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.Marginals constructor');
      end
      obj.ptr_gtsamMarginals = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2561, obj.ptr_gtsamMarginals);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = jointMarginalCovariance(this, varargin)
      % JOINTMARGINALCOVARIANCE usage: jointMarginalCovariance(KeyVector variables) : returns gtsam.JointMarginal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(2562, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Marginals.jointMarginalCovariance');
    end

    function varargout = jointMarginalInformation(this, varargin)
      % JOINTMARGINALINFORMATION usage: jointMarginalInformation(KeyVector variables) : returns gtsam.JointMarginal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(2563, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Marginals.jointMarginalInformation');
    end

    function varargout = marginalCovariance(this, varargin)
      % MARGINALCOVARIANCE usage: marginalCovariance(size_t variable) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2564, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Marginals.marginalCovariance');
    end

    function varargout = marginalInformation(this, varargin)
      % MARGINALINFORMATION usage: marginalInformation(size_t variable) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2565, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Marginals.marginalInformation');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2566, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2567, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2568, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Marginals.print');
    end

  end

  methods(Static = true)
  end
end
