/**
 * TNTConcept Easy Enterprise Management by Autentia Real Bussiness Solution S.L.
 * Copyright (C) 2007 Autentia Real Bussiness Solution S.L.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package com.autentia.tnt.manager.security.impl.fixed;

import java.util.Map;
import org.acegisecurity.GrantedAuthority;

/**
 *
 * @author Ivan Zaera Avellon
 */
public interface ISecurityConfiguration
{
	/** Get matrix of ACL_WRITE permissions */
	public Map<AclMatrixKey,AclMatrixValue> getWriteMatrix();

	/** Get matrix of ACL_READ permissions */
	public Map<AclMatrixKey,AclMatrixValue> getReadMatrix();

	/** Get matrix of ACL_DELETE permissions */
	public Map<AclMatrixKey,AclMatrixValue> getDeleteMatrix();

	/** Get matrix of role-based permissions */
	public Map<Integer,GrantedAuthority[]> getRolesMatrix();
}

