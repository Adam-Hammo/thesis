%class DiscreteLookupTable, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteLookupTable(size_t nFrontals, DiscreteKeys keys, ADT potentials)
%
%-------Methods-------
%argmax(DiscreteValues parentsValues) : returns size_t
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef DiscreteLookupTable < gtsam.DiscreteConditional
  properties
    ptr_gtsamDiscreteLookupTable = 0
  end
  methods
    function obj = DiscreteLookupTable(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        base_ptr = gtsam_wrapper(716, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.DiscreteKeys') && isa(varargin{3},'gtsam.DecisionTreeFactor.ADT')
        [ my_ptr, base_ptr ] = gtsam_wrapper(717, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.DiscreteLookupTable constructor');
      end
      obj = obj@gtsam.DiscreteConditional(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamDiscreteLookupTable = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(718, obj.ptr_gtsamDiscreteLookupTable);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = argmax(this, varargin)
      % ARGMAX usage: argmax(DiscreteValues parentsValues) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        varargout{1} = gtsam_wrapper(719, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupTable.argmax');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(720, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(721, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(722, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteLookupTable.print');
    end

  end

  methods(Static = true)
  end
end
