package com.warefly.checkscan.presentation.stock.view;

import android.content.Context;
import android.os.Bundle;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogAgreementStockBinding;
import com.warefly.checkscan.presentation.stock.presenter.AgreementPresenter;
import com.warefly.checkscan.presentation.stock.view.AgreementDialog;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.cl4;
import defpackage.jg4;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.nm4;
import defpackage.og4;
import defpackage.po4;
import defpackage.rb;
import defpackage.sb;
import defpackage.ud9;
import defpackage.v05;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class AgreementDialog extends BaseBottomSheetDialog<DialogAgreementStockBinding> implements AgreementView {
    public static final /* synthetic */ ze4<Object>[] g;
    public final String d;
    public final cl4 e;
    public final ud9 f;
    public AgreementPresenter presenter;

    public static final class a implements ll3<v05> {
        public a() {
        }

        /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, v05] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            jg4 jg4Var = AgreementDialog.this;
            return jg4Var instanceof og4 ? m2.c(v05.class, ((og4) jg4Var).getScope(), null, null) : jg4Var.b().c.d.e(x07.a(v05.class), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(AgreementDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogAgreementStockBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AgreementDialog(Context context, String str) {
        super(context, R.style.BottomSheetDialogTheme);
        str.getClass();
        this.d = str;
        this.e = nm4.a(po4.SYNCHRONIZED, new a());
        this.f = new ud9(DialogAgreementStockBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AgreementPresenter agreementPresenter = this.presenter;
        if (agreementPresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        agreementPresenter.onShown();
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        final DialogAgreementStockBinding dialogAgreementStockBinding = (DialogAgreementStockBinding) ud9Var.d;
        TextView textView = dialogAgreementStockBinding.btnBackAgreement;
        textView.getClass();
        textView.setOnClickListener(new lb7(new rb(this, 0)));
        dialogAgreementStockBinding.cbAgreement.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: qb
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                ze4<Object>[] ze4VarArr = AgreementDialog.g;
                compoundButton.getClass();
                dialogAgreementStockBinding.btnAgreementContinue.setEnabled(z);
            }
        });
        TextView textView2 = dialogAgreementStockBinding.btnAgreementContinue;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new sb(this, 0)));
    }

    public final AgreementPresenter providePresenter() {
        return new AgreementPresenter();
    }

    @Override // com.warefly.checkscan.presentation.stock.view.AgreementView
    public final void showAgreement() {
        v05 v05Var = (v05) this.e.getValue();
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        v05Var.a(((DialogAgreementStockBinding) ud9Var.d).cbAgreement, getContext().getString(R.string.agreement_dialog_text));
    }
}
