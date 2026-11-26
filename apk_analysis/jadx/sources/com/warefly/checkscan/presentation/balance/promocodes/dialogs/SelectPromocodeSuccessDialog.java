package com.warefly.checkscan.presentation.balance.promocodes.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogSelectPromocodeSuccessBinding;
import com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.h37;
import defpackage.is7;
import defpackage.j59;
import defpackage.jm7;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.p37;
import defpackage.pl2;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectPromocodeSuccessDialog extends BaseBottomSheetDialog<DialogSelectPromocodeSuccessBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final jm7.b d;
    public final SelectPromocodePresenter e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SelectPromocodeSuccessDialog selectPromocodeSuccessDialog = SelectPromocodeSuccessDialog.this;
            selectPromocodeSuccessDialog.e.onPromocodeCopyClicked(selectPromocodeSuccessDialog.d.d);
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
            SelectPromocodeSuccessDialog selectPromocodeSuccessDialog = SelectPromocodeSuccessDialog.this;
            selectPromocodeSuccessDialog.dismiss();
            SelectPromocodePresenter selectPromocodePresenter = selectPromocodeSuccessDialog.e;
            jm7.b bVar = selectPromocodeSuccessDialog.d;
            selectPromocodePresenter.onPromocodeUseClicked(bVar.f, bVar.d);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(SelectPromocodeSuccessDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogSelectPromocodeSuccessBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectPromocodeSuccessDialog(Context context, jm7.b bVar, SelectPromocodePresenter selectPromocodePresenter) {
        super(context, R.style.BottomSheetDialogTheme);
        bVar.getClass();
        this.d = bVar;
        this.e = selectPromocodePresenter;
        this.f = new ud9(DialogSelectPromocodeSuccessBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogSelectPromocodeSuccessBinding dialogSelectPromocodeSuccessBinding = (DialogSelectPromocodeSuccessBinding) ud9Var.d;
        p37 p37VarD = com.bumptech.glide.a.d(getContext());
        jm7.b bVar = this.d;
        ((h37) p37VarD.h(bVar.a).r(is7.b(pl2.d(16.0f), ContextCompat.getColor(getContext(), R.color.almostThereMoon)))).L(dialogSelectPromocodeSuccessBinding.ivLogo);
        dialogSelectPromocodeSuccessBinding.tvTitle.setText(bVar.b);
        dialogSelectPromocodeSuccessBinding.tvDescription.setText(bVar.c);
        dialogSelectPromocodeSuccessBinding.tvPromocode.setText(bVar.d);
        TextView textView = dialogSelectPromocodeSuccessBinding.btnCopyPromocode;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
        TextView textView2 = dialogSelectPromocodeSuccessBinding.btnAction;
        textView2.setText(bVar.e);
        textView2.setOnClickListener(new lb7(new b()));
    }
}
