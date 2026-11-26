package com.warefly.checkscan.core.ui.base.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.DialogFragment;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.gh5;
import defpackage.i72;
import defpackage.j59;
import defpackage.jg4;
import defpackage.ll3;
import defpackage.oi9;
import defpackage.oz1;

/* JADX INFO: loaded from: classes.dex */
public abstract class FullScreenDialog<VB extends ViewBinding> extends DialogFragment implements BaseView, jg4 {
    public final fh8 b;

    public static final class a extends gh4 implements ll3<gh5<FullScreenDialog<?>>> {
        public final /* synthetic */ FullScreenDialog<VB> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(FullScreenDialog<VB> fullScreenDialog) {
            super(0);
            this.f = fullScreenDialog;
        }

        @Override // defpackage.ll3
        public final gh5<FullScreenDialog<?>> invoke() {
            return new gh5<>(this.f);
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public final /* synthetic */ FullScreenDialog<VB> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(FullScreenDialog<VB> fullScreenDialog) {
            super(0);
            this.f = fullScreenDialog;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            View view = this.f.getView();
            if (view != null) {
                oz1.i(R.string.url_not_opened_message, view);
            }
            return j59.a;
        }
    }

    public FullScreenDialog(int i) {
        super(i);
        this.b = new fh8(new a(this));
    }

    public void d(View view) {
        oi9.a(15, view, true);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.FullScreenDialogStyle);
        ((gh5) this.b.getValue()).b(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getClass();
        Window window = dialogOnCreateDialog.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes == null) {
            return dialogOnCreateDialog;
        }
        attributes.windowAnimations = R.style.FullScreenDialogStyle;
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        ((gh5) this.b.getValue()).a();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        fh8 fh8Var = this.b;
        ((gh5) fh8Var.getValue()).e();
        ((gh5) fh8Var.getValue()).d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        d(view);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrl(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            oz1.c(context, str, new b(this));
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrlInCustomTab(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            i72.b(context, str);
        }
    }
}
