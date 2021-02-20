%% Function for plotting graphics
function plotval(varargin)

  if varargin{1}~=1
      figure
  end
  
  if mod(length(varargin)-1,2) == 0
    tot = (length(varargin));
    len = (length(varargin)-7)/2;
    for i=1:len
      plot(varargin{2}(varargin{3+len*2}), varargin{i*2+1}(varargin{3+len*2}),'DisplayName',varargin{i*2+2})
        hold on;
    end
    title(varargin{tot-3})
    xlabel(varargin{tot-2});
    ylabel(varargin{tot-1});
    if varargin{1}~=2
    lgd = legend;
    lgd.NumColumns = 2;
    legend('Location','best')
    end
    saveas(gcf,varargin{tot});
  else
    tot = (length(varargin));
    len = (length(varargin)-6)/2;
    for i=1:len
      plot(varargin{2}(varargin{3+len*2}), varargin{i*2+1}(varargin{3+len*2}),'DisplayName',varargin{i*2+2})
      if i == 1
        hold on;
      end
    end
    title(varargin{tot-2})
    xlabel(varargin{tot-1});
    ylabel(varargin{tot});
    if varargin{1}~=2
    lgd = legend;
    lgd.NumColumns = 2;
    legend('Location','best')
    end
  end

end
