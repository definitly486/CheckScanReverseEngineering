package com.warefly.checkscan.core.ui.base.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.gh5;
import defpackage.i72;
import defpackage.jg4;
import defpackage.ll3;
import defpackage.nz1;
import defpackage.oz1;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseDialogNew<VB extends ViewBinding> extends Dialog implements BaseView, jg4 {
    public final fh8 b;

    public static final class a extends gh4 implements ll3<gh5<BaseDialogNew<?>>> {
        public final /* synthetic */ BaseDialogNew<VB> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(BaseDialogNew<VB> baseDialogNew) {
            super(0);
            this.f = baseDialogNew;
        }

        @Override // defpackage.ll3
        public final gh5<BaseDialogNew<?>> invoke() {
            return new gh5<>(this.f);
        }
    }

    public BaseDialogNew(Context context) {
        super(context);
        this.b = new fh8(new a(this));
    }

    public void close() {
        dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        fh8 fh8Var = this.b;
        gh5 gh5Var = (gh5) fh8Var.getValue();
        gh5Var.getClass();
        gh5Var.b(new Bundle());
        ((gh5) fh8Var.getValue()).a();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        fh8 fh8Var = this.b;
        gh5 gh5Var = (gh5) fh8Var.getValue();
        gh5Var.getClass();
        gh5Var.f(new Bundle());
        ((gh5) fh8Var.getValue()).e();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrl(String str) {
        str.getClass();
        Context context = getContext();
        context.getClass();
        oz1.c(context, str, nz1.f);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrlInCustomTab(String str) {
        str.getClass();
        i72.b(getContext(), str);
    }
}
