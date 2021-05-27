package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			
			//we are fetching that Id we sent through url rewriting.
			//trim() to remove space just incase.
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction(); //permanent changes in DB
			Notes note = (Notes) s.get(Notes.class, noteId);
			s.delete(note); //delete(ob) method inside session.
			tx.commit();
			s.close();
			response.sendRedirect("allnotes.jsp");

		} catch (Exception e) {
			
		}
	}

}
