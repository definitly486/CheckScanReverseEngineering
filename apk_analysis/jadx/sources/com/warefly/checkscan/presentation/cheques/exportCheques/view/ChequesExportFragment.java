package com.warefly.checkscan.presentation.cheques.exportCheques.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.databinding.FragmentChequesExportBinding;
import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerDialog;
import com.warefly.checkscan.presentation.cheques.exportCheques.presenter.ChequesExportPresenter;
import com.warefly.checkscan.ui.DoneDialog;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.i3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.lb7;
import defpackage.le9;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.oi9;
import defpackage.ol4;
import defpackage.qh1;
import defpackage.uf3;
import defpackage.w8;
import defpackage.x07;
import defpackage.xd1;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequesExportFragment extends FlowFragment<FragmentChequesExportBinding> implements ChequesExportView {
    public static final /* synthetic */ ze4<Object>[] n;
    public final int j = R.layout.fragment_cheques_export;
    public final ol4 k = new ol4(FragmentChequesExportBinding.class);
    public DoneDialog l;
    public LightDatePickerDialog m;
    public ChequesExportPresenter presenter;

    public static final class a extends gh4 implements bm3<String, Bundle, j59> {
        public a() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            String str2 = str;
            Bundle bundle2 = bundle;
            str2.getClass();
            bundle2.getClass();
            ChequesExportFragment chequesExportFragment = ChequesExportFragment.this;
            FragmentKt.clearFragmentResult(chequesExportFragment, str2);
            if (aa4.e(bundle2.getString(str2), "DONE_DIALOG_REQUEST_KEY")) {
                chequesExportFragment.q().onBackClicked();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ FragmentChequesExportBinding f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(FragmentChequesExportBinding fragmentChequesExportBinding) {
            super(1);
            this.f = fragmentChequesExportBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            this.f.groupExportDescription.setVisibility(8);
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
            ChequesExportFragment.this.q().unloadCheques();
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
            ChequesExportFragment.this.q().onBackClicked();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(ChequesExportFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentChequesExportBinding;", 0);
        x07.a.getClass();
        n = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public final void assignUserEmail(String str) {
        str.getClass();
        EditText editText = p().tilExportEmail.getEditText();
        if (editText != null) {
            editText.setText(str);
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final void e(View view) {
        oi9.a(15, view, true);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.j;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        q().onBackClicked();
        return false;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentKt.setFragmentResultListener(this, "DONE_DIALOG_REQUEST_KEY", new a());
        FragmentChequesExportBinding fragmentChequesExportBindingP = p();
        ImageButton imageButton = fragmentChequesExportBindingP.btnCloseDescription;
        imageButton.getClass();
        imageButton.setOnClickListener(new lb7(new b(fragmentChequesExportBindingP)));
        TextView textView = fragmentChequesExportBindingP.btnSend;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c()));
        ImageView imageView = fragmentChequesExportBindingP.btnBackExport;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new d()));
        FragmentChequesExportBinding fragmentChequesExportBindingP2 = p();
        View view2 = fragmentChequesExportBindingP2.btnChooseDate;
        view2.getClass();
        view2.setOnClickListener(new lb7(new w8(this, 1)));
        TextInputEditText textInputEditText = fragmentChequesExportBindingP2.etEmail;
        textInputEditText.getClass();
        le9.a(textInputEditText, new qh1(this));
    }

    public final FragmentChequesExportBinding p() {
        return (FragmentChequesExportBinding) this.k.getValue(this, n[0]);
    }

    public final ChequesExportPresenter providePresenter() {
        return new ChequesExportPresenter((jf6) m2.c(jf6.class, e.e(this), null, null), (xd1) m2.c(xd1.class, e.e(this), null, null), (i3) m2.c(i3.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), n(), null));
    }

    public final ChequesExportPresenter q() {
        ChequesExportPresenter chequesExportPresenter = this.presenter;
        if (chequesExportPresenter != null) {
            return chequesExportPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public final void setDateRangeText(String str) {
        str.getClass();
        EditText editText = p().tilChooseDate.getEditText();
        if (editText != null) {
            editText.setText(str);
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public final void showDoneDialog() {
        DoneDialog doneDialog = this.l;
        if (doneDialog != null) {
            doneDialog.dismiss();
        }
        DoneDialog.a aVar = DoneDialog.d;
        String string = getString(R.string.export_cheques_dialog_tv_description);
        string.getClass();
        String string2 = getString(R.string.export_cheques_dialog_btn_ok);
        string2.getClass();
        aVar.getClass();
        DoneDialog doneDialog2 = new DoneDialog();
        doneDialog2.setArguments(BundleKt.bundleOf(new b36("DESCRIPTION_KEY", string), new b36("BUTTON_TEXT_KEY", string2), new b36("IMAGE_RESOURCE_KEY", null), new b36("SUB_DESCRIPTION_KEY", null), new b36("BUTTON_ACTION_KEY", "DONE_DIALOG_REQUEST_KEY"), new b36("BUTTON_BACKGROUND_KEY", null)));
        m(doneDialog2);
        this.l = doneDialog2;
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public final void showEnableButton(boolean z) {
        p().btnSend.setEnabled(z);
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public final void showFailDialog() {
        View view;
        Context context = getContext();
        if (context == null || (view = getView()) == null) {
            return;
        }
        Snackbar.make(context, view, getString(R.string.export_cheques_failed), -1).show();
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public final void showInvalidDateError(boolean z) {
        p().tilChooseDate.setError(z ? getString(R.string.til_export_choose_date_error) : null);
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView
    public final void showInvalidEmailError(boolean z) {
        p().tilExportEmail.setError(z ? getString(R.string.til_export_email_error) : null);
    }
}
