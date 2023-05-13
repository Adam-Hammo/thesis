%class DiscreteFactorGraph, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteFactorGraph()
%DiscreteFactorGraph(DiscreteBayesNet bayesNet)
%
%-------Methods-------
%add(DiscreteKey j, string spec) : returns void
%add(DiscreteKey j, vector<double> spec) : returns void
%add(DiscreteKeys keys, string spec) : returns void
%add(vector<DiscreteKey> keys, string spec) : returns void
%at(size_t i) : returns gtsam::DiscreteFactor
%dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
%eliminateMultifrontal() : returns gtsam::DiscreteBayesTree
%eliminateMultifrontal(OrderingType type) : returns gtsam::DiscreteBayesTree
%eliminateMultifrontal(Ordering ordering) : returns gtsam::DiscreteBayesTree
%eliminatePartialMultifrontal(Ordering ordering) : returns pair< gtsam::DiscreteBayesTree, gtsam::DiscreteFactorGraph >
%eliminatePartialSequential(Ordering ordering) : returns pair< gtsam::DiscreteBayesNet, gtsam::DiscreteFactorGraph >
%eliminateSequential() : returns gtsam::DiscreteBayesNet
%eliminateSequential(OrderingType type) : returns gtsam::DiscreteBayesNet
%eliminateSequential(Ordering ordering) : returns gtsam::DiscreteBayesNet
%empty() : returns bool
%equals(DiscreteFactorGraph fg, double tol) : returns bool
%html(KeyFormatter keyFormatter) : returns string
%html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%keys() : returns gtsam::KeySet
%markdown(KeyFormatter keyFormatter) : returns string
%markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
%maxProduct() : returns gtsam::DiscreteLookupDAG
%maxProduct(OrderingType type) : returns gtsam::DiscreteLookupDAG
%maxProduct(Ordering ordering) : returns gtsam::DiscreteLookupDAG
%optimize() : returns gtsam::DiscreteValues
%print(string s) : returns void
%product() : returns gtsam::DecisionTreeFactor
%push_back(DiscreteFactor factor) : returns void
%push_back(DiscreteConditional conditional) : returns void
%push_back(DiscreteFactorGraph graph) : returns void
%push_back(DiscreteBayesNet bayesNet) : returns void
%push_back(DiscreteBayesTree bayesTree) : returns void
%saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
%size() : returns size_t
%sumProduct() : returns gtsam::DiscreteBayesNet
%sumProduct(OrderingType type) : returns gtsam::DiscreteBayesNet
%sumProduct(Ordering ordering) : returns gtsam::DiscreteBayesNet
%
classdef DiscreteFactorGraph < handle
  properties
    ptr_gtsamDiscreteFactorGraph = 0
  end
  methods
    function obj = DiscreteFactorGraph(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(736, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(737);
      elseif nargin == 1 && isa(varargin{1},'gtsam.DiscreteBayesNet')
        my_ptr = gtsam_wrapper(738, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.DiscreteFactorGraph constructor');
      end
      obj.ptr_gtsamDiscreteFactorGraph = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(739, obj.ptr_gtsamDiscreteFactorGraph);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add(this, varargin)
      % ADD usage: add(DiscreteKey j, string spec) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'char')
        gtsam_wrapper(740, this, varargin{:});
        return
      end
      % ADD usage: add(DiscreteKey j, vector<double> spec) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteKey') && isa(varargin{2},'std.vectordouble')
        gtsam_wrapper(741, this, varargin{:});
        return
      end
      % ADD usage: add(DiscreteKeys keys, string spec) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteKeys') && isa(varargin{2},'char')
        gtsam_wrapper(742, this, varargin{:});
        return
      end
      % ADD usage: add(vector<DiscreteKey> keys, string spec) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'std.vectorDiscreteKey') && isa(varargin{2},'char')
        gtsam_wrapper(743, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.add');
    end

    function varargout = at(this, varargin)
      % AT usage: at(size_t i) : returns gtsam.DiscreteFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(744, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.at');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'gtsam.DotWriter')
        varargout{1} = gtsam_wrapper(745, this, varargin{:});
        return
      end
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(746, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(747, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.dot');
    end

    function varargout = eliminateMultifrontal(this, varargin)
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal() : returns gtsam.DiscreteBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(748, this, varargin{:});
        return
      end
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal(OrderingType type) : returns gtsam.DiscreteBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering.OrderingType')
        varargout{1} = gtsam_wrapper(749, this, varargin{:});
        return
      end
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal(Ordering ordering) : returns gtsam.DiscreteBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(750, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.eliminateMultifrontal');
    end

    function varargout = eliminatePartialMultifrontal(this, varargin)
      % ELIMINATEPARTIALMULTIFRONTAL usage: eliminatePartialMultifrontal(Ordering ordering) : returns pair< gtsam.DiscreteBayesTree, gtsam.DiscreteFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(751, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.eliminatePartialMultifrontal');
    end

    function varargout = eliminatePartialSequential(this, varargin)
      % ELIMINATEPARTIALSEQUENTIAL usage: eliminatePartialSequential(Ordering ordering) : returns pair< gtsam.DiscreteBayesNet, gtsam.DiscreteFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(752, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.eliminatePartialSequential');
    end

    function varargout = eliminateSequential(this, varargin)
      % ELIMINATESEQUENTIAL usage: eliminateSequential() : returns gtsam.DiscreteBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(753, this, varargin{:});
        return
      end
      % ELIMINATESEQUENTIAL usage: eliminateSequential(OrderingType type) : returns gtsam.DiscreteBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering.OrderingType')
        varargout{1} = gtsam_wrapper(754, this, varargin{:});
        return
      end
      % ELIMINATESEQUENTIAL usage: eliminateSequential(Ordering ordering) : returns gtsam.DiscreteBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(755, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.eliminateSequential');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(756, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(DiscreteFactorGraph fg, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteFactorGraph') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(757, this, varargin{:});
        return
      end
      % EQUALS usage: equals(DiscreteFactorGraph fg) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteFactorGraph')
        varargout{1} = gtsam_wrapper(758, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.equals');
    end

    function varargout = html(this, varargin)
      % HTML usage: html(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(759, this, varargin{:});
        return
      end
      % HTML usage: html() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(760, this, varargin{:});
        return
      end
      % HTML usage: html(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(761, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.html');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(762, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.keys');
    end

    function varargout = markdown(this, varargin)
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(763, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(764, this, varargin{:});
        return
      end
      % MARKDOWN usage: markdown(KeyFormatter keyFormatter, map<Key,vector<string>> names) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'std.mapKeyvectorstring')
        varargout{1} = gtsam_wrapper(765, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.markdown');
    end

    function varargout = maxProduct(this, varargin)
      % MAXPRODUCT usage: maxProduct() : returns gtsam.DiscreteLookupDAG
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(766, this, varargin{:});
        return
      end
      % MAXPRODUCT usage: maxProduct(OrderingType type) : returns gtsam.DiscreteLookupDAG
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering.OrderingType')
        varargout{1} = gtsam_wrapper(767, this, varargin{:});
        return
      end
      % MAXPRODUCT usage: maxProduct(Ordering ordering) : returns gtsam.DiscreteLookupDAG
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(768, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.maxProduct');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.DiscreteValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(769, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.optimize');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(770, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(771, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.print');
    end

    function varargout = product(this, varargin)
      % PRODUCT usage: product() : returns gtsam.DecisionTreeFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(772, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.product');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(DiscreteFactor factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteFactor')
        gtsam_wrapper(773, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(DiscreteConditional conditional) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteConditional')
        gtsam_wrapper(774, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(DiscreteFactorGraph graph) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteFactorGraph')
        gtsam_wrapper(775, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(DiscreteBayesNet bayesNet) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteBayesNet')
        gtsam_wrapper(776, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(DiscreteBayesTree bayesTree) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteBayesTree')
        gtsam_wrapper(777, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.push_back');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter') && isa(varargin{3},'gtsam.DotWriter')
        gtsam_wrapper(778, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(779, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(780, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(781, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.size');
    end

    function varargout = sumProduct(this, varargin)
      % SUMPRODUCT usage: sumProduct() : returns gtsam.DiscreteBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(782, this, varargin{:});
        return
      end
      % SUMPRODUCT usage: sumProduct(OrderingType type) : returns gtsam.DiscreteBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering.OrderingType')
        varargout{1} = gtsam_wrapper(783, this, varargin{:});
        return
      end
      % SUMPRODUCT usage: sumProduct(Ordering ordering) : returns gtsam.DiscreteBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(784, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactorGraph.sumProduct');
    end

  end

  methods(Static = true)
  end
end
