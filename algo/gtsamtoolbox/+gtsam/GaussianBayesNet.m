%class GaussianBayesNet, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianBayesNet()
%GaussianBayesNet(GaussianConditional conditional)
%
%-------Methods-------
%at(size_t idx) : returns gtsam::GaussianConditional
%back() : returns gtsam::GaussianConditional
%backSubstitute(VectorValues gx) : returns gtsam::VectorValues
%backSubstituteTranspose(VectorValues gx) : returns gtsam::VectorValues
%determinant() : returns double
%dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
%equals(GaussianBayesNet other, double tol) : returns bool
%error(VectorValues x) : returns double
%exists(size_t idx) : returns bool
%front() : returns gtsam::GaussianConditional
%gradient(VectorValues x0) : returns gtsam::VectorValues
%gradientAtZero() : returns gtsam::VectorValues
%keyVector() : returns gtsam::KeyVector
%keys() : returns gtsam::KeySet
%logDeterminant() : returns double
%matrix() : returns std::pair<Matrix,Vector>
%optimize() : returns gtsam::VectorValues
%optimize(VectorValues given) : returns gtsam::VectorValues
%optimizeGradientSearch() : returns gtsam::VectorValues
%print(string s, KeyFormatter keyFormatter) : returns void
%push_back(GaussianConditional conditional) : returns void
%push_back(GaussianBayesNet bayesNet) : returns void
%sample(VectorValues given) : returns gtsam::VectorValues
%sample() : returns gtsam::VectorValues
%saveGraph(string s) : returns void
%saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
%size() : returns size_t
%
classdef GaussianBayesNet < handle
  properties
    ptr_gtsamGaussianBayesNet = 0
  end
  methods
    function obj = GaussianBayesNet(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2137, varargin{2});
        end
        gtsam_wrapper(2136, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2138);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianConditional')
        my_ptr = gtsam_wrapper(2139, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.GaussianBayesNet constructor');
      end
      obj.ptr_gtsamGaussianBayesNet = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2140, obj.ptr_gtsamGaussianBayesNet);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.GaussianConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2141, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.at');
    end

    function varargout = back(this, varargin)
      % BACK usage: back() : returns gtsam.GaussianConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2142, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.back');
    end

    function varargout = backSubstitute(this, varargin)
      % BACKSUBSTITUTE usage: backSubstitute(VectorValues gx) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2143, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.backSubstitute');
    end

    function varargout = backSubstituteTranspose(this, varargin)
      % BACKSUBSTITUTETRANSPOSE usage: backSubstituteTranspose(VectorValues gx) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2144, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.backSubstituteTranspose');
    end

    function varargout = determinant(this, varargin)
      % DETERMINANT usage: determinant() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2145, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.determinant');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'gtsam.DotWriter')
        varargout{1} = gtsam_wrapper(2146, this, varargin{:});
        return
      end
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(2147, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2148, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.dot');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianBayesNet other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianBayesNet') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2149, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues x) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2150, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.error');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t idx) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2151, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.exists');
    end

    function varargout = front(this, varargin)
      % FRONT usage: front() : returns gtsam.GaussianConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2152, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.front');
    end

    function varargout = gradient(this, varargin)
      % GRADIENT usage: gradient(VectorValues x0) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2153, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.gradient');
    end

    function varargout = gradientAtZero(this, varargin)
      % GRADIENTATZERO usage: gradientAtZero() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2154, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.gradientAtZero');
    end

    function varargout = keyVector(this, varargin)
      % KEYVECTOR usage: keyVector() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2155, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.keyVector');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2156, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.keys');
    end

    function varargout = logDeterminant(this, varargin)
      % LOGDETERMINANT usage: logDeterminant() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2157, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.logDeterminant');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns std.pairMatrixVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2158, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.matrix');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2159, this, varargin{:});
        return
      end
      % OPTIMIZE usage: optimize(VectorValues given) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2160, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.optimize');
    end

    function varargout = optimizeGradientSearch(this, varargin)
      % OPTIMIZEGRADIENTSEARCH usage: optimizeGradientSearch() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2161, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.optimizeGradientSearch');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2162, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2163, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2164, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.print');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(GaussianConditional conditional) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianConditional')
        gtsam_wrapper(2165, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianBayesNet bayesNet) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianBayesNet')
        gtsam_wrapper(2166, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.push_back');
    end

    function varargout = sample(this, varargin)
      % SAMPLE usage: sample(VectorValues given) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2167, this, varargin{:});
        return
      end
      % SAMPLE usage: sample() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2168, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.sample');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2169, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter') && isa(varargin{3},'gtsam.DotWriter')
        gtsam_wrapper(2170, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2171, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2172, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2173, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.size');
    end

  end

  methods(Static = true)
  end
end
