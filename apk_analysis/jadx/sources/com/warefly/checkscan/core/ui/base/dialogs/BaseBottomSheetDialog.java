package com.warefly.checkscan.core.ui.base.dialogs;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.gh5;
import defpackage.i72;
import defpackage.jg4;
import defpackage.ll3;
import defpackage.nz1;
import defpackage.oz1;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseBottomSheetDialog<VB extends ViewBinding> extends BottomSheetDialog implements BaseView, jg4 {
    public static final /* synthetic */ int c = 0;
    public final fh8 b;

    public static final class a extends gh4 implements ll3<gh5<BaseBottomSheetDialog<?>>> {
        public final /* synthetic */ BaseBottomSheetDialog<VB> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(BaseBottomSheetDialog<VB> baseBottomSheetDialog) {
            super(0);
            this.f = baseBottomSheetDialog;
        }

        @Override // defpackage.ll3
        public final gh5<BaseBottomSheetDialog<?>> invoke() {
            return new gh5<>(this.f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseBottomSheetDialog(Context context, int i) {
        super(context, i);
        context.getClass();
        this.b = new fh8(new a(this));
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialog, android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((gh5) this.b.getValue()).a();
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gh5 gh5Var = (gh5) this.b.getValue();
        gh5Var.getClass();
        gh5Var.b(new Bundle());
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: ad0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                int i = BaseBottomSheetDialog.c;
                this.a.getBehavior().setState(3);
            }
        });
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialog, android.app.Dialog, android.view.Window.Callback
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
