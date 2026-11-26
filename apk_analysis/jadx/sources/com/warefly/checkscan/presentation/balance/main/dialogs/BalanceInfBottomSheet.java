package com.warefly.checkscan.presentation.balance.main.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogAssignmentBinding;
import defpackage.a40;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.sx3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.x61;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class BalanceInfBottomSheet extends BaseBottomSheetDialog<DialogAssignmentBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final a40 d;
    public final ll3<j59> e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ a40.a f;
        public final /* synthetic */ BalanceInfBottomSheet g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(a40.a aVar, BalanceInfBottomSheet balanceInfBottomSheet) {
            super(1);
            this.f = aVar;
            this.g = balanceInfBottomSheet;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            String str = this.f.b;
            BalanceInfBottomSheet balanceInfBottomSheet = this.g;
            if (str != null) {
                balanceInfBottomSheet.openUrl(str);
            }
            balanceInfBottomSheet.e.invoke();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ a40.a f;
        public final /* synthetic */ BalanceInfBottomSheet g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(a40.a aVar, BalanceInfBottomSheet balanceInfBottomSheet) {
            super(1);
            this.f = aVar;
            this.g = balanceInfBottomSheet;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            String str = this.f.b;
            BalanceInfBottomSheet balanceInfBottomSheet = this.g;
            if (str != null) {
                balanceInfBottomSheet.openUrl(str);
            }
            balanceInfBottomSheet.e.invoke();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(BalanceInfBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BalanceInfBottomSheet(Context context, a40 a40Var, ll3<j59> ll3Var) {
        super(context, R.style.BottomSheetDialogTheme);
        a40Var.getClass();
        this.d = a40Var;
        this.e = ll3Var;
        this.f = new ud9(DialogAssignmentBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogAssignmentBinding dialogAssignmentBinding = (DialogAssignmentBinding) ud9Var.d;
        TextView textView = dialogAssignmentBinding.tvTitle;
        a40 a40Var = this.d;
        textView.setText(a40Var.a);
        TextView textView2 = dialogAssignmentBinding.tvDescription;
        int i = sx3.a;
        textView2.setText(sx3.a(a40Var.b));
        textView2.setMovementMethod(x61.a);
        Object obj = a40Var.f;
        if (obj == null) {
            obj = a40Var.c;
        }
        ImageView imageView = dialogAssignmentBinding.ivLogo;
        imageView.getClass();
        imageView.setVisibility(obj != null ? 0 : 8);
        com.bumptech.glide.a.d(dialogAssignmentBinding.getRoot().getContext()).g(obj).L(dialogAssignmentBinding.ivLogo);
        a40.a aVar = a40Var.d;
        dialogAssignmentBinding.btnAction.setText(aVar.a);
        TextView textView3 = dialogAssignmentBinding.btnAction;
        textView3.getClass();
        textView3.setOnClickListener(new lb7(new a(aVar, this)));
        a40.a aVar2 = a40Var.e;
        if (aVar2 != null) {
            TextView textView4 = dialogAssignmentBinding.btnSecondAction;
            textView4.getClass();
            textView4.setVisibility(0);
            dialogAssignmentBinding.btnSecondAction.setText(aVar2.a);
            TextView textView5 = dialogAssignmentBinding.btnSecondAction;
            textView5.getClass();
            textView5.setOnClickListener(new lb7(new b(aVar2, this)));
        }
    }
}
