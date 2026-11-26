package com.warefly.checkscan.presentation.bonuses.behaviors;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatButton;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogNewFeatureAppBinding;
import defpackage.bs6;
import defpackage.cl4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jg4;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.og4;
import defpackage.po4;
import defpackage.t79;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class NewFeatureDialog extends BaseBottomSheetDialog<DialogNewFeatureAppBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final boolean d;
    public final ud9 e;
    public final cl4 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            NewFeatureDialog.this.dismiss();
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
            ze4<Object>[] ze4VarArr = NewFeatureDialog.g;
            NewFeatureDialog newFeatureDialog = NewFeatureDialog.this;
            t79 t79Var = (t79) newFeatureDialog.f.getValue();
            Context context = newFeatureDialog.getContext();
            context.getClass();
            t79Var.a(context);
            return j59.a;
        }
    }

    public static final class c implements ll3<t79> {
        public c() {
        }

        /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, t79] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, t79] */
        @Override // defpackage.ll3
        public final t79 invoke() {
            jg4 jg4Var = NewFeatureDialog.this;
            return jg4Var instanceof og4 ? m2.c(t79.class, ((og4) jg4Var).getScope(), null, null) : jg4Var.b().c.d.e(x07.a(t79.class), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(NewFeatureDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    public NewFeatureDialog(Context context, boolean z) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = z;
        this.e = new ud9(DialogNewFeatureAppBinding.class, this);
        this.f = nm4.a(po4.SYNCHRONIZED, new c());
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogNewFeatureAppBinding dialogNewFeatureAppBinding = (DialogNewFeatureAppBinding) ud9Var.d;
        ImageView imageView = dialogNewFeatureAppBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        if (this.d) {
            dialogNewFeatureAppBinding.tvTitle.setText(getContext().getString(R.string.update_app_dialog_minor_title));
            dialogNewFeatureAppBinding.tvDescription.setText(getContext().getString(R.string.update_app_dialog_minor_description));
        }
        AppCompatButton appCompatButton = dialogNewFeatureAppBinding.btnUpdate;
        appCompatButton.getClass();
        appCompatButton.setOnClickListener(new lb7(new b()));
    }
}
