/*
 * Created on 05/Nov/2003
 *  
 */
package DataBeans.person;

import DataBeans.InfoObject;
import DataBeans.InfoPerson;

/**
 * @author Barbosa
 * @author Pica
 */

public class InfoQualification extends InfoObject
{
	private Integer year;
	private String mark;
	private String school;
	private String title;
	private InfoPerson infoPerson;

	public InfoQualification()
	{
	}

	public boolean equals(Object obj)
	{
		boolean result = false;
		if (obj != null && obj instanceof InfoQualification)
		{
			result =
				getMark().equals(((InfoQualification) obj).getMark())
					&& getSchool().equals(((InfoQualification) obj).getSchool())
					&& getTitle().equals(((InfoQualification) obj).getTitle())
					&& getYear().equals(((InfoQualification) obj).getYear())
					&& getPersonInfo().equals(((InfoQualification) obj).getPersonInfo());
		}
		return result;
	}

	/**
	 * @return InfoPerson
	 */
	public InfoPerson getPersonInfo()
	{
		return infoPerson;
	}

	/**
	 * @return Integer
	 */
	public Integer getYear()
	{
		return year;
	}

	/**
	 * @return String
	 */
	public String getMark()
	{
		return mark;
	}

	/**
	 * @return String
	 */
	public String getSchool()
	{
		return school;
	}

	/**
	 * @return String
	 */
	public String getTitle()
	{
		return title;
	}

	/**
	 * Sets the personInfo.
	 * 
	 * @param infoPerson
	 *                    The personInfo to set
	 */
	public void setPersonInfo(InfoPerson infoPerson)
	{
		this.infoPerson = infoPerson;
	}

	/**
	 * Sets the mark of the qualification
	 * 
	 * @param mark.
	 */
	public void setMark(String mark)
	{
		this.mark = mark;
	}

	/**
	 * Sets the qualification year
	 * 
	 * @param year
	 *                    The Year to set
	 */
	public void setYear(Integer year)
	{
		this.year = year;
	}

	/**
	 * Sets the school of qualification
	 * 
	 * @param school;
	 *                    The school to set
	 */
	public void setSchool(String school)
	{
		this.school = school;
	}

	/**
	 * Sets the title of qualification
	 * 
	 * @param title;
	 *                    The title to set
	 */
	public void setTitle(String title)
	{
		this.title = title;
	}

}