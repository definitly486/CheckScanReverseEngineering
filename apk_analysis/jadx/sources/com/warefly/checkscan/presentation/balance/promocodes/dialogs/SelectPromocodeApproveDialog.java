package com.warefly.checkscan.presentation.balance.promocodes.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogSelectPromocodeApproveBinding;
import com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter;
import defpackage.bs6;
import defpackage.em7;
import defpackage.gh4;
import defpackage.h37;
import defpackage.is7;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectPromocodeApproveDialog extends BaseBottomSheetDialog<DialogSelectPromocodeApproveBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final em7 d;
    public final SelectPromocodePresenter e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SelectPromocodeApproveDialog selectPromocodeApproveDialog = SelectPromocodeApproveDialog.this;
            selectPromocodeApproveDialog.dismiss();
            selectPromocodeApproveDialog.e.onConfirmExchangeClicked(selectPromocodeApproveDialog.d.a);
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SelectPromocodeApproveDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(SelectPromocodeApproveDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogSelectPromocodeApproveBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectPromocodeApproveDialog(Context context, em7 em7Var, SelectPromocodePresenter selectPromocodePresenter) {
        super(context, R.style.BottomSheetDialogTheme);
        em7Var.getClass();
        this.d = em7Var;
        this.e = selectPromocodePresenter;
        this.f = new ud9(DialogSelectPromocodeApproveBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogSelectPromocodeApproveBinding dialogSelectPromocodeApproveBinding = (DialogSelectPromocodeApproveBinding) ud9Var.d;
        TextView textView = dialogSelectPromocodeApproveBinding.tvTitle;
        em7 em7Var = this.d;
        textView.setText(em7Var.c);
        dialogSelectPromocodeApproveBinding.tvDescription.setText(em7Var.d);
        ((h37) com.bumptech.glide.a.d(getContext()).h(em7Var.b).r(is7.a(ContextCompat.getColor(getContext(), R.color.almostThereMoon)))).L(dialogSelectPromocodeApproveBinding.ivWarning);
        TextView textView2 = dialogSelectPromocodeApproveBinding.btnPrimary;
        textView2.setText(em7Var.f);
        textView2.setOnClickListener(new lb7(new a()));
        TextView textView3 = dialogSelectPromocodeApproveBinding.btnSecondary;
        textView3.setText(em7Var.e);
        textView3.setOnClickListener(new lb7(new b()));
    }
}
