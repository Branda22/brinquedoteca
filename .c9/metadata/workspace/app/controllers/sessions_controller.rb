{"changed":true,"filter":false,"title":"sessions_controller.rb","tooltip":"/app/controllers/sessions_controller.rb","value":"class SessionsController < ApplicationController\n  def new\n  end\n\n  def create\n    if user = User.find_by(email: params[:session][:email].downcase)\n      if user && user.authenticate(params[:session][:password])\n        flash[:success] = \"You have successfuly logged in\"\n        log_in(user)\n        redirect_to user\n      else\n        flash.now[:alert] = \"Invalid email or password\"\n        redirect_to root_url \n      end\n    end\n  end\n\n  def destroy\n    flash[:secondary] = \"Logged out\"\n    log_out if logged_in?\n    redirect_to root_url\n  end\n  \n  private\n  \n    \nend\n","undoManager":{"mark":-11,"position":100,"stack":[[{"group":"doc","deltas":[{"start":{"row":11,"column":26},"end":{"row":11,"column":27},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":28},"end":{"row":11,"column":29},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":28},"end":{"row":11,"column":29},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":26},"end":{"row":11,"column":27},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":25},"end":{"row":11,"column":26},"action":"remove","lines":["U"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"insert","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":14},"end":{"row":11,"column":15},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":15},"end":{"row":11,"column":16},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":16},"end":{"row":11,"column":17},"action":"insert","lines":["w"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":29},"end":{"row":11,"column":30},"action":"insert","lines":["I"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":30},"end":{"row":11,"column":31},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":31},"end":{"row":11,"column":32},"action":"insert","lines":["v"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":32},"end":{"row":11,"column":33},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":33},"end":{"row":11,"column":34},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":34},"end":{"row":11,"column":35},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":35},"end":{"row":11,"column":36},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":36},"end":{"row":11,"column":37},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":37},"end":{"row":11,"column":38},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":38},"end":{"row":11,"column":39},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":39},"end":{"row":11,"column":40},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":40},"end":{"row":11,"column":41},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":41},"end":{"row":11,"column":42},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":42},"end":{"row":11,"column":43},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":43},"end":{"row":11,"column":44},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":44},"end":{"row":11,"column":45},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":45},"end":{"row":11,"column":46},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":46},"end":{"row":11,"column":47},"action":"insert","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":47},"end":{"row":11,"column":48},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":48},"end":{"row":11,"column":49},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":49},"end":{"row":11,"column":50},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":50},"end":{"row":11,"column":51},"action":"insert","lines":["w"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":51},"end":{"row":11,"column":52},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":52},"end":{"row":11,"column":53},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":53},"end":{"row":11,"column":54},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":54},"end":{"row":11,"column":55},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":54},"end":{"row":11,"column":55},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"remove","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"insert","lines":["\""]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["\""]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":18},"end":{"row":11,"column":19},"action":"remove","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":18},"end":{"row":11,"column":19},"action":"insert","lines":["\""]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":24},"end":{"row":11,"column":25},"action":"insert","lines":["\""]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"remove","lines":["\""]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"remove","lines":["\""]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"insert","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":24},"end":{"row":11,"column":25},"action":"remove","lines":["\""]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":18},"end":{"row":11,"column":19},"action":"remove","lines":["\""]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":18},"end":{"row":11,"column":19},"action":"insert","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":17,"column":13},"end":{"row":18,"column":0},"action":"insert","lines":["",""]},{"start":{"row":18,"column":0},"end":{"row":18,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":4},"end":{"row":18,"column":5},"action":"insert","lines":["f"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":5},"end":{"row":18,"column":6},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":6},"end":{"row":18,"column":7},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":7},"end":{"row":18,"column":8},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":8},"end":{"row":18,"column":9},"action":"insert","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":9},"end":{"row":18,"column":11},"action":"insert","lines":["[]"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":10},"end":{"row":18,"column":11},"action":"insert","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":11},"end":{"row":18,"column":12},"action":"insert","lines":["w"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":12},"end":{"row":18,"column":13},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":13},"end":{"row":18,"column":14},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":14},"end":{"row":18,"column":15},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":15},"end":{"row":18,"column":16},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":16},"end":{"row":18,"column":17},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":17},"end":{"row":18,"column":18},"action":"insert","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":18},"end":{"row":18,"column":19},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":18},"end":{"row":18,"column":19},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":19},"end":{"row":18,"column":20},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":20},"end":{"row":18,"column":21},"action":"insert","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":21},"end":{"row":18,"column":22},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":22},"end":{"row":18,"column":24},"action":"insert","lines":["\"\""]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":23},"end":{"row":18,"column":24},"action":"insert","lines":["L"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":24},"end":{"row":18,"column":25},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":25},"end":{"row":18,"column":26},"action":"insert","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":26},"end":{"row":18,"column":27},"action":"insert","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":27},"end":{"row":18,"column":28},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":28},"end":{"row":18,"column":29},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":29},"end":{"row":18,"column":30},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":30},"end":{"row":18,"column":31},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":31},"end":{"row":18,"column":32},"action":"insert","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":32},"end":{"row":18,"column":33},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":33},"end":{"row":18,"column":34},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":33},"end":{"row":18,"column":34},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":11},"end":{"row":18,"column":18},"action":"remove","lines":["warning"]},{"start":{"row":18,"column":11},"end":{"row":18,"column":12},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":12},"end":{"row":18,"column":13},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":13},"end":{"row":18,"column":14},"action":"insert","lines":["c"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":14},"end":{"row":18,"column":15},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":15},"end":{"row":18,"column":16},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":16},"end":{"row":18,"column":17},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":17},"end":{"row":18,"column":18},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":18},"end":{"row":18,"column":19},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":19},"end":{"row":18,"column":20},"action":"insert","lines":["y"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":8},"end":{"row":12,"column":14},"action":"remove","lines":["render"]},{"start":{"row":12,"column":8},"end":{"row":12,"column":9},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":9},"end":{"row":12,"column":10},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":10},"end":{"row":12,"column":11},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":8},"end":{"row":12,"column":11},"action":"remove","lines":["red"]},{"start":{"row":12,"column":8},"end":{"row":12,"column":19},"action":"insert","lines":["redirect_to"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":20},"end":{"row":12,"column":25},"action":"remove","lines":["'new'"]},{"start":{"row":12,"column":20},"end":{"row":12,"column":21},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":21},"end":{"row":12,"column":22},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":22},"end":{"row":12,"column":23},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":23},"end":{"row":12,"column":24},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":20},"end":{"row":12,"column":24},"action":"remove","lines":["root"]},{"start":{"row":12,"column":20},"end":{"row":12,"column":28},"action":"insert","lines":["root_url"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":12,"column":28},"end":{"row":12,"column":28},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1418140387851}