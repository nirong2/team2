package com.team2.board.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.team2.board.db.ENFBoardDAO;
import com.team2.board.db.ENFBoardDTO;
import com.team2.util.Action;
import com.team2.util.ActionForward;

public class EventMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : eventMainAction_execute() 호출");
		
		ENFBoardDAO dao = new ENFBoardDAO();
		
		List<ENFBoardDTO> boardList = dao.BoardList();
		
		request.setAttribute("boardList", boardList);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath("./event/eventMain.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
