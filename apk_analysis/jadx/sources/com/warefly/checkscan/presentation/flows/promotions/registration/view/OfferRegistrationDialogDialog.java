package com.warefly.checkscan.presentation.flows.promotions.registration.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogOfferRegistrationBinding;
import com.warefly.checkscan.presentation.landing.view.LandingFragment;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class OfferRegistrationDialogDialog extends BaseBottomSheetDialog<DialogOfferRegistrationBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final LandingFragment.b d;
    public final ll3<j59> e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OfferRegistrationDialogDialog offerRegistrationDialogDialog = OfferRegistrationDialogDialog.this;
            offerRegistrationDialogDialog.d.invoke();
            offerRegistrationDialogDialog.dismiss();
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
            OfferRegistrationDialogDialog offerRegistrationDialogDialog = OfferRegistrationDialogDialog.this;
            offerRegistrationDialogDialog.e.invoke();
            offerRegistrationDialogDialog.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(OfferRegistrationDialogDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogOfferRegistrationBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfferRegistrationDialogDialog(Context context, LandingFragment.b bVar, ll3 ll3Var) {
        super(context, R.style.BottomSheetDialogTheme);
        ll3Var.getClass();
        this.d = bVar;
        this.e = ll3Var;
        this.f = new ud9(DialogOfferRegistrationBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogOfferRegistrationBinding dialogOfferRegistrationBinding = (DialogOfferRegistrationBinding) ud9Var.d;
        TextView textView = dialogOfferRegistrationBinding.btnConfirm;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
        TextView textView2 = dialogOfferRegistrationBinding.btnCancel;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new b()));
    }
}
