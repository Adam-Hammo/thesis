%class DiscreteFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%empty() : returns bool
%equals(DiscreteFactor other, double tol) : returns bool
%print(string s, KeyFormatter keyFormatter) : returns void
%size() : returns size_t
%
classdef DiscreteFactor < handle
  properties
    ptr_gtsamDiscreteFactor = 0
  end
  methods
    function obj = DiscreteFactor(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(572, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.DiscreteFactor constructor');
      end
      obj.ptr_gtsamDiscreteFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(573, obj.ptr_gtsamDiscreteFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(574, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactor.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(DiscreteFactor other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(575, this, varargin{:});
        return
      end
      % EQUALS usage: equals(DiscreteFactor other) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteFactor')
        varargout{1} = gtsam_wrapper(576, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactor.equals');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(577, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(578, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(579, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactor.print');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(580, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteFactor.size');
    end

  end

  methods(Static = true)
  end
end
