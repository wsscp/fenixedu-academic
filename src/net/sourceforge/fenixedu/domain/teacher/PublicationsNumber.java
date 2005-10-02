/*
 * Created on 21/Nov/2003
 *
 */
package net.sourceforge.fenixedu.domain.teacher;

import net.sourceforge.fenixedu.dataTransferObject.teacher.InfoPublicationsNumber;
import net.sourceforge.fenixedu.domain.ITeacher;
import net.sourceforge.fenixedu.domain.exceptions.DomainException;

/**
 * @author Leonor Almeida
 * @author Sergio Montelobo
 * @author Jo�o Fialho & Rita Ferreira
 *  
 */
public class PublicationsNumber extends PublicationsNumber_Base {

	public PublicationsNumber() {
		super();
	}
	
	public PublicationsNumber(ITeacher teacher, InfoPublicationsNumber infoPublicationsNumber) {
		if(teacher == null)
			throw new DomainException("The teacher should not be null!");
		
		setTeacher(teacher);
		setBasicProperties(infoPublicationsNumber);

	}

	public void edit(InfoPublicationsNumber infoPublicationsNumber) {
		setBasicProperties(infoPublicationsNumber);
		
	}

	private void setBasicProperties(InfoPublicationsNumber infoPublicationsNumber) {
        this.setNational(infoPublicationsNumber.getNational());
        this.setInternational(infoPublicationsNumber.getInternational());
        this.setPublicationType(infoPublicationsNumber.getPublicationType());
		
	}

	
}