package com.warefly.checkscan.shared.simpleInfoBottomSheet;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.shared.infoBottomSheet.databinding.BottomSheetSimpleInfoBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.sx3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.x61;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SimpleInfoBottomSheet extends BaseBottomSheetDialog<BottomSheetSimpleInfoBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final String d;
    public final String e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SimpleInfoBottomSheet.this.dismiss();
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
            SimpleInfoBottomSheet.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(SimpleInfoBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetSimpleInfoBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleInfoBottomSheet(Context context, String str, String str2) {
        super(context, R.style.BottomSheetDialogTheme);
        str2.getClass();
        this.d = str;
        this.e = str2;
        this.f = new ud9(BottomSheetSimpleInfoBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object>[] ze4VarArr = g;
        ze4<Object> ze4Var = ze4VarArr[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        BottomSheetSimpleInfoBinding bottomSheetSimpleInfoBinding = (BottomSheetSimpleInfoBinding) ud9Var.d;
        bottomSheetSimpleInfoBinding.tvTitle.setText(this.d);
        TextView textView = bottomSheetSimpleInfoBinding.tvBody;
        int i = sx3.a;
        textView.setText(sx3.a(this.e));
        bottomSheetSimpleInfoBinding.tvBody.setMovementMethod(x61.a);
        TextView textView2 = bottomSheetSimpleInfoBinding.btnClose;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new b()));
        ze4<Object> ze4Var2 = ze4VarArr[0];
        ud9Var.getClass();
        ze4Var2.getClass();
        TextView textView3 = ((BottomSheetSimpleInfoBinding) ud9Var.d).btnClose;
        textView3.getClass();
        textView3.setOnClickListener(new lb7(new a()));
    }
}
