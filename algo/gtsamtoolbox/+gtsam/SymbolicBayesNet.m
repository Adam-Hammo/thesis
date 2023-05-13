%class SymbolicBayesNet, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SymbolicBayesNet()
%SymbolicBayesNet(SymbolicBayesNet other)
%
%-------Methods-------
%at(size_t idx) : returns gtsam::SymbolicConditional
%back() : returns gtsam::SymbolicConditional
%dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
%equals(SymbolicBayesNet other, double tol) : returns bool
%front() : returns gtsam::SymbolicConditional
%print(string s, KeyFormatter keyFormatter) : returns void
%push_back(SymbolicConditional conditional) : returns void
%push_back(SymbolicBayesNet bayesNet) : returns void
%saveGraph(string s) : returns void
%saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
%size() : returns size_t
%
classdef SymbolicBayesNet < handle
  properties
    ptr_gtsamSymbolicBayesNet = 0
  end
  methods
    function obj = SymbolicBayesNet(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3325, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3326);
      elseif nargin == 1 && isa(varargin{1},'gtsam.SymbolicBayesNet')
        my_ptr = gtsam_wrapper(3327, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SymbolicBayesNet constructor');
      end
      obj.ptr_gtsamSymbolicBayesNet = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3328, obj.ptr_gtsamSymbolicBayesNet);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.SymbolicConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3329, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.at');
    end

    function varargout = back(this, varargin)
      % BACK usage: back() : returns gtsam.SymbolicConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3330, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.back');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(KeyFormatter keyFormatter, DotWriter writer) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyFormatter') && isa(varargin{2},'gtsam.DotWriter')
        varargout{1} = gtsam_wrapper(3331, this, varargin{:});
        return
      end
      % DOT usage: dot(KeyFormatter keyFormatter) : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(3332, this, varargin{:});
        return
      end
      % DOT usage: dot() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3333, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.dot');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SymbolicBayesNet other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SymbolicBayesNet') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3334, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.equals');
    end

    function varargout = front(this, varargin)
      % FRONT usage: front() : returns gtsam.SymbolicConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3335, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.front');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(3336, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3337, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3338, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.print');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(SymbolicConditional conditional) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicConditional')
        gtsam_wrapper(3339, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(SymbolicBayesNet bayesNet) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicBayesNet')
        gtsam_wrapper(3340, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.push_back');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3341, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter, DotWriter writer) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter') && isa(varargin{3},'gtsam.DotWriter')
        gtsam_wrapper(3342, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(3343, this, varargin{:});
        return
      end
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3344, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3345, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.size');
    end

  end

  methods(Static = true)
  end
end
