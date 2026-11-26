package com.warefly.checkscan.profile.presentation.main.dialogs;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.profile.databinding.DialogProfilePromocodeErrorBinding;
import defpackage.bs6;
import defpackage.hh1;
import defpackage.kd;
import defpackage.lb7;
import defpackage.m6;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfilePromocodeErrorBottomSheet extends BaseBottomSheetDialog<DialogProfilePromocodeErrorBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final boolean d;
    public final m6 e;
    public final ud9 f;

    static {
        bs6 bs6Var = new bs6(ProfilePromocodeErrorBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    public ProfilePromocodeErrorBottomSheet(Context context, boolean z, m6 m6Var) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = z;
        this.e = m6Var;
        this.f = new ud9(DialogProfilePromocodeErrorBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object>[] ze4VarArr = g;
        ze4<Object> ze4Var = ze4VarArr[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogProfilePromocodeErrorBinding dialogProfilePromocodeErrorBinding = (DialogProfilePromocodeErrorBinding) ud9Var.d;
        m6 m6Var = this.e;
        if (m6Var != null) {
            dialogProfilePromocodeErrorBinding.tvTitle.setText(m6Var.a);
            dialogProfilePromocodeErrorBinding.tvDescription.setText(m6Var.b);
            dialogProfilePromocodeErrorBinding.btnOk.setText(m6Var.c);
        }
        ze4<Object> ze4Var2 = ze4VarArr[0];
        ud9Var.getClass();
        ze4Var2.getClass();
        TextView textView = ((DialogProfilePromocodeErrorBinding) ud9Var.d).btnOk;
        textView.getClass();
        textView.setOnClickListener(new lb7(new hh1(this, 1)));
        if (this.d) {
            kd.a.j.g.e.a();
        } else {
            kd.a.f.C0227f.e.a();
        }
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: mm6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                if (this.b.d) {
                    kd.a.j.e.e.a();
                } else {
                    kd.a.f.e.e.a();
                }
            }
        });
    }
}
