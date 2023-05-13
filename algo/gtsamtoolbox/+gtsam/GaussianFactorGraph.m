%class GaussianFactorGraph, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianFactorGraph()
%GaussianFactorGraph(GaussianBayesNet bayesNet)
%GaussianFactorGraph(GaussianBayesTree bayesTree)
%
%-------Methods-------
%add(GaussianFactor factor) : returns void
%add(Vector b) : returns void
%add(size_t key1, Matrix A1, Vector b, Diagonal model) : returns void
%add(size_t key1, Matrix A1, size_t key2, Matrix A2, Vector b, Diagonal model) : returns void
%add(size_t key1, Matrix A1, size_t key2, Matrix A2, size_t key3, Matrix A3, Vector b, Diagonal model) : returns void
%at(size_t idx) : returns gtsam::GaussianFactor
%augmentedHessian() : returns Matrix
%augmentedHessian(Ordering ordering) : returns Matrix
%augmentedJacobian() : returns Matrix
%augmentedJacobian(Ordering ordering) : returns Matrix
%clone() : returns gtsam::GaussianFactorGraph
%dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
%eliminateMultifrontal() : returns gtsam::GaussianBayesTree
%eliminateMultifrontal(OrderingType type) : returns gtsam::GaussianBayesTree
%eliminateMultifrontal(Ordering ordering) : returns gtsam::GaussianBayesTree
%eliminatePartialMultifrontal(Ordering ordering) : returns pair< gtsam::GaussianBayesTree, gtsam::GaussianFactorGraph >
%eliminatePartialMultifrontal(KeyVector keys) : returns pair< gtsam::GaussianBayesTree, gtsam::GaussianFactorGraph >
%eliminatePartialSequential(Ordering ordering) : returns pair< gtsam::GaussianBayesNet, gtsam::GaussianFactorGraph >
%eliminatePartialSequential(KeyVector keys) : returns pair< gtsam::GaussianBayesNet, gtsam::GaussianFactorGraph >
%eliminateSequential() : returns gtsam::GaussianBayesNet
%eliminateSequential(OrderingType type) : returns gtsam::GaussianBayesNet
%eliminateSequential(Ordering ordering) : returns gtsam::GaussianBayesNet
%equals(GaussianFactorGraph lfgraph, double tol) : returns bool
%error(VectorValues c) : returns double
%exists(size_t idx) : returns bool
%gradient(VectorValues x0) : returns gtsam::VectorValues
%gradientAtZero() : returns gtsam::VectorValues
%hessian() : returns pair< Matrix, Vector >
%hessian(Ordering ordering) : returns pair< Matrix, Vector >
%jacobian() : returns pair< Matrix, Vector >
%jacobian(Ordering ordering) : returns pair< Matrix, Vector >
%keyVector() : returns gtsam::KeyVector
%keys() : returns gtsam::KeySet
%marginal(KeyVector key_vector) : returns gtsam::GaussianFactorGraph
%marginalMultifrontalBayesNet(Ordering ordering) : returns gtsam::GaussianBayesNet
%marginalMultifrontalBayesNet(KeyVector key_vector) : returns gtsam::GaussianBayesNet
%marginalMultifrontalBayesNet(Ordering ordering, Ordering marginalizedVariableOrdering) : returns gtsam::GaussianBayesNet
%marginalMultifrontalBayesNet(KeyVector key_vector, Ordering marginalizedVariableOrdering) : returns gtsam::GaussianBayesNet
%negate() : returns gtsam::GaussianFactorGraph
%optimize() : returns gtsam::VectorValues
%optimize(Ordering ordering) : returns gtsam::VectorValues
%optimizeGradientSearch() : returns gtsam::VectorValues
%print(string s, KeyFormatter keyFormatter) : returns void
%printErrors(VectorValues c, string str, KeyFormatter keyFormatter) : returns void
%probPrime(VectorValues c) : returns double
%push_back(GaussianFactor factor) : returns void
%push_back(GaussianConditional conditional) : returns void
%push_back(GaussianFactorGraph graph) : returns void
%push_back(GaussianBayesNet bayesNet) : returns void
%push_back(GaussianBayesTree bayesTree) : returns void
%saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
%size() : returns size_t
%sparseJacobian_() : returns Matrix
%
classdef GaussianFactorGraph < handle
  properties
    ptr_gtsamGaussianFactorGraph = 0
  end
  methods
    function obj = GaussianFactorGraph(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2029, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2030);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianBayesNet')
        my_ptr = gtsam_wrapper(2031, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianBayesTree')
        my_ptr = gtsam_wrapper(2032, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.GaussianFactorGraph constructor');
      end
      obj.ptr_gtsamGaussianFactorGraph = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2033, obj.ptr_gtsamGaussianFactorGraph);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add(this, varargin)
      % ADD usage: add(GaussianFactor factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactor')
        gtsam_wrapper(2034, this, varargin{:});
        return
      end
      % ADD usage: add(Vector b) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        gtsam_wrapper(2035, this, varargin{:});
        return
      end
      % ADD usage: add(size_t key1, Matrix A1, Vector b, Diagonal model) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.noiseModel.Diagonal')
        gtsam_wrapper(2036, this, varargin{:});
        return
      end
      % ADD usage: add(size_t key1, Matrix A1, size_t key2, Matrix A2, Vector b, Diagonal model) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 6 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'numeric') && isa(varargin{4},'double') && isa(varargin{5},'double') && size(varargin{5},2)==1 && isa(varargin{6},'gtsam.noiseModel.Diagonal')
        gtsam_wrapper(2037, this, varargin{:});
        return
      end
      % ADD usage: add(size_t key1, Matrix A1, size_t key2, Matrix A2, size_t key3, Matrix A3, Vector b, Diagonal model) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 8 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'numeric') && isa(varargin{4},'double') && isa(varargin{5},'numeric') && isa(varargin{6},'double') && isa(varargin{7},'double') && size(varargin{7},2)==1 && isa(varargin{8},'gtsam.noiseModel.Diagonal')
        gtsam_wrapper(2038, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.add');
    end

    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.GaussianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2039, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.at');
    end

    function varargout = augmentedHessian(this, varargin)
      % AUGMENTEDHESSIAN usage: augmentedHessian() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2040, this, varargin{:});
        return
      end
      % AUGMENTEDHESSIAN usage: augmentedHessian(Ordering ordering) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(2041, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.augmentedHessian');
    end

    function varargout = augmentedJacobian(this, varargin)
      % AUGMENTEDJACOBIAN usage: augmentedJacobian() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2042, this, varargin{:});
        return
      end
      % AUGMENTEDJACOBIAN usage: augmentedJacobian(Ordering ordering) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(2043, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.augmentedJacobian');
    end

    function varargout = clone(this, varargin)
      % CLONE usage: clone() : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2044, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.clone');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'gtsam.DotWriter')
        varargout{1} = gtsam_wrapper(2045, this, varargin{:});
        return
      end
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(2046, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2047, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.dot');
    end

    function varargout = eliminateMultifrontal(this, varargin)
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal() : returns gtsam.GaussianBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2048, this, varargin{:});
        return
      end
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal(OrderingType type) : returns gtsam.GaussianBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering.OrderingType')
        varargout{1} = gtsam_wrapper(2049, this, varargin{:});
        return
      end
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal(Ordering ordering) : returns gtsam.GaussianBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(2050, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.eliminateMultifrontal');
    end

    function varargout = eliminatePartialMultifrontal(this, varargin)
      % ELIMINATEPARTIALMULTIFRONTAL usage: eliminatePartialMultifrontal(Ordering ordering) : returns pair< gtsam.GaussianBayesTree, gtsam.GaussianFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2051, this, varargin{:});
        return
      end
      % ELIMINATEPARTIALMULTIFRONTAL usage: eliminatePartialMultifrontal(KeyVector keys) : returns pair< gtsam.GaussianBayesTree, gtsam.GaussianFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2052, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.eliminatePartialMultifrontal');
    end

    function varargout = eliminatePartialSequential(this, varargin)
      % ELIMINATEPARTIALSEQUENTIAL usage: eliminatePartialSequential(Ordering ordering) : returns pair< gtsam.GaussianBayesNet, gtsam.GaussianFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2053, this, varargin{:});
        return
      end
      % ELIMINATEPARTIALSEQUENTIAL usage: eliminatePartialSequential(KeyVector keys) : returns pair< gtsam.GaussianBayesNet, gtsam.GaussianFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2054, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.eliminatePartialSequential');
    end

    function varargout = eliminateSequential(this, varargin)
      % ELIMINATESEQUENTIAL usage: eliminateSequential() : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2055, this, varargin{:});
        return
      end
      % ELIMINATESEQUENTIAL usage: eliminateSequential(OrderingType type) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering.OrderingType')
        varargout{1} = gtsam_wrapper(2056, this, varargin{:});
        return
      end
      % ELIMINATESEQUENTIAL usage: eliminateSequential(Ordering ordering) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(2057, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.eliminateSequential');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianFactorGraph lfgraph, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2058, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues c) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2059, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.error');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t idx) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2060, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.exists');
    end

    function varargout = gradient(this, varargin)
      % GRADIENT usage: gradient(VectorValues x0) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2061, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.gradient');
    end

    function varargout = gradientAtZero(this, varargin)
      % GRADIENTATZERO usage: gradientAtZero() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2062, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.gradientAtZero');
    end

    function varargout = hessian(this, varargin)
      % HESSIAN usage: hessian() : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2063, this, varargin{:});
        return
      end
      % HESSIAN usage: hessian(Ordering ordering) : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2064, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.hessian');
    end

    function varargout = jacobian(this, varargin)
      % JACOBIAN usage: jacobian() : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2065, this, varargin{:});
        return
      end
      % JACOBIAN usage: jacobian(Ordering ordering) : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(2066, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.jacobian');
    end

    function varargout = keyVector(this, varargin)
      % KEYVECTOR usage: keyVector() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2067, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.keyVector');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2068, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.keys');
    end

    function varargout = marginal(this, varargin)
      % MARGINAL usage: marginal(KeyVector key_vector) : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(2069, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.marginal');
    end

    function varargout = marginalMultifrontalBayesNet(this, varargin)
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(Ordering ordering) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(2070, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(KeyVector key_vector) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(2071, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(Ordering ordering, Ordering marginalizedVariableOrdering) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering') && isa(varargin{2},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(2072, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(KeyVector key_vector, Ordering marginalizedVariableOrdering) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyVector') && isa(varargin{2},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(2073, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.marginalMultifrontalBayesNet');
    end

    function varargout = negate(this, varargin)
      % NEGATE usage: negate() : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2074, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.negate');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2075, this, varargin{:});
        return
      end
      % OPTIMIZE usage: optimize(Ordering ordering) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(2076, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.optimize');
    end

    function varargout = optimizeGradientSearch(this, varargin)
      % OPTIMIZEGRADIENTSEARCH usage: optimizeGradientSearch() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2077, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.optimizeGradientSearch');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2078, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2079, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2080, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.print');
    end

    function varargout = printErrors(this, varargin)
      % PRINTERRORS usage: printErrors(VectorValues c, string str, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.VectorValues') && isa(varargin{2},'char') && isa(varargin{3},'gtsam.KeyFormatter')
        gtsam_wrapper(2081, this, varargin{:});
        return
      end
      % PRINTERRORS usage: printErrors(VectorValues c, string str) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.VectorValues') && isa(varargin{2},'char')
        gtsam_wrapper(2082, this, varargin{:});
        return
      end
      % PRINTERRORS usage: printErrors(VectorValues c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        gtsam_wrapper(2083, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.printErrors');
    end

    function varargout = probPrime(this, varargin)
      % PROBPRIME usage: probPrime(VectorValues c) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(2084, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.probPrime');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(GaussianFactor factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactor')
        gtsam_wrapper(2085, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianConditional conditional) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianConditional')
        gtsam_wrapper(2086, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianFactorGraph graph) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        gtsam_wrapper(2087, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianBayesNet bayesNet) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianBayesNet')
        gtsam_wrapper(2088, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianBayesTree bayesTree) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianBayesTree')
        gtsam_wrapper(2089, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.push_back');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter') && isa(varargin{3},'gtsam.DotWriter')
        gtsam_wrapper(2090, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2091, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2092, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.saveGraph');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2093, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2094, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.size');
    end

    function varargout = sparseJacobian_(this, varargin)
      % SPARSEJACOBIAN_ usage: sparseJacobian_() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2095, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.sparseJacobian_');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2096, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.GaussianFactorGraph.string_deserialize(sobj);
    end
  end
end
