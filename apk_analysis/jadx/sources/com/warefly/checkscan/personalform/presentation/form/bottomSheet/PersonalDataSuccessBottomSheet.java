package com.warefly.checkscan.personalform.presentation.form.bottomSheet;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.personalform.databinding.BottomSheetPersonalDataSaveSuccessBinding;
import com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormFragment;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.p37;
import defpackage.u66;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class PersonalDataSuccessBottomSheet extends BaseBottomSheetDialog<BottomSheetPersonalDataSaveSuccessBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final u66 d;
    public final PersonalDataFormFragment.f e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PersonalDataSuccessBottomSheet personalDataSuccessBottomSheet = PersonalDataSuccessBottomSheet.this;
            personalDataSuccessBottomSheet.e.invoke(personalDataSuccessBottomSheet.d.e);
            personalDataSuccessBottomSheet.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(PersonalDataSuccessBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalDataSuccessBottomSheet(Context context, u66 u66Var, PersonalDataFormFragment.f fVar) {
        super(context, R.style.BottomSheetDialogTheme);
        u66Var.getClass();
        this.d = u66Var;
        this.e = fVar;
        this.f = new ud9(BottomSheetPersonalDataSaveSuccessBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        BottomSheetPersonalDataSaveSuccessBinding bottomSheetPersonalDataSaveSuccessBinding = (BottomSheetPersonalDataSaveSuccessBinding) ud9Var.d;
        p37 p37VarD = com.bumptech.glide.a.d(getContext());
        u66 u66Var = this.d;
        p37VarD.h(u66Var.a).L(bottomSheetPersonalDataSaveSuccessBinding.ivLogo);
        bottomSheetPersonalDataSaveSuccessBinding.tvTitle.setText(u66Var.b);
        bottomSheetPersonalDataSaveSuccessBinding.tvDescription.setText(u66Var.c);
        TextView textView = bottomSheetPersonalDataSaveSuccessBinding.btnAction;
        textView.setText(u66Var.d);
        textView.setOnClickListener(new lb7(new a()));
    }
}
