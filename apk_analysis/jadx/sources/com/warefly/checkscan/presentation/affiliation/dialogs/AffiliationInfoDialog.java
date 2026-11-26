package com.warefly.checkscan.presentation.affiliation.dialogs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogAffiliationInfoBinding;
import defpackage.bs6;
import defpackage.e87;
import defpackage.gh4;
import defpackage.h37;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.pl2;
import defpackage.s37;
import defpackage.s81;
import defpackage.t81;
import defpackage.ud9;
import defpackage.uq2;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class AffiliationInfoDialog extends BaseBottomSheetDialog<DialogAffiliationInfoBinding> {
    public static final /* synthetic */ ze4<Object>[] e;
    public final ud9 d;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AffiliationInfoDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(AffiliationInfoDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogAffiliationInfoBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
    }

    public AffiliationInfoDialog(Context context) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = new ud9(DialogAffiliationInfoBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = e[0];
        ud9 ud9Var = this.d;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogAffiliationInfoBinding dialogAffiliationInfoBinding = (DialogAffiliationInfoBinding) ud9Var.d;
        h37<Drawable> h37VarF = com.bumptech.glide.a.e(dialogAffiliationInfoBinding.getRoot()).f(Integer.valueOf(R.drawable.ic_affiliation_banner));
        h37VarF.getClass();
        ((h37) h37VarF.A(uq2.c, new s81())).b(new s37().D(new t81(), new e87(pl2.e(16)))).L(dialogAffiliationInfoBinding.ivBanner);
        TextView textView = dialogAffiliationInfoBinding.btnClose;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }
}
