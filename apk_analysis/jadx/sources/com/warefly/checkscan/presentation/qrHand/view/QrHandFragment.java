package com.warefly.checkscan.presentation.qrHand.view;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.os.BundleKt;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.DateValidatorPointBackward;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarBackIconBinding;
import com.warefly.checkscan.databinding.FragmentQrHandBinding;
import com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerDialog;
import com.warefly.checkscan.presentation.qrHand.presenter.QrHandPresenter;
import com.warefly.checkscan.presentation.qrHand.view.QrHandFragment;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bs6;
import defpackage.f93;
import defpackage.gh4;
import defpackage.iq2;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.uf3;
import defpackage.vc1;
import defpackage.x07;
import defpackage.y3;
import defpackage.yg1;
import defpackage.ze4;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public final class QrHandFragment extends BaseFragment<FragmentQrHandBinding> implements QrHandView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_qr_hand;
    public final ol4 g = new ol4(FragmentQrHandBinding.class);
    public MaterialDatePicker<Long> h;
    public InputTimePickerDialog i;
    public QrHandPresenter presenter;

    public final class a implements TextWatcher {
        public final f93 b;

        public a(f93 f93Var) {
            this.b = f93Var;
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            QrHandFragment.this.o().onTextChanged(charSequence, this.b);
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            QrHandFragment.this.o().onHelperClick();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            QrHandFragment.this.o().onDateClicked();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            QrHandFragment.this.o().onRequestCheque();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            QrHandFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(QrHandFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentQrHandBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    public static void p(TextInputLayout textInputLayout, String str, boolean z) {
        if (textInputLayout.isErrorEnabled() || z) {
            if (textInputLayout.isErrorEnabled() && z) {
                textInputLayout.setError(str);
                return;
            }
            if (textInputLayout.isErrorEnabled() && !z) {
                textInputLayout.setErrorEnabled(z);
            } else {
                if (textInputLayout.isErrorEnabled() || !z) {
                    return;
                }
                textInputLayout.setError(str);
                textInputLayout.setErrorEnabled(z);
            }
        }
    }

    public static void q(TextInputLayout textInputLayout, String str, boolean z) {
        if (textInputLayout.isHelperTextEnabled() && z) {
            return;
        }
        if (textInputLayout.isHelperTextEnabled() || z) {
            textInputLayout.setHelperText(str);
            textInputLayout.setHelperTextEnabled(z);
        }
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void changeFocusAndShowKeyboard() {
        TextInputEditText textInputEditText = n().etCheckSum;
        textInputEditText.postDelayed(new iq2(textInputEditText, 1), 50L);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleDateError(String str, boolean z) {
        str.getClass();
        TextInputLayout textInputLayout = n().tilDateTime;
        textInputLayout.getClass();
        p(textInputLayout, str, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleDateHelperTextEnable(boolean z) {
        TextInputLayout textInputLayout = n().tilDateTime;
        textInputLayout.getClass();
        String string = getString(R.string.qr_manual_date_time_helper_text);
        string.getClass();
        q(textInputLayout, string, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleFdError(String str, boolean z) {
        str.getClass();
        TextInputLayout textInputLayout = n().tilFd;
        textInputLayout.getClass();
        p(textInputLayout, str, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleFdHelperTextEnable(boolean z) {
        n().tvHintFd.setVisibility(0);
        TextInputLayout textInputLayout = n().tilFd;
        textInputLayout.getClass();
        String string = getString(R.string.qr_manual_fd_helper_text);
        string.getClass();
        q(textInputLayout, string, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleFnError(String str, boolean z) {
        str.getClass();
        TextInputLayout textInputLayout = n().tilFn;
        textInputLayout.getClass();
        p(textInputLayout, str, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleFnHelperTextEnable(boolean z) {
        n().tvHintFn.setVisibility(0);
        TextInputLayout textInputLayout = n().tilFn;
        textInputLayout.getClass();
        String string = getString(R.string.qr_manual_fn_helper_text);
        string.getClass();
        q(textInputLayout, string, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleFpError(String str, boolean z) {
        str.getClass();
        TextInputLayout textInputLayout = n().tilFp;
        textInputLayout.getClass();
        p(textInputLayout, str, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleFpHelperTextEnable(boolean z) {
        n().tvHintFp.setVisibility(0);
        TextInputLayout textInputLayout = n().tilFp;
        textInputLayout.getClass();
        String string = getString(R.string.qr_manual_fp_or_fpd_helper_text);
        string.getClass();
        q(textInputLayout, string, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleSendButton(boolean z) {
        n().btnAction.setEnabled(z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleSumError(String str, boolean z) {
        str.getClass();
        TextInputLayout textInputLayout = n().tilCheckSum;
        textInputLayout.getClass();
        p(textInputLayout, str, z);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void handleSumHelperTextEnable(boolean z) {
        n().tvHintSum.setVisibility(0);
        TextInputLayout textInputLayout = n().tilCheckSum;
        textInputLayout.getClass();
        String string = getString(R.string.qr_manual_sum_helper_text);
        string.getClass();
        q(textInputLayout, string, z);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackPressed();
        return false;
    }

    public final FragmentQrHandBinding n() {
        return (FragmentQrHandBinding) this.g.getValue(this, j[0]);
    }

    public final QrHandPresenter o() {
        QrHandPresenter qrHandPresenter = this.presenter;
        if (qrHandPresenter != null) {
            return qrHandPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentQrHandBinding fragmentQrHandBindingN = n();
        LayoutToolbarBackIconBinding layoutToolbarBackIconBinding = fragmentQrHandBindingN.toolbar;
        ImageView imageView = layoutToolbarBackIconBinding.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new e()));
        layoutToolbarBackIconBinding.tvHeader.setText(getString(R.string.qr_manual_type_title));
        AppCompatTextView appCompatTextView = fragmentQrHandBindingN.tvHelper;
        appCompatTextView.getClass();
        appCompatTextView.setOnClickListener(new lb7(new b()));
        TextInputEditText textInputEditText = fragmentQrHandBindingN.etDateTime;
        textInputEditText.getClass();
        textInputEditText.setOnClickListener(new lb7(new c()));
        AppCompatTextView appCompatTextView2 = fragmentQrHandBindingN.btnAction;
        appCompatTextView2.getClass();
        appCompatTextView2.setOnClickListener(new lb7(new d()));
        FragmentQrHandBinding fragmentQrHandBindingN2 = n();
        fragmentQrHandBindingN2.etDateTime.addTextChangedListener(new a(f93.a.a));
        fragmentQrHandBindingN2.etCheckSum.addTextChangedListener(new a(f93.h.a));
        fragmentQrHandBindingN2.etFn.addTextChangedListener(new a(f93.f.a));
        fragmentQrHandBindingN2.etFd.addTextChangedListener(new a(f93.e.a));
        fragmentQrHandBindingN2.etFp.addTextChangedListener(new a(f93.g.a));
        FragmentQrHandBinding fragmentQrHandBindingN3 = n();
        fragmentQrHandBindingN3.etCheckSum.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: bv6
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                ze4<Object>[] ze4VarArr = QrHandFragment.j;
                this.b.o().onFocusChanged(f93.h.a, z);
            }
        });
        fragmentQrHandBindingN3.etFn.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: cv6
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                ze4<Object>[] ze4VarArr = QrHandFragment.j;
                this.b.o().onFocusChanged(f93.f.a, z);
            }
        });
        fragmentQrHandBindingN3.etFd.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: dv6
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                ze4<Object>[] ze4VarArr = QrHandFragment.j;
                this.b.o().onFocusChanged(f93.e.a, z);
            }
        });
        fragmentQrHandBindingN3.etFp.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ev6
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                ze4<Object>[] ze4VarArr = QrHandFragment.j;
                this.b.o().onFocusChanged(f93.g.a, z);
            }
        });
        getChildFragmentManager().setFragmentResultListener("INPUT_TIME_PICKER_REQUEST_KEY", getViewLifecycleOwner(), new y3(this, 5));
    }

    public final QrHandPresenter providePresenter() {
        return new QrHandPresenter((uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (yg1) m2.c(yg1.class, defpackage.e.e(this), null, null), (Context) m2.c(Context.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void showDatePicker() {
        MaterialDatePicker<Long> materialDatePicker = this.h;
        if (materialDatePicker != null) {
            materialDatePicker.dismiss();
        }
        QrHandPresenter qrHandPresenterO = o();
        CalendarConstraints.Builder builder = new CalendarConstraints.Builder();
        Calendar calendar = Calendar.getInstance();
        calendar.set(2000, 0, 1);
        CalendarConstraints calendarConstraintsBuild = builder.setStart(calendar.getTimeInMillis()).setEnd(Calendar.getInstance().getTimeInMillis()).setValidator(DateValidatorPointBackward.now()).build();
        calendarConstraintsBuild.getClass();
        MaterialDatePicker<Long> materialDatePickerBuild = MaterialDatePicker.Builder.datePicker().setTheme(R.style.CheckscanDatePickerTheme).setCalendarConstraints(calendarConstraintsBuild).setSelection(Long.valueOf(MaterialDatePicker.todayInUtcMilliseconds())).build();
        final vc1 vc1Var = new vc1(qrHandPresenterO, 0);
        materialDatePickerBuild.addOnPositiveButtonClickListener(new MaterialPickerOnPositiveButtonClickListener() { // from class: uc1
            @Override // com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener
            public final void onPositiveButtonClick(Object obj) {
                vc1Var.invoke(obj);
            }
        });
        if (isAdded()) {
            materialDatePickerBuild.show(getChildFragmentManager(), "QrHandDatePicker");
        }
        this.h = materialDatePickerBuild;
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void showSelectedDate(String str) {
        str.getClass();
        FragmentQrHandBinding fragmentQrHandBindingN = n();
        fragmentQrHandBindingN.etDateTime.setText(str);
        fragmentQrHandBindingN.etDateTime.clearFocus();
        fragmentQrHandBindingN.tvHintDate.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public final void showTimePicker(int i, int i2) {
        InputTimePickerDialog inputTimePickerDialog = this.i;
        if (inputTimePickerDialog != null) {
            inputTimePickerDialog.dismiss();
        }
        InputTimePickerDialog.f.getClass();
        InputTimePickerDialog inputTimePickerDialog2 = new InputTimePickerDialog();
        inputTimePickerDialog2.setArguments(BundleKt.bundleOf(new b36("MAX_HOUR", Integer.valueOf(i)), new b36("MAX_MINUTE", Integer.valueOf(i2))));
        if (isAdded()) {
            inputTimePickerDialog2.show(getChildFragmentManager(), "QrHandTimePicker");
        }
        this.i = inputTimePickerDialog2;
    }
}
