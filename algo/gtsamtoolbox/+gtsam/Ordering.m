%class Ordering, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Ordering()
%Ordering(Ordering other)
%
%-------Methods-------
%at(size_t key) : returns size_t
%equals(Ordering ord, double tol) : returns bool
%print(string s, KeyFormatter keyFormatter) : returns void
%push_back(size_t key) : returns void
%size() : returns size_t
%
%-------Static Methods-------
%ColamdConstrainedFirstDiscreteFactorGraph(DiscreteFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedFirstGaussianFactorGraph(GaussianFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedFirstHybridGaussianFactorGraph(HybridGaussianFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedFirstNonlinearFactorGraph(NonlinearFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedFirstSymbolicFactorGraph(SymbolicFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedLastDiscreteFactorGraph(DiscreteFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedLastGaussianFactorGraph(GaussianFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedLastHybridGaussianFactorGraph(HybridGaussianFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedLastNonlinearFactorGraph(NonlinearFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam::Ordering
%ColamdConstrainedLastSymbolicFactorGraph(SymbolicFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam::Ordering
%ColamdDiscreteFactorGraph(DiscreteFactorGraph graph) : returns gtsam::Ordering
%ColamdGaussianFactorGraph(GaussianFactorGraph graph) : returns gtsam::Ordering
%ColamdHybridGaussianFactorGraph(HybridGaussianFactorGraph graph) : returns gtsam::Ordering
%ColamdNonlinearFactorGraph(NonlinearFactorGraph graph) : returns gtsam::Ordering
%ColamdSymbolicFactorGraph(SymbolicFactorGraph graph) : returns gtsam::Ordering
%CreateDiscreteFactorGraph(OrderingType orderingType, DiscreteFactorGraph graph) : returns gtsam::Ordering
%CreateGaussianFactorGraph(OrderingType orderingType, GaussianFactorGraph graph) : returns gtsam::Ordering
%CreateHybridGaussianFactorGraph(OrderingType orderingType, HybridGaussianFactorGraph graph) : returns gtsam::Ordering
%CreateNonlinearFactorGraph(OrderingType orderingType, NonlinearFactorGraph graph) : returns gtsam::Ordering
%CreateSymbolicFactorGraph(OrderingType orderingType, SymbolicFactorGraph graph) : returns gtsam::Ordering
%MetisDiscreteFactorGraph(DiscreteFactorGraph graph) : returns gtsam::Ordering
%MetisGaussianFactorGraph(GaussianFactorGraph graph) : returns gtsam::Ordering
%MetisHybridGaussianFactorGraph(HybridGaussianFactorGraph graph) : returns gtsam::Ordering
%MetisNonlinearFactorGraph(NonlinearFactorGraph graph) : returns gtsam::Ordering
%MetisSymbolicFactorGraph(SymbolicFactorGraph graph) : returns gtsam::Ordering
%NaturalDiscreteFactorGraph(DiscreteFactorGraph graph) : returns gtsam::Ordering
%NaturalGaussianFactorGraph(GaussianFactorGraph graph) : returns gtsam::Ordering
%NaturalHybridGaussianFactorGraph(HybridGaussianFactorGraph graph) : returns gtsam::Ordering
%NaturalNonlinearFactorGraph(NonlinearFactorGraph graph) : returns gtsam::Ordering
%NaturalSymbolicFactorGraph(SymbolicFactorGraph graph) : returns gtsam::Ordering
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Ordering
%
classdef Ordering < handle
  properties
    ptr_gtsamOrdering = 0
  end
  methods
    function obj = Ordering(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(472, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(473);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Ordering')
        my_ptr = gtsam_wrapper(474, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Ordering constructor');
      end
      obj.ptr_gtsamOrdering = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(475, obj.ptr_gtsamOrdering);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t key) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(476, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Ordering.at');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Ordering ord, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(477, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Ordering.equals');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(478, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(479, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(480, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Ordering.print');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(size_t key) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(481, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Ordering.push_back');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(482, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Ordering.string_serialize');
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
        varargout{1} = gtsam_wrapper(483, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Ordering.size');
    end

  end

  methods(Static = true)
    function varargout = ColamdConstrainedFirstDiscreteFactorGraph(varargin)
      % COLAMDCONSTRAINEDFIRSTDISCRETEFACTORGRAPH usage: ColamdConstrainedFirstDiscreteFactorGraph(DiscreteFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.DiscreteFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(484, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDFIRSTDISCRETEFACTORGRAPH usage: ColamdConstrainedFirstDiscreteFactorGraph(DiscreteFactorGraph graph, KeyVector constrainFirst) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(485, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedFirstDiscreteFactorGraph');
    end

    function varargout = ColamdConstrainedFirstGaussianFactorGraph(varargin)
      % COLAMDCONSTRAINEDFIRSTGAUSSIANFACTORGRAPH usage: ColamdConstrainedFirstGaussianFactorGraph(GaussianFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(486, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDFIRSTGAUSSIANFACTORGRAPH usage: ColamdConstrainedFirstGaussianFactorGraph(GaussianFactorGraph graph, KeyVector constrainFirst) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(487, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedFirstGaussianFactorGraph');
    end

    function varargout = ColamdConstrainedFirstHybridGaussianFactorGraph(varargin)
      % COLAMDCONSTRAINEDFIRSTHYBRIDGAUSSIANFACTORGRAPH usage: ColamdConstrainedFirstHybridGaussianFactorGraph(HybridGaussianFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.HybridGaussianFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(488, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDFIRSTHYBRIDGAUSSIANFACTORGRAPH usage: ColamdConstrainedFirstHybridGaussianFactorGraph(HybridGaussianFactorGraph graph, KeyVector constrainFirst) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.HybridGaussianFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(489, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedFirstHybridGaussianFactorGraph');
    end

    function varargout = ColamdConstrainedFirstNonlinearFactorGraph(varargin)
      % COLAMDCONSTRAINEDFIRSTNONLINEARFACTORGRAPH usage: ColamdConstrainedFirstNonlinearFactorGraph(NonlinearFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(490, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDFIRSTNONLINEARFACTORGRAPH usage: ColamdConstrainedFirstNonlinearFactorGraph(NonlinearFactorGraph graph, KeyVector constrainFirst) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(491, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedFirstNonlinearFactorGraph');
    end

    function varargout = ColamdConstrainedFirstSymbolicFactorGraph(varargin)
      % COLAMDCONSTRAINEDFIRSTSYMBOLICFACTORGRAPH usage: ColamdConstrainedFirstSymbolicFactorGraph(SymbolicFactorGraph graph, KeyVector constrainFirst, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.SymbolicFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(492, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDFIRSTSYMBOLICFACTORGRAPH usage: ColamdConstrainedFirstSymbolicFactorGraph(SymbolicFactorGraph graph, KeyVector constrainFirst) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SymbolicFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(493, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedFirstSymbolicFactorGraph');
    end

    function varargout = ColamdConstrainedLastDiscreteFactorGraph(varargin)
      % COLAMDCONSTRAINEDLASTDISCRETEFACTORGRAPH usage: ColamdConstrainedLastDiscreteFactorGraph(DiscreteFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.DiscreteFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(494, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDLASTDISCRETEFACTORGRAPH usage: ColamdConstrainedLastDiscreteFactorGraph(DiscreteFactorGraph graph, KeyVector constrainLast) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(495, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedLastDiscreteFactorGraph');
    end

    function varargout = ColamdConstrainedLastGaussianFactorGraph(varargin)
      % COLAMDCONSTRAINEDLASTGAUSSIANFACTORGRAPH usage: ColamdConstrainedLastGaussianFactorGraph(GaussianFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(496, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDLASTGAUSSIANFACTORGRAPH usage: ColamdConstrainedLastGaussianFactorGraph(GaussianFactorGraph graph, KeyVector constrainLast) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(497, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedLastGaussianFactorGraph');
    end

    function varargout = ColamdConstrainedLastHybridGaussianFactorGraph(varargin)
      % COLAMDCONSTRAINEDLASTHYBRIDGAUSSIANFACTORGRAPH usage: ColamdConstrainedLastHybridGaussianFactorGraph(HybridGaussianFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.HybridGaussianFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(498, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDLASTHYBRIDGAUSSIANFACTORGRAPH usage: ColamdConstrainedLastHybridGaussianFactorGraph(HybridGaussianFactorGraph graph, KeyVector constrainLast) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.HybridGaussianFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(499, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedLastHybridGaussianFactorGraph');
    end

    function varargout = ColamdConstrainedLastNonlinearFactorGraph(varargin)
      % COLAMDCONSTRAINEDLASTNONLINEARFACTORGRAPH usage: ColamdConstrainedLastNonlinearFactorGraph(NonlinearFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(500, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDLASTNONLINEARFACTORGRAPH usage: ColamdConstrainedLastNonlinearFactorGraph(NonlinearFactorGraph graph, KeyVector constrainLast) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(501, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedLastNonlinearFactorGraph');
    end

    function varargout = ColamdConstrainedLastSymbolicFactorGraph(varargin)
      % COLAMDCONSTRAINEDLASTSYMBOLICFACTORGRAPH usage: ColamdConstrainedLastSymbolicFactorGraph(SymbolicFactorGraph graph, KeyVector constrainLast, bool forceOrder) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.SymbolicFactorGraph') && isa(varargin{2},'gtsam.KeyVector') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(502, varargin{:});
        return
      end

      % COLAMDCONSTRAINEDLASTSYMBOLICFACTORGRAPH usage: ColamdConstrainedLastSymbolicFactorGraph(SymbolicFactorGraph graph, KeyVector constrainLast) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SymbolicFactorGraph') && isa(varargin{2},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(503, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdConstrainedLastSymbolicFactorGraph');
    end

    function varargout = ColamdDiscreteFactorGraph(varargin)
      % COLAMDDISCRETEFACTORGRAPH usage: ColamdDiscreteFactorGraph(DiscreteFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteFactorGraph')
        varargout{1} = gtsam_wrapper(504, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdDiscreteFactorGraph');
    end

    function varargout = ColamdGaussianFactorGraph(varargin)
      % COLAMDGAUSSIANFACTORGRAPH usage: ColamdGaussianFactorGraph(GaussianFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        varargout{1} = gtsam_wrapper(505, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdGaussianFactorGraph');
    end

    function varargout = ColamdHybridGaussianFactorGraph(varargin)
      % COLAMDHYBRIDGAUSSIANFACTORGRAPH usage: ColamdHybridGaussianFactorGraph(HybridGaussianFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.HybridGaussianFactorGraph')
        varargout{1} = gtsam_wrapper(506, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdHybridGaussianFactorGraph');
    end

    function varargout = ColamdNonlinearFactorGraph(varargin)
      % COLAMDNONLINEARFACTORGRAPH usage: ColamdNonlinearFactorGraph(NonlinearFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(507, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdNonlinearFactorGraph');
    end

    function varargout = ColamdSymbolicFactorGraph(varargin)
      % COLAMDSYMBOLICFACTORGRAPH usage: ColamdSymbolicFactorGraph(SymbolicFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicFactorGraph')
        varargout{1} = gtsam_wrapper(508, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.ColamdSymbolicFactorGraph');
    end

    function varargout = CreateDiscreteFactorGraph(varargin)
      % CREATEDISCRETEFACTORGRAPH usage: CreateDiscreteFactorGraph(OrderingType orderingType, DiscreteFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering.OrderingType') && isa(varargin{2},'gtsam.DiscreteFactorGraph')
        varargout{1} = gtsam_wrapper(509, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.CreateDiscreteFactorGraph');
    end

    function varargout = CreateGaussianFactorGraph(varargin)
      % CREATEGAUSSIANFACTORGRAPH usage: CreateGaussianFactorGraph(OrderingType orderingType, GaussianFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering.OrderingType') && isa(varargin{2},'gtsam.GaussianFactorGraph')
        varargout{1} = gtsam_wrapper(510, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.CreateGaussianFactorGraph');
    end

    function varargout = CreateHybridGaussianFactorGraph(varargin)
      % CREATEHYBRIDGAUSSIANFACTORGRAPH usage: CreateHybridGaussianFactorGraph(OrderingType orderingType, HybridGaussianFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering.OrderingType') && isa(varargin{2},'gtsam.HybridGaussianFactorGraph')
        varargout{1} = gtsam_wrapper(511, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.CreateHybridGaussianFactorGraph');
    end

    function varargout = CreateNonlinearFactorGraph(varargin)
      % CREATENONLINEARFACTORGRAPH usage: CreateNonlinearFactorGraph(OrderingType orderingType, NonlinearFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering.OrderingType') && isa(varargin{2},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(512, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.CreateNonlinearFactorGraph');
    end

    function varargout = CreateSymbolicFactorGraph(varargin)
      % CREATESYMBOLICFACTORGRAPH usage: CreateSymbolicFactorGraph(OrderingType orderingType, SymbolicFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering.OrderingType') && isa(varargin{2},'gtsam.SymbolicFactorGraph')
        varargout{1} = gtsam_wrapper(513, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.CreateSymbolicFactorGraph');
    end

    function varargout = MetisDiscreteFactorGraph(varargin)
      % METISDISCRETEFACTORGRAPH usage: MetisDiscreteFactorGraph(DiscreteFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteFactorGraph')
        varargout{1} = gtsam_wrapper(514, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.MetisDiscreteFactorGraph');
    end

    function varargout = MetisGaussianFactorGraph(varargin)
      % METISGAUSSIANFACTORGRAPH usage: MetisGaussianFactorGraph(GaussianFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        varargout{1} = gtsam_wrapper(515, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.MetisGaussianFactorGraph');
    end

    function varargout = MetisHybridGaussianFactorGraph(varargin)
      % METISHYBRIDGAUSSIANFACTORGRAPH usage: MetisHybridGaussianFactorGraph(HybridGaussianFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.HybridGaussianFactorGraph')
        varargout{1} = gtsam_wrapper(516, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.MetisHybridGaussianFactorGraph');
    end

    function varargout = MetisNonlinearFactorGraph(varargin)
      % METISNONLINEARFACTORGRAPH usage: MetisNonlinearFactorGraph(NonlinearFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(517, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.MetisNonlinearFactorGraph');
    end

    function varargout = MetisSymbolicFactorGraph(varargin)
      % METISSYMBOLICFACTORGRAPH usage: MetisSymbolicFactorGraph(SymbolicFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicFactorGraph')
        varargout{1} = gtsam_wrapper(518, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.MetisSymbolicFactorGraph');
    end

    function varargout = NaturalDiscreteFactorGraph(varargin)
      % NATURALDISCRETEFACTORGRAPH usage: NaturalDiscreteFactorGraph(DiscreteFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteFactorGraph')
        varargout{1} = gtsam_wrapper(519, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.NaturalDiscreteFactorGraph');
    end

    function varargout = NaturalGaussianFactorGraph(varargin)
      % NATURALGAUSSIANFACTORGRAPH usage: NaturalGaussianFactorGraph(GaussianFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        varargout{1} = gtsam_wrapper(520, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.NaturalGaussianFactorGraph');
    end

    function varargout = NaturalHybridGaussianFactorGraph(varargin)
      % NATURALHYBRIDGAUSSIANFACTORGRAPH usage: NaturalHybridGaussianFactorGraph(HybridGaussianFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.HybridGaussianFactorGraph')
        varargout{1} = gtsam_wrapper(521, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.NaturalHybridGaussianFactorGraph');
    end

    function varargout = NaturalNonlinearFactorGraph(varargin)
      % NATURALNONLINEARFACTORGRAPH usage: NaturalNonlinearFactorGraph(NonlinearFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(522, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.NaturalNonlinearFactorGraph');
    end

    function varargout = NaturalSymbolicFactorGraph(varargin)
      % NATURALSYMBOLICFACTORGRAPH usage: NaturalSymbolicFactorGraph(SymbolicFactorGraph graph) : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicFactorGraph')
        varargout{1} = gtsam_wrapper(523, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Ordering.NaturalSymbolicFactorGraph');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Ordering
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(524, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Ordering.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Ordering.string_deserialize(sobj);
    end
  end
end
