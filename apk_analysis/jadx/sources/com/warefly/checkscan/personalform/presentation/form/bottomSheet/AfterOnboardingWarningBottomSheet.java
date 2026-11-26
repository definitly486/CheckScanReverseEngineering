package com.warefly.checkscan.personalform.presentation.form.bottomSheet;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.personalform.databinding.BottomSheetAfterOnboardingWarningBinding;
import com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormFragment;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.p37;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class AfterOnboardingWarningBottomSheet extends BaseBottomSheetDialog<BottomSheetAfterOnboardingWarningBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final com.warefly.checkscan.personalform.presentation.form.bottomSheet.a d;
    public final PersonalDataFormFragment.e e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AfterOnboardingWarningBottomSheet.this.dismiss();
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
            AfterOnboardingWarningBottomSheet afterOnboardingWarningBottomSheet = AfterOnboardingWarningBottomSheet.this;
            afterOnboardingWarningBottomSheet.dismiss();
            PersonalDataFormFragment.e eVar = afterOnboardingWarningBottomSheet.e;
            com.warefly.checkscan.personalform.presentation.form.bottomSheet.a.b bVar = afterOnboardingWarningBottomSheet.d.e;
            eVar.invoke(Boolean.valueOf(bVar != null ? bVar.b : true));
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(AfterOnboardingWarningBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AfterOnboardingWarningBottomSheet(Context context, com.warefly.checkscan.personalform.presentation.form.bottomSheet.a aVar, PersonalDataFormFragment.e eVar) {
        super(context, R.style.BottomSheetDialogTheme);
        aVar.getClass();
        this.d = aVar;
        this.e = eVar;
        this.f = new ud9(BottomSheetAfterOnboardingWarningBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        BottomSheetAfterOnboardingWarningBinding bottomSheetAfterOnboardingWarningBinding = (BottomSheetAfterOnboardingWarningBinding) ud9Var.d;
        p37 p37VarD = com.bumptech.glide.a.d(getContext());
        com.warefly.checkscan.personalform.presentation.form.bottomSheet.a aVar = this.d;
        String str = aVar.c;
        com.warefly.checkscan.personalform.presentation.form.bottomSheet.a.b bVar = aVar.e;
        p37VarD.h(str).L(bottomSheetAfterOnboardingWarningBinding.ivLogo);
        bottomSheetAfterOnboardingWarningBinding.tvTitle.setText(aVar.a);
        bottomSheetAfterOnboardingWarningBinding.tvDescription.setText(aVar.b);
        TextView textView = bottomSheetAfterOnboardingWarningBinding.btnAction;
        com.warefly.checkscan.personalform.presentation.form.bottomSheet.a.C0158a c0158a = aVar.d;
        textView.setText(c0158a != null ? c0158a.a : null);
        textView.setVisibility(c0158a != null ? 0 : 8);
        textView.setOnClickListener(new lb7(new a()));
        TextView textView2 = bottomSheetAfterOnboardingWarningBinding.btnSecondary;
        textView2.setText(bVar != null ? bVar.a : null);
        textView2.setVisibility(bVar == null ? 8 : 0);
        textView2.setOnClickListener(new lb7(new b()));
    }
}
