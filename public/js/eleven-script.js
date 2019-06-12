$(document).ready(function () {

	$("#form-login #form-group-username #username").focus();

	$('.dropdown').on('show.bs.dropdown', function () {
		$(this).find('.dropdown-menu').first().slideDown(200);
	});

	$('.dropdown').on('hide.bs.dropdown', function () {
		$(this).find('.dropdown-menu').first().slideUp(200);
	});

	$('[data-toggle="tooltip"]').tooltip();

	jQuery.fn.dataTable.render.ellipsis = function (cutoff, wordbreak, escapeHtml) {
		var esc = function (t) {
			return t
				.replace(/&/g, '&amp;')
				.replace(/</g, '&lt;')
				.replace(/>/g, '&gt;')
				.replace(/"/g, '&quot;');
		};
		return function (d, type, row) {
			// Order, search and type get the original data
			if (type !== 'display') {
				return d;
			}
			if (typeof d !== 'number' && typeof d !== 'string') {
				return d;
			}
			d = d.toString(); // cast numbers
			if (d.length <= cutoff) {
				return d;
			}
			var shortened = d.substr(0, cutoff - 1);
			// Find the last white space character in the string
			if (wordbreak) {
				shortened = shortened.replace(/\s([^\s]*)$/, '');
			}
			// Protect against uncontrolled HTML input
			if (escapeHtml) {
				shortened = esc(shortened);
			}
			return '<span class="ellipsis" title="' + esc(d) + '">' + shortened + '&#8230;</span>';
		};
	};

	var usersDataTable = $('#users-datatable').DataTable({
		"pageLength": 8,
		"lengthChange": false,
		"searching": true,
		"responsive": true,
		"serverSide": true,
		"order": [],
		"columnDefs": [
			{ responsivePriority: 1, targets: 0 },
			{ responsivePriority: 2, targets: -1 },
			{ responsivePriority: 3, targets: -2 },
			{ responsivePriority: 4, targets: -3 }
		],
		"ajax": {
			"url": window.location.protocol + '//' + window.location.host + '/eleven/site/users_datatable',
			// "url": window.location.protocol + '//' + 'eleven.cs/site/users_datatable',
			"type": 'POST',
			"dataType": 'JSON'
		}
	});

	var gradesheetsDataTable = $('#gradesheets-datatable').DataTable({
		"pageLength": 8,
		"lengthChange": false,
		"searching": true,
		"responsive": true,
		"serverSide": true,
		"order": [],
		"columnDefs": [
			{ "render": $.fn.dataTable.render.ellipsis(50, true), "targets": 4 },
			{ "responsivePriority": 1, targets: 0 },
			{ "responsivePriority": 2, targets: -1 },
			{ "responsivePriority": 3, targets: -2 },
			{ "responsivePriority": 4, targets: 2 },
			{ "responsivePriority": 5, targets: 5 }
		],
		"ajax": {
			"url": window.location.protocol + '//' + window.location.host + '/eleven/site/gradesheets_datatable',
			"type": 'POST',
			"dataType": 'JSON'
		}
	});

	var gradesheetLecLabDataTable = $('#gradesheet-leclab-datatable').DataTable({
		"pageLength": 8,
		"lengthChange": false,
		"searching": true,
		"responsive": true,
		"serverSide": true,
		"order": [],
		"columnDefs": [
			{ "responsivePriority": 1, targets: 0 },
			{ "responsivePriority": 2, targets: -1 },
			{ "responsivePriority": 3, targets: -2 },
			{ "responsivePriority": 4, targets: -3 },
			{ "responsivePriority": 5, targets: -4 },
			{ "responsivePriority": 6, targets: -5 },
			{ "responsivePriority": 7, targets: -6 },
			{ "responsivePriority": 8, targets: -8 },
			{ "responsivePriority": 9, targets: -10 }
		],
		"ajax": {
			"url": window.location.protocol + '//' + window.location.host + '/eleven/site/gradesheet_leclab_datatable',
			"type": 'POST',
			"data": { username: $('#gradesheet-leclab-datatable').data('username'), term: $('#gradesheet-leclab-datatable').data('term'), year: $('#gradesheet-leclab-datatable').data('year'), subject_code: $('#gradesheet-leclab-datatable').data('subject-code') },
			"dataType": 'JSON'
		}
	});

	var gradesheetLecDataTable = $('#gradesheet-lec-datatable').DataTable({
		"pageLength": 8,
		"lengthChange": false,
		"searching": true,
		"responsive": true,
		"serverSide": true,
		"order": [],
		"columnDefs": [
			{ "responsivePriority": 1, targets: 0 },
			{ "responsivePriority": 2, targets: -1 },
			{ "responsivePriority": 3, targets: 1 },
			{ "responsivePriority": 4, targets: -2 }
		],
		"ajax": {
			"url": window.location.protocol + '//' + window.location.host + '/eleven/site/gradesheet_lec_datatable',
			"type": 'POST',
			"data": { username: $('#gradesheet-lec-datatable').data('username'), term: $('#gradesheet-lec-datatable').data('term'), year: $('#gradesheet-lec-datatable').data('year'), subject_code: $('#gradesheet-lec-datatable').data('subject-code') },
			"dataType": 'JSON'
		}
	});

	var gradesheetLabDataTable = $('#gradesheet-lab-datatable').DataTable({
		"pageLength": 8,
		"lengthChange": false,
		"searching": true,
		"responsive": true,
		"serverSide": true,
		"order": [],
		"columnDefs": [
			{ "responsivePriority": 1, targets: 0 },
			{ "responsivePriority": 2, targets: -1 },
			{ "responsivePriority": 3, targets: 1 },
			{ "responsivePriority": 4, targets: -2 }
		],
		"ajax": {
			"url": window.location.protocol + '//' + window.location.host + '/eleven/site/gradesheet_lab_datatable',
			"type": 'POST',
			"data": { username: $('#gradesheet-lab-datatable').data('username'), term: $('#gradesheet-lab-datatable').data('term'), year: $('#gradesheet-lab-datatable').data('year'), subject_code: $('#gradesheet-lab-datatable').data('subject-code') },
			"dataType": 'JSON'
		}
	});

	var gradesDataTable = $('#grades-datatable').DataTable({
		// "pageLength": 8,
		"paging": false,
		"lengthChange": false,
		"searching": false,
		"responsive": true,
		"serverSide": true,
		"order": [],
		"ajax": {
			"url": window.location.protocol + '//' + window.location.host + '/eleven/site/grades_datatable',
			// "url": window.location.protocol + '//' + 'eleven.cs/site/grades_datatable',
			"type": 'POST',
			"data": { student_no: $('#grades-datatable').data('student-no'), term: $('#grades-datatable').data('term'), year: $('#grades-datatable').data('year') },
			"dataType": 'JSON'
		}
	});

	var recordsDataTable = $('#records-datatable').DataTable({
		"pageLength": 8,
		"lengthChange": false,
		"searching": true,
		"responsive": true,
		"serverSide": true,
		"order": [],
		"columnDefs": [
			{ "render": $.fn.dataTable.render.ellipsis(50, true), "targets": 1 },
			{ "responsivePriority": 1, targets: 0 },
			{ "responsivePriority": 2, targets: -1 },
			{ "responsivePriority": 3, targets: 2 },
			{ "orderable": false, targets: 3 }
		],
		"ajax": {
			"url": window.location.protocol + '//' + window.location.host + '/eleven/site/records_datatable',
			"data": function (d) {
				d.course = $('#records-datatable').data('course');
			},
			// { course: $('#records-datatable').data('course') },
			// "url": window.location.protocol + '//' + 'eleven.cs/site/records_datatable',
			"type": 'POST',
			"dataType": 'JSON'
		}
	});

	var registryDataTable = $('#registry-datatable').DataTable({
		"pageLength": 7,
		"lengthChange": false,
		"searching": true,
		"responsive": true,
		"serverSide": true,
		"order": [],
		"columnDefs": [
			{ "render": $.fn.dataTable.render.ellipsis(50, true), "targets": 3 },
			{ "responsivePriority": 1, targets: 3 },
			{ "responsivePriority": 2, targets: -1 },
			{ "responsivePriority": 3, targets: -2 },
			{ "responsivePriority": 4, targets: 2 },
			{ "responsivePriority": 5, targets: -3 },
			{ "responsivePriority": 6, targets: -4 },
			{ "responsivePriority": 7, targets: -5 }
		],
		"ajax": {
			"url": window.location.protocol + '//' + window.location.host + '/eleven/site/registry_datatable',
			// "url": window.location.protocol + '//' + 'eleven.cs/site/registry_datatable',
			"type": 'POST',
			"data": { student_no: $('#registry-datatable').data('student-no'), course: $('#registry-datatable').data('course') },
			"dataType": 'JSON'
		}
	});

	$('#evaluation-datatable').DataTable({
		"pageLength": 7,
		"lengthChange": false,
		"searching": true,
		"responsive": true,
		"order": [],
		"columnDefs": [
			{ "render": $.fn.dataTable.render.ellipsis(50, true), "targets": 3 },
			{ "responsivePriority": 1, targets: 2 },
			{ "responsivePriority": 2, targets: 3 },
			{ "responsivePriority": 3, targets: 1 },
			{ "responsivePriority": 4, targets: 0 },
			{ "responsivePriority": 5, targets: -1 }
		]
	});

	$('#evaluation-verify-left-datatable').DataTable({
		// "pageLength": 7,
		// "pagingType": "simple",
		"paging": false,
		"lengthChange": false,
		"searching": false,
		"responsive": false,
		"order": [],
		"columnDefs": [
			{ "render": $.fn.dataTable.render.ellipsis(30, true), "targets": 1 },
			{ "responsivePriority": 1, targets: 0 },
			{ "responsivePriority": 2, targets: -1 },
			{ "responsivePriority": 3, targets: 1 }
		]
	});

	$('#evaluation-verify-right-datatable').DataTable({
		// "pageLength": 7,
		// "pagingType": "simple",
		"paging": false,
		"lengthChange": false,
		"searching": false,
		"responsive": false,
		"order": [],
		"columnDefs": [
			{ "render": $.fn.dataTable.render.ellipsis(30, true), "targets": 2 },
			{ "responsivePriority": 1, targets: -1 },
			{ "responsivePriority": 2, targets: 1 },
			{ "responsivePriority": 3, targets: 0 }
		]
	});

	$('#prospectus-checked-datatable').DataTable({
		// "pageLength": 7,
		// "pagingType": "simple",
		"paging": false,
		"lengthChange": false,
		"searching": false,
		"responsive": false,
		"order": [],
		"columnDefs": [
			{ "render": $.fn.dataTable.render.ellipsis(30, true), "targets": 1 },
			{ "responsivePriority": 1, targets: -1 },
			{ "responsivePriority": 2, targets: 0 },
			{ "responsivePriority": 3, targets: 1 }
		]
	});

	$('#next-subjects-datatable').DataTable({
		// "pageLength": 7,
		// "pagingType": "simple",
		"paging": false,
		"lengthChange": false,
		"searching": false,
		"responsive": false,
		"order": [],
		"columnDefs": [
			{ "render": $.fn.dataTable.render.ellipsis(30, true), "targets": 2 },
			{ "responsivePriority": 1, targets: 0 },
			{ "responsivePriority": 2, targets: 1 },
			{ "responsivePriority": 3, targets: 2 }
		]
	});

	$('#users-datatable_filter > label > input').focus();

	$('#form-login').submit(function (event) {
		event.preventDefault();
		$("#form-group-username").removeClass('has-error');
		$("#form-group-password").removeClass('has-error');
		$(".error-container").empty();
		var url = window.location.protocol + '//' + window.location.host + '/eleven/login/validate';
		// var url = window.location.protocol + '//' + 'eleven.cs/login/validate';
		var method = 'POST';
		var data = $(this).serialize();
		$.ajax({
			url: url,
			type: method,
			dataType: 'json',
			data: data,
		}).done(function (data) {
			if (data.msg == 'error') {
				if (data.password) {
					$("#form-group-password").addClass('has-error');
					$("#error-password").empty().append(data.password).css('visibility', 'visible');
					$("#password").focus();
				}
				if (data.username) {
					$("#form-group-username").addClass('has-error');
					$("#error-username").empty().append(data.username).css('visibility', 'visible');
					$("#username").focus();
				}
			} else if (data.msg == 'success') {
				window.location.replace('login/logged_in');
			} else {
				$("#form-group-username").addClass('has-error');
				$("#form-group-password").addClass('has-error');
				$("#error-login").empty().append(data.msg).css('visibility', 'visible');
				if (parseInt(data.attempt) <= 2) {
					$("#error-login-attempt").empty().append('You have ' + (3 - parseInt(data.attempt)) + ' attempt(s) left.').css('visibility', 'visible');
				}
			}
		}).fail(function (data) {
			alert('no response');
		});
	});

	$(document).on("click", "#user-add", function (data) {
		$(".error-container").empty();
		$("#form-group-username").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-new-password").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-confirm-new-password").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-usertype").removeClass('has-error');
		$("#form-group-first-name").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-mid-name").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-last-name").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#username").removeAttr('disabled');
		$("#form-user")[0].reset();
		var $formType = $(this).data("form-type");
		$('#modal-title').text('New Account');
		$("#form-type").val($formType);
		$("#username").val('');
		$("#radio-container").show();
		$("#new-password").val('');
		$("#confirm-new-password").val('');
		$("#first-name").val('');
		$("#mid-name").val('');
		$("#last-name").val('');
		$("#btn-submit").val('Register');
	});

	$(document).on("click", "#user-edit", function (data) {
		$(".error-container").empty();
		$("#form-group-username").removeClass('has-error');
		$("#form-group-new-password").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-confirm-new-password").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-first-name").removeClass('has-error');
		$("#form-group-mid-name").removeClass('has-error');
		$("#form-group-last-name").removeClass('has-error');
		$("#form-user")[0].reset();
		var $formType = $(this).data("form-type");
		var $id = $(this).data("id");
		var $username = $(this).data("username");
		var $usertype = $(this).data("usertype");
		var $last_name = $(this).data("last-name");
		var $first_name = $(this).data("first-name");
		var $mid_name = $(this).data("mid-name");
		$('#modal-title').text('Edit Account');
		$("#form-type").val($formType);
		$("#id").val($id);
		$("#username").val($username).attr('disabled', 'disabled');
		$("#form-group-username").addClass('pmd-textfield-floating-label-completed');
		$("#radio-container").hide();
		$("#new-password").val('');
		$("#confirm-new-password").val('');
		$("#personal-details-container").show();
		$("#first-name").val($first_name);
		$("#form-group-first-name").addClass('pmd-textfield-floating-label-completed');
		$("#mid-name").val($mid_name);
		$("#form-group-mid-name").addClass('pmd-textfield-floating-label-completed');
		$("#last-name").val($last_name);
		$("#form-group-last-name").addClass('pmd-textfield-floating-label-completed');
		$("#btn-submit").val('Save Changes');
	});

	$(document).on("click", "#user-change-password", function (data) {
		$(".error-container").empty();
		$("#form-group-new-password").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-confirm-new-password").removeClass('has-error pmd-textfield-floating-label-completed');
		var $formType = $(this).data("form-type");
		var $id = $(this).data("id");
		var $username = $(this).data("username");
		$('#modal-title').text('Change Password');
		$("#label-password").text("New Password");
		$("#label-confirm-password").text("Confirm New Password");
		$("#form-type").val($formType);
		$("#id").val($id);
		$("#username").val($username).attr('disabled', 'disabled');
		$("#form-group-username").addClass('pmd-textfield-floating-label-completed');
		$("#radio-container").hide();
		$("#new-password").val('');
		$("#confirm-new-password").val('');
		$("#personal-details-container").hide();
		$("#btn-submit").val('Save Changes');
	});

	$('#user-modal').on('shown.bs.modal', function () {
		($('#username').attr('disabled')) ? $('#new-password').focus() : $('#username').focus();
		$(".user-change-password-complete").empty();
	});

	$('#student-modal').on('hidden.bs.modal', function () {
		$(".error-container").empty();
		$("#form-group-student-no").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-sy-code").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#student-no").val('').focus();
		$("#student-list").empty();
	});

	$('#student-modal').on('shown.bs.modal', function () {
		$("#student-no").val('').focus();
	});

	$('#registry-grades-modal').on('shown.bs.modal', function () {
		$('#field-final-grade').focus();
	});

	$('#registry-evaluation-modal').on('hidden.bs.modal', function () {
		$(".error-container").empty();
		$('#form-registrar-evaluation')[0].reset();
		$("#form-group-student-no-eval").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-course").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#student-list-eval").empty();
	});

	$('#registry-evaluation-modal').on('shown.bs.modal', function () {
		$('#field-student-no-eval').val('').focus();
		$("#field-course").val('');
	});

	$('#registry-prospectus-modal').on('hidden.bs.modal', function () {
		$(".error-container").empty();
		$('#form-registrar-prospectus')[0].reset();
		$("#form-group-student-no-pros").removeClass('has-error pmd-textfield-floating-label-completed');
		$("#form-group-course-pros").removeClass('has-error pmd-textfield-floating-label-completed');
	});

	$('#registry-prospectus-modal').on('shown.bs.modal', function () {
		$('#field-student-no-pros').focus();
	});

	$("#form-user").submit(function (event) {
		event.preventDefault();
		$("#form-group-username").removeClass('has-error');
		$("#form-group-new-password").removeClass('has-error');
		$("#form-group-confirm-new-password").removeClass('has-error');
		$("#form-group-usertype").removeClass('has-error');
		$("#form-group-first-name").removeClass('has-error');
		$("#form-group-mid-name").removeClass('has-error');
		$("#form-group-last-name").removeClass('has-error');
		$(".error-container").empty();
		$(".user-change-password-complete").empty();
		var url = window.location.protocol + '//' + window.location.host + '/eleven/admin/user/validate_' + $('#form-type').val();
		// var url = window.location.protocol + '//' + 'eleven.cs/admin/user/validate_' + $('#form-type').val();
		var method = 'POST';
		var data = $(this).serialize();
		$.ajax({
			url: url,
			type: method,
			dataType: 'json',
			data: data,
		}).done(function (data) {
			if (data.msg == 'error') {
				if (data.last_name) {
					$("#form-group-last-name").addClass('has-error');
					$("#error-last-name").empty().append(data.last_name).css('visibility', 'visible');
					$("#last-name").focus();
				}
				if (data.mid_name) {
					$("#form-group-mid-name").addClass('has-error');
					$("#error-mid-name").empty().append(data.mid_name).css('visibility', 'visible');
					$("#mid-name").focus();
				}
				if (data.first_name) {
					$("#form-group-first-name").addClass('has-error');
					$("#error-first-name").empty().append(data.first_name).css('visibility', 'visible');
					$("#first-name").focus();
				}
				if (data.confirm_new_password) {
					$("#form-group-confirm-new-password").addClass('has-error');
					$("#error-confirm-new-password").empty().append(data.confirm_new_password).css('visibility', 'visible');
					$("#confirm-new-password").focus();
				}
				if (data.new_password) {
					$("#form-group-new-password").addClass('has-error');
					$("#error-new-password").empty().append(data.new_password).css('visibility', 'visible');
					$("#new-password").focus();
				}
				if (data.usertype) {
					$("#form-group-usertype").addClass('has-error');
					$("#error-usertype").empty().append(data.usertype).css('visibility', 'visible');
				}
				if (data.username) {
					$("#form-group-username").addClass('has-error');
					$("#error-username").empty().append(data.username).css('visibility', 'visible');
					$("#username").focus();
				}
			} else {
				$("#form-user")[0].reset();
				$("#user-modal").modal('hide');
				usersDataTable.ajax.reload();
				usersDataTable.one('draw', function () {
					$("#" + data.id).empty().append(data.update);
					$("#" + data.username).empty().append(data.new);
				});
				if (data.new) {
					$("#eleven-snackbar").empty().append('New user account added!').addClass('show');
					setTimeout(function () { $("#eleven-snackbar").removeClass('show'); }, 3000);
				} else {
					$("#eleven-snackbar").empty().append('Update successful!').addClass('show');
					setTimeout(function () { $("#eleven-snackbar").removeClass('show'); }, 3000);
				}
			}
		}).fail(function (data) {
			alert('no response');
		});
	});

	$('#form-student-grade').submit(function (event) {
		event.preventDefault();
		$("#form-group-student-no").removeClass('has-error');
		$(".error-container").empty();
		var url = window.location.protocol + '//' + window.location.host + '/eleven/faculty/grades/validate_student_info';
		var method = 'POST';
		var data = $(this).serialize();
		// alert(data);
		$.ajax({
			url: url,
			type: method,
			dataType: 'json',
			data: data,
		}).done(function (data) {
			if (data.msg == 'error') {
				if (data.student_no) {
					$("#form-group-student-no").addClass('has-error');
					$("#error-student-no").empty().append(data.student_no).css('visibility', 'visible');
					$("#student-no").focus();
				}
			} else if (data.msg == 'success') {
				// alert(data.year);
				window.location.replace(window.location.protocol + '//' + window.location.host + '/eleven/faculty/grades/view_student_grades/' + data.term + '/' + data.year + '/' + data.student_no);
			} else {
				$("#form-group-student-no").addClass('has-error');
				$("#error-no-match").empty().append(data.msg).css('visibility', 'visible');
			}
		});
	});

	$(document).on("click", "#change-status", function () {
		// event.preventDefault();
		var url = window.location.protocol + '//' + window.location.host + '/eleven/admin/user/change_status';
		// var url = window.location.protocol + '//' + 'eleven.cs/admin/user/change_status';
		var method = 'POST';
		var data = { id: $(this).data('id'), status: $(this).data('status') }
		$.ajax({
			url: url,
			type: method,
			dataType: 'json',
			data: data,
		}).done(function (data) {
			if (data.msg == 'error') {
				alert('error');
			} else {
				usersDataTable.ajax.reload();
			}
		}).fail(function (data) {
			alert('no response');
		});
	});

	$(document).on("click", "#update-grade", function (data) {
		// alert($(this).data("student-no"));
		$(".error-container").empty();
		$("#form-group-final-grade").removeClass('has-error');
		$("#form-registrar-grade")[0].reset();
		// var $formType = $(this).data("form-type");
		var $student_no = $(this).data("student-no");
		var $subject_code = $(this).data("subject-code");
		var $description = $(this).data("description");
		var $final_grade = $(this).data("final-grade");
		// $('#update-grade-modal-title').text('Update Grade');
		// $("#form-update-grade").val($formType);
		$("#registrar-student-no").val($student_no);
		$("#form-group-subject-code").addClass('pmd-textfield-floating-label-completed');
		$("#form-group-description").addClass('pmd-textfield-floating-label-completed');
		$("#registrar-subject-code").val($subject_code);
		$("#field-subject-code").val($subject_code).attr('disabled', 'disabled');
		$("#field-description").val($description).attr('disabled', 'disabled');
		$("#field-final-grade").val($final_grade);
		$("#btn-submit-grade").val('Save Changes');
	});

	$("#form-registrar-grade").submit(function (event) {
		event.preventDefault();
		var url = window.location.protocol + '//' + window.location.host + '/eleven/registrar/records/validate_registrar_grade';
		// var url = window.location.protocol + '//' + 'eleven.cs/registrar/records/validate_registrar_grade';
		var method = 'POST';
		var data = $(this).serialize();
		// alert(data);
		$.ajax({
			url: url,
			type: method,
			dataType: 'json',
			data: data,
		}).done(function (data) {
			if (data.msg == 'error') {
				$("#form-group-final-grade").addClass('has-error');
				$("#error-final-grade").empty().append(data.registrar_final_grade).css('visibility', 'visible');
				$("#field-final-grade").focus();
			} else {
				$("#registry-grades-modal").modal('hide');
				$("#eleven-snackbar").empty().append('Student record has been successfully updated!').addClass('show');
				setTimeout(function () { $("#eleven-snackbar").removeClass('show'); }, 3000);
				registryDataTable.ajax.reload();
			}
		});

	});

	$("#form-registrar-evaluation").submit(function (event) {
		event.preventDefault();
		$("#form-group-course").removeClass('has-error');
		$("#form-group-student-no-eval").removeClass('has-error');
		$(".error-container").empty();
		var url = window.location.protocol + '//' + window.location.host + '/eleven/registrar/evaluation/validate_registrar_evaluation';
		// var url = window.location.protocol + '//' + 'eleven.cs/registrar/evaluation/validate_registrar_evaluation';
		var method = 'POST';
		var data = $(this).serialize();
		$.ajax({
			url: url,
			type: method,
			dataType: 'json',
			data: data,
		}).done(function (data) {
			if (data.msg == 'error') {
				if (data.course) {
					$("#form-group-course").addClass('has-error');
					$("#error-course").empty().append(data.course).css('visibility', 'visible');
					$("#field-course").focus();
				}
				if (data.student_no) {
					$("#form-group-student-no-eval").addClass('has-error');
					$("#error-student-no-eval").empty().append(data.student_no).css('visibility', 'visible');
					$("#field-student-no-eval").focus();
				}
			}
			if (data.msg == 'no_match') {
				$("#error-both").empty().append(data.no_match_error).css('visibility', 'visible');
			}
			if (data.msg == 'success') {
				window.location.replace(window.location.protocol + '//' + window.location.host + '/eleven/registrar/evaluation/view/' + data.course + '/' + data.student_no_eval);
				// window.location.replace( window.location.protocol + '//' + 'eleven.cs/registrar/evaluation/view/' + data.course + '/' + data.student_no_eval);
			}
		});
	});

	$("#form-registrar-prospectus").submit(function (event) {
		event.preventDefault();
		$("#form-group-course-pros").removeClass('has-error');
		$("#form-group-student-no-pros").removeClass('has-error');
		$(".error-container").empty();
		var url = window.location.protocol + '//' + window.location.host + '/eleven/registrar/evaluation/validate_registrar_prospectus';
		// var url = window.location.protocol + '//' + 'eleven.cs/registrar/evaluation/validate_registrar_prospectus';
		var method = 'POST';
		var data = $(this).serialize();
		$.ajax({
			url: url,
			type: method,
			dataType: 'json',
			data: data,
		}).done(function (data) {
			if (data.msg == 'error') {
				if (data.course_pros) {
					$("#form-group-course-pros").addClass('has-error');
					$("#error-course-pros").empty().append(data.course_pros).css('visibility', 'visible');
					$("#field-course-pros").focus();
				}
				if (data.student_no_pros) {
					$("#form-group-student-no-pros").addClass('has-error');
					$("#error-student-no-pros").empty().append(data.student_no_pros).css('visibility', 'visible');
					$("#field-student-no-pros").focus();
				}
			}
			if (data.msg == 'no_match') {
				$("#error-both-pros").empty().append(data.no_match_error).css('visibility', 'visible');
			}
			if (data.msg == 'success') {
				window.location.replace(window.location.protocol + '//' + window.location.host + '/eleven/registrar/records/show_records/' + data.course_pros + '/' + data.student_no_pros);
				// window.location.replace( window.location.protocol + '//' + 'eleven.cs/registrar/records/show_records/' + data.course_pros + '/' + data.student_no_pros);
			}
		});
	});

	$(".qr-cam").click(function () {
		$(this).css('opacity', 1);
		$(".qr-img").css('opacity', 0.2);
	});

	$(".qr-img").click(function () {
		$(this).css('opacity', 1);
		$(".qr-cam").css('opacity', 0.2);
	});

	$(document).on("click", "#auth-subject", function (event) {
		event.preventDefault();
		var url = window.location.protocol + '//' + window.location.host + '/eleven/registrar/evaluation/auth_subject';
		var method = 'POST';
		var data = { student_no: $(this).data('student-no'), student_course: $(this).data('student-course'), subject_code: $(this).data('subject-code') }
		$.ajax({
			url: url,
			type: method,
			dataType: 'json',
			data: data,
		}).always(function (data) {
			registryDataTable.ajax.reload();
		});
	});

	$(document).on("keyup", "#student-no", function() {
		var query = $(this).val();
		if (query !== '') {
			$.ajax({
				url: window.location.protocol + '//' + window.location.host + '/eleven/registrar/records/get_studentlist',
				type: 'POST',
				data: { studLastname: query },
			}).done(function (data) {
					$("#student-list").empty().append(data);
			});
		}
	});

	$(document).on("keyup", "#field-student-no-eval", function() {
		var query = $(this).val();
		if (query !== '') {
			$.ajax({
				url: window.location.protocol + '//' + window.location.host + '/eleven/registrar/records/get_studentlist',
				type: 'POST',
				data: { studLastname: query },
			}).done(function (data) {
					$("#student-list-eval").empty().append(data);
			});
		}
	});

	$(document).on("click", ".student-datalist", function() {
		var studentNo = $(this).data('student-no');
		$("#student-no").empty().val(studentNo);
		$("#student-list").empty();
		$("#field-student-no-eval").empty().val(studentNo);
		$("#student-list-eval").empty();
	});

	// $(document).on("click", ".student-datalist-eval", function() {
	// 	var studentNo = $(this).data('student-no');
	// 	$("#field-student-no-eval").empty().val(studentNo);
	// 	$("#student-list-eval").empty();
	// });

	$(document).on("submit", "#import_data", function(e) {
		e.preventDefault();
		var excelFile = $("#file").val();
		// alert($("#file").val());
		$.ajax({
			url: window.location.protocol + '//' + window.location.host + '/eleven/faculty/gradesheets/upload_excel',
			type: 'POST',
			dataType: 'json',
			data: { excel_file: excelFile }
		}).done(function(data) {
			if (data.msg == 'success') {
				$("#file").val('');
				$("#eleven-snackbar").empty().append('Grade Sheet has been successfully uploaded!').addClass('show');
				setTimeout(function () { $("#eleven-snackbar").removeClass('show'); }, 3000);
				gradesheetsDataTable.ajax.reload();
			} else if (data.msg == 'exist') {
				$("#eleven-snackbar").empty().append('Grade Sheet already exist! Please upload another file.').addClass('show');
				setTimeout(function () { $("#eleven-snackbar").removeClass('show'); }, 3000);
			}
		});
	});

	$(document).on("click", "#btn-dt-leclab", function(e) {
		$(".dts").removeClass('dts-show');
		$("#dt-leclab").addClass('dts-show');
		gradesheetLecLabDataTable.ajax.reload();
	});

	$(document).on("click", "#btn-dt-lec", function(e) {
		$(".dts").removeClass('dts-show');
		$("#dt-lec").addClass('dts-show');
		gradesheetLecDataTable.ajax.reload();
	});

	$(document).on("click", "#btn-dt-lab", function(e) {
		$(".dts").removeClass('dts-show');
		$("#dt-lab").addClass('dts-show');
		gradesheetLabDataTable.ajax.reload();
	});

	$(document).on("click", "#btn-grades", function(e) {
		e.preventDefault();
		$("#dd-year").empty();
		$("#dd-term").empty();
		$.ajax({
			url: window.location.protocol + '//' + window.location.host + '/eleven/faculty/grades/get_terms_years',
			type: 'POST',
			dataType: 'json'
		}).done(function(data) {
			if (data.msg == 'success') {
				// alert(data.years[0]);
				for (var index = 0; index < data.years.length; index++) {
					if (data.years[index] != null) {
						$("#dd-year").append('<option value="' + data.years[index] + '">' + data.years[index] + '</option>');
					}
				}
				for (var index = 0; index < data.terms.length; index++) {
					if (data.terms[index] != null) {
						$("#dd-term").append('<option value="' + data.terms[index] + '">' + data.terms[index] + '</option>');
					}
				}
			}
		});
	});

	$(document).on("change", "#dd-course", function(e) {
		e.preventDefault();
		var course = $("#dd-course").val();
		$("#records-datatable").data('course', course);
		recordsDataTable.ajax.reload();
	});

	// $("#form-next-subjects")[0].reset();

	$(document).on("click", "#check-all-next-subjects", function() {
		$(".next-subjects-checkbox").prop("checked", !$(".next-subjects-checkbox").prop("checked"));
		$(this).prop("checked", $(".next-subjects-checkbox").is(':checked'));
	});

	$(document).on("click", "#check-all-prospectus-subjects", function() {
		$(".prospectus-checkbox").prop("checked", !$(".prospectus-checkbox").prop("checked"));
		$(this).prop("checked", $(".prospectus-checkbox").is(':checked'));
	});

	$(document).on("click", "#btn-print-next-subjects", function() {
		window.print();
		// alert('print');
	});

	// $("#next-subjects-datatable").load(function() {
	// 	window.print();
	// });

	if ($("#next-subjects-datatable").length) {
		window.print();
	}

	if ($("#prospectus-checked-datatable").length) {
		window.print();
	}

});