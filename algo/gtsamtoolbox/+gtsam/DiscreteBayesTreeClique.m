%class DiscreteBayesTreeClique, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteBayesTreeClique()
%DiscreteBayesTreeClique(DiscreteConditional conditional)
%
%-------Methods-------
%conditional() : returns gtsam::DiscreteConditional
%evaluate(DiscreteValues values) : returns double
%isRoot() : returns bool
%printSignature(string s, KeyFormatter formatter) : returns void
%
classdef DiscreteBayesTreeClique < handle
  properties
    ptr_gtsamDiscreteBayesTreeClique = 0
  end
  methods
    function obj = DiscreteBayesTreeClique(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(686, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(687);
      elseif nargin == 1 && isa(varargin{1},'gtsam.DiscreteConditional')
        my_ptr = gtsam_wrapper(688, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.DiscreteBayesTreeClique constructor');
      end
      obj.ptr_gtsamDiscreteBayesTreeClique = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(689, obj.ptr_gtsamDiscreteBayesTreeClique);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = conditional(this, varargin)
      % CONDITIONAL usage: conditional() : returns gtsam.DiscreteConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(690, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTreeClique.conditional');
    end

    function varargout = evaluate(this, varargin)
      % EVALUATE usage: evaluate(DiscreteValues values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        varargout{1} = gtsam_wrapper(691, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTreeClique.evaluate');
    end

    function varargout = isRoot(this, varargin)
      % ISROOT usage: isRoot() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(692, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTreeClique.isRoot');
    end

    function varargout = printSignature(this, varargin)
      % PRINTSIGNATURE usage: printSignature(string s, KeyFormatter formatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(693, this, varargin{:});
        return
      end
      % PRINTSIGNATURE usage: printSignature(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(694, this, varargin{:});
        return
      end
      % PRINTSIGNATURE usage: printSignature() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(695, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteBayesTreeClique.printSignature');
    end

  end

  methods(Static = true)
  end
end
