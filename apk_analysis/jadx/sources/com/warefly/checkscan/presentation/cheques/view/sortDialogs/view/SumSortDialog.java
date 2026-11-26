package com.warefly.checkscan.presentation.cheques.view.sortDialogs.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.SumSortDialogLayoutBinding;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.presenter.SumSortPresenter;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortDialog;
import defpackage.bd8;
import defpackage.bs6;
import defpackage.cd8;
import defpackage.dd8;
import defpackage.ed8;
import defpackage.fd8;
import defpackage.gd8;
import defpackage.lb7;
import defpackage.le9;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SumSortDialog extends BaseBottomSheetDialog<SumSortDialogLayoutBinding> implements SumSortView {
    public static final /* synthetic */ ze4<Object>[] f;
    public final ChequesFragment.m d;
    public final ud9 e;
    public SumSortPresenter presenter;

    static {
        bs6 bs6Var = new bs6(SumSortDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    public SumSortDialog(Context context, ChequesFragment.m mVar) {
        super(context, R.style.BottomSheetWithKeyboard);
        this.d = mVar;
        this.e = new ud9(SumSortDialogLayoutBinding.class, this);
    }

    public final SumSortDialogLayoutBinding e() {
        ze4<Object> ze4Var = f[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        return (SumSortDialogLayoutBinding) ud9Var.d;
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView
    public final void enableSortButton(boolean z) {
        e().btnShow.setEnabled(z);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SumSortDialogLayoutBinding sumSortDialogLayoutBindingE = e();
        sumSortDialogLayoutBindingE.btnClose.setOnClickListener(new View.OnClickListener() { // from class: ad8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ze4<Object>[] ze4VarArr = SumSortDialog.f;
                this.b.dismiss();
            }
        });
        sumSortDialogLayoutBindingE.btnShow.setOnClickListener(new bd8(this, 0));
        TextView textView = sumSortDialogLayoutBindingE.btnDiscard;
        textView.getClass();
        textView.setOnClickListener(new lb7(new cd8(sumSortDialogLayoutBindingE)));
        SumSortDialogLayoutBinding sumSortDialogLayoutBindingE2 = e();
        TextInputEditText textInputEditText = sumSortDialogLayoutBindingE2.etFrom;
        textInputEditText.getClass();
        le9.a(textInputEditText, new ed8(this));
        textInputEditText.addTextChangedListener(new dd8(this));
        TextInputEditText textInputEditText2 = sumSortDialogLayoutBindingE2.etUnder;
        textInputEditText2.getClass();
        le9.a(textInputEditText2, new gd8(this));
        textInputEditText2.addTextChangedListener(new fd8(textInputEditText2));
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView
    public final void onSort(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.d.invoke(str, str2);
        dismiss();
    }

    public final SumSortPresenter providePresenter() {
        return new SumSortPresenter();
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView
    public final void showEndSumError(boolean z) {
        e().tilUnder.setError(z ? getContext().getString(R.string.sort_end_sum_error) : null);
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView
    public final void showStartSumError(boolean z) {
        e().tilFrom.setError(z ? getContext().getString(R.string.sort_start_sum_error) : null);
    }
}
