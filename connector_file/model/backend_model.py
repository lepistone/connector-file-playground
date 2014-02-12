# -*- coding: utf-8 -*-
##############################################################################
#
#    Author: Leonardo Pistone
#    Copyright 2014 Camptocamp SA
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################
"""Backend Model."""

from openerp.osv import orm, fields


class file_import_backend(orm.Model):

    """File Import Backend."""

    _name = "file_import.backend"
    _description = 'File Import Backend'
    _inherit = "connector.backend"
    _backend_type = "file_import"

    def _select_versions(self, cr, uid, context=None):
        """Return available versions. Can be inherited to add custom ones."""
        return [('1', '1')]

    _columns = {
        'version': fields.selection(
            _select_versions,
            string='Version',
            required=True),
        'company_id': fields.many2one('res.company', 'Company'),
        'file_regexp': fields.char('File regexp', size=64),
        'user_id': fields.many2one('res.users', 'User'),
        'ftp_host': fields.char('FTP Host'),
        'ftp_user': fields.char('FTP User'),
        'ftp_password': fields.char('FTP Password'),
        'ftp_input_folder': fields.char('FTP Input folder'),
        'ftp_output_folder': fields.char('FTP Output folder'),
        'use_sftp': fields.boolean('Use SFTP'),
        'model_id': fields.many2one('ir.model', 'Model'),
    }

    _defaults = {
        'version': '1',
    }
