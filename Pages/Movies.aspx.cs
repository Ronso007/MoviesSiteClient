﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;

public partial class Pages_Movies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string movieName = "";
        if (Request.QueryString["MovieName"] != null)
        {
            movieName = Request.QueryString["MovieName"].ToString();
        }
        if(movieName != "")
        {
            localMoviesWebService.MoviesWebService movies = new localMoviesWebService.MoviesWebService();
            GridViewMovies.DataSource = movies.SearchMovie(movieName);
            GridViewMovies.DataBind();

        }
        else if (!Page.IsPostBack)
        {
            PopulateGrid();
        }
    }
    private DataSet GetData()
    {
        DataSet Movies = new DataSet();

        localMoviesWebService.MoviesWebService movies = new localMoviesWebService.MoviesWebService();
        
        return movies.GetAllMovies();
    }
    private void PopulateGrid()
    {
        GridViewMovies.DataSource = GetData();
        GridViewMovies.DataBind();
    }

    protected void GridViewMovies_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Details")
        {
            Response.Redirect("MoviePage.aspx?getMovieName=" + ((Label)(e.Item.FindControl("movieName"))).Text);
        }
    }

    protected void submitSort_Click(object sender, EventArgs e)
    {
        int sortExpression = int.Parse(RatingExpression.SelectedValue);
        int ratingExpression = int.Parse(RatingDropDown.SelectedValue);

        DataSet Movies = new DataSet();
        localMoviesWebService.MoviesWebService moviesWeb = new localMoviesWebService.MoviesWebService();

        
        
        GridViewMovies.DataSource = moviesWeb.GetAllMoviesFiltered(sortExpression, ratingExpression);
        
        GridViewMovies.DataBind();
    }

    protected void buttonShowAll_Click(object sender, EventArgs e)
    {
        PopulateGrid();
    }
}