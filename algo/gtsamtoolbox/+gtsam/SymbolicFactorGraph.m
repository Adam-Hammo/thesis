%class SymbolicFactorGraph, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SymbolicFactorGraph()
%SymbolicFactorGraph(SymbolicBayesNet bayesNet)
%SymbolicFactorGraph(SymbolicBayesTree bayesTree)
%
%-------Methods-------
%dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
%eliminateMultifrontal() : returns gtsam::SymbolicBayesTree
%eliminateMultifrontal(Ordering ordering) : returns gtsam::SymbolicBayesTree
%eliminatePartialMultifrontal(Ordering ordering) : returns pair< gtsam::SymbolicBayesTree, gtsam::SymbolicFactorGraph >
%eliminatePartialMultifrontal(KeyVector keys) : returns pair< gtsam::SymbolicBayesTree, gtsam::SymbolicFactorGraph >
%eliminatePartialSequential(Ordering ordering) : returns pair< gtsam::SymbolicBayesNet, gtsam::SymbolicFactorGraph >
%eliminatePartialSequential(KeyVector keys) : returns pair< gtsam::SymbolicBayesNet, gtsam::SymbolicFactorGraph >
%eliminateSequential() : returns gtsam::SymbolicBayesNet
%eliminateSequential(Ordering ordering) : returns gtsam::SymbolicBayesNet
%equals(SymbolicFactorGraph rhs, double tol) : returns bool
%exists(size_t idx) : returns bool
%keys() : returns gtsam::KeySet
%marginal(KeyVector key_vector) : returns gtsam::SymbolicFactorGraph
%marginalMultifrontalBayesNet(Ordering ordering) : returns gtsam::SymbolicBayesNet
%marginalMultifrontalBayesNet(KeyVector key_vector) : returns gtsam::SymbolicBayesNet
%marginalMultifrontalBayesNet(Ordering ordering, Ordering marginalizedVariableOrdering) : returns gtsam::SymbolicBayesNet
%marginalMultifrontalBayesNet(KeyVector key_vector, Ordering marginalizedVariableOrdering) : returns gtsam::SymbolicBayesNet
%print(string s, KeyFormatter keyFormatter) : returns void
%push_back(SymbolicFactor factor) : returns void
%push_back(SymbolicFactorGraph graph) : returns void
%push_back(SymbolicBayesNet bayesNet) : returns void
%push_back(SymbolicBayesTree bayesTree) : returns void
%push_factor(size_t key) : returns void
%push_factor(size_t key1, size_t key2) : returns void
%push_factor(size_t key1, size_t key2, size_t key3) : returns void
%push_factor(size_t key1, size_t key2, size_t key3, size_t key4) : returns void
%saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
%size() : returns size_t
%
classdef SymbolicFactorGraph < handle
  properties
    ptr_gtsamSymbolicFactorGraph = 0
  end
  methods
    function obj = SymbolicFactorGraph(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3269, varargin{2});
        end
        gtsam_wrapper(3268, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3270);
      elseif nargin == 1 && isa(varargin{1},'gtsam.SymbolicBayesNet')
        my_ptr = gtsam_wrapper(3271, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'gtsam.SymbolicBayesTree')
        my_ptr = gtsam_wrapper(3272, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SymbolicFactorGraph constructor');
      end
      obj.ptr_gtsamSymbolicFactorGraph = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3273, obj.ptr_gtsamSymbolicFactorGraph);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'gtsam.DotWriter')
        varargout{1} = gtsam_wrapper(3274, this, varargin{:});
        return
      end
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(3275, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3276, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.dot');
    end

    function varargout = eliminateMultifrontal(this, varargin)
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal() : returns gtsam.SymbolicBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3277, this, varargin{:});
        return
      end
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal(Ordering ordering) : returns gtsam.SymbolicBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(3278, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.eliminateMultifrontal');
    end

    function varargout = eliminatePartialMultifrontal(this, varargin)
      % ELIMINATEPARTIALMULTIFRONTAL usage: eliminatePartialMultifrontal(Ordering ordering) : returns pair< gtsam.SymbolicBayesTree, gtsam.SymbolicFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3279, this, varargin{:});
        return
      end
      % ELIMINATEPARTIALMULTIFRONTAL usage: eliminatePartialMultifrontal(KeyVector keys) : returns pair< gtsam.SymbolicBayesTree, gtsam.SymbolicFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3280, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.eliminatePartialMultifrontal');
    end

    function varargout = eliminatePartialSequential(this, varargin)
      % ELIMINATEPARTIALSEQUENTIAL usage: eliminatePartialSequential(Ordering ordering) : returns pair< gtsam.SymbolicBayesNet, gtsam.SymbolicFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3281, this, varargin{:});
        return
      end
      % ELIMINATEPARTIALSEQUENTIAL usage: eliminatePartialSequential(KeyVector keys) : returns pair< gtsam.SymbolicBayesNet, gtsam.SymbolicFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3282, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.eliminatePartialSequential');
    end

    function varargout = eliminateSequential(this, varargin)
      % ELIMINATESEQUENTIAL usage: eliminateSequential() : returns gtsam.SymbolicBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3283, this, varargin{:});
        return
      end
      % ELIMINATESEQUENTIAL usage: eliminateSequential(Ordering ordering) : returns gtsam.SymbolicBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(3284, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.eliminateSequential');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SymbolicFactorGraph rhs, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SymbolicFactorGraph') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3285, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.equals');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t idx) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3286, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.exists');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3287, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.keys');
    end

    function varargout = marginal(this, varargin)
      % MARGINAL usage: marginal(KeyVector key_vector) : returns gtsam.SymbolicFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(3288, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.marginal');
    end

    function varargout = marginalMultifrontalBayesNet(this, varargin)
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(Ordering ordering) : returns gtsam.SymbolicBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(3289, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(KeyVector key_vector) : returns gtsam.SymbolicBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(3290, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(Ordering ordering, Ordering marginalizedVariableOrdering) : returns gtsam.SymbolicBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering') && isa(varargin{2},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(3291, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(KeyVector key_vector, Ordering marginalizedVariableOrdering) : returns gtsam.SymbolicBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyVector') && isa(varargin{2},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(3292, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.marginalMultifrontalBayesNet');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(3293, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3294, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3295, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.print');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(SymbolicFactor factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicFactor')
        gtsam_wrapper(3296, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(SymbolicFactorGraph graph) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicFactorGraph')
        gtsam_wrapper(3297, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(SymbolicBayesNet bayesNet) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicBayesNet')
        gtsam_wrapper(3298, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(SymbolicBayesTree bayesTree) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicBayesTree')
        gtsam_wrapper(3299, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.push_back');
    end

    function varargout = push_factor(this, varargin)
      % PUSH_FACTOR usage: push_factor(size_t key) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(3300, this, varargin{:});
        return
      end
      % PUSH_FACTOR usage: push_factor(size_t key1, size_t key2) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        gtsam_wrapper(3301, this, varargin{:});
        return
      end
      % PUSH_FACTOR usage: push_factor(size_t key1, size_t key2, size_t key3) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric')
        gtsam_wrapper(3302, this, varargin{:});
        return
      end
      % PUSH_FACTOR usage: push_factor(size_t key1, size_t key2, size_t key3, size_t key4) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric')
        gtsam_wrapper(3303, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.push_factor');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter') && isa(varargin{3},'gtsam.DotWriter')
        gtsam_wrapper(3304, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(3305, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3306, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3307, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicFactorGraph.size');
    end

  end

  methods(Static = true)
  end
end
