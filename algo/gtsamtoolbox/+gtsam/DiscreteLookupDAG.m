%class DiscreteLookupDAG, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteLookupDAG()
%
%-------Methods-------
%argmax() : returns gtsam::DiscreteValues
%argmax(DiscreteValues given) : returns gtsam::DiscreteValues
%at(size_t i) : returns gtsam::DiscreteLookupTable
%empty() : returns bool
%keys() : returns gtsam::KeySet
%print(string s, KeyFormatter keyFormatter) : returns void
%push_back(DiscreteLookupTable table) : returns void
%size() : returns size_t
%
classdef DiscreteLookupDAG < handle
  properties
    ptr_gtsamDiscreteLookupDAG = 0
  end
  methods
    function obj = DiscreteLookupDAG(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(723, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(724);
      else
        error('Arguments do not match any overload of gtsam.DiscreteLookupDAG constructor');
      end
      obj.ptr_gtsamDiscreteLookupDAG = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(725, obj.ptr_gtsamDiscreteLookupDAG);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = argmax(this, varargin)
      % ARGMAX usage: argmax() : returns gtsam.DiscreteValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(726, this, varargin{:});
        return
      end
      % ARGMAX usage: argmax(DiscreteValues given) : returns gtsam.DiscreteValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        varargout{1} = gtsam_wrapper(727, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupDAG.argmax');
    end

    function varargout = at(this, varargin)
      % AT usage: at(size_t i) : returns gtsam.DiscreteLookupTable
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(728, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupDAG.at');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(729, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupDAG.empty');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(730, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupDAG.keys');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(731, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(732, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(733, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupDAG.print');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(DiscreteLookupTable table) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteLookupTable')
        gtsam_wrapper(734, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupDAG.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(735, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupDAG.size');
    end

  end

  methods(Static = true)
  end
end
