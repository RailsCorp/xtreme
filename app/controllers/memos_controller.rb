class MemosController < ApplicationController
  def index
    @memos = Memo.with_task
  end
end
