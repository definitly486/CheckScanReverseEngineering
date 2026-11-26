package com.warefly.checkscan.presentation.queue.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogRegistrationCardBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.hc9;
import defpackage.ic9;
import defpackage.j59;
import defpackage.kd;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class OfferCardDialog extends BaseBottomSheetDialog<DialogRegistrationCardBinding> {
    public static final /* synthetic */ ze4<Object>[] i;
    public final hc9 d;
    public final ic9 e;
    public final int f;
    public final int g;
    public final ud9 h;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            View view2 = view;
            view2.getClass();
            kd.j.b.c.C0271b.e.a();
            OfferCardDialog offerCardDialog = OfferCardDialog.this;
            offerCardDialog.d.onClick(view2);
            offerCardDialog.dismiss();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            View view2 = view;
            view2.getClass();
            kd.j.b.c.a.e.a();
            OfferCardDialog offerCardDialog = OfferCardDialog.this;
            offerCardDialog.e.onClick(view2);
            offerCardDialog.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(OfferCardDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogRegistrationCardBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
    }

    public OfferCardDialog(Context context, hc9 hc9Var, ic9 ic9Var, int i2, int i3) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = hc9Var;
        this.e = ic9Var;
        this.f = i2;
        this.g = i3;
        this.h = new ud9(DialogRegistrationCardBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = i[0];
        ud9 ud9Var = this.h;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogRegistrationCardBinding dialogRegistrationCardBinding = (DialogRegistrationCardBinding) ud9Var.d;
        TextView textView = dialogRegistrationCardBinding.tvTitle;
        int i2 = this.g;
        int i3 = this.f;
        textView.setText(i3 == 1 ? getContext().getString(i2) : getContext().getString(i2, Integer.valueOf(i3)));
        TextView textView2 = dialogRegistrationCardBinding.btnConfirm;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new a()));
        TextView textView3 = dialogRegistrationCardBinding.btnCancel;
        textView3.getClass();
        textView3.setOnClickListener(new lb7(new b()));
    }
}
