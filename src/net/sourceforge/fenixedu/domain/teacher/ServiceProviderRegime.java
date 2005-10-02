/*
 * Created on 16/Nov/2003
 *
 */
package net.sourceforge.fenixedu.domain.teacher;

import net.sourceforge.fenixedu.dataTransferObject.teacher.InfoServiceProviderRegime;
import net.sourceforge.fenixedu.domain.ITeacher;
import net.sourceforge.fenixedu.domain.exceptions.DomainException;


/**
 * @author Leonor Almeida
 * @author Sergio Montelobo
 * 
 */
public class ServiceProviderRegime extends ServiceProviderRegime_Base {
	public ServiceProviderRegime() {
		super();

	}
	
	public ServiceProviderRegime(ITeacher teacher, InfoServiceProviderRegime infoServiceProviderRegime) {
		if(teacher == null)
			throw new DomainException("The teacher should not be null!");
		this.setTeacher(teacher);
		this.setProviderRegimeType(infoServiceProviderRegime.getProviderRegimeType());
	}
	
	public void edit(InfoServiceProviderRegime infoServiceProviderRegime) {
		
		this.setProviderRegimeType(infoServiceProviderRegime.getProviderRegimeType());
	}

}