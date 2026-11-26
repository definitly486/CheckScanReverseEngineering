package com.warefly.checkscan.core.ui.base.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.DialogLoadingBinding;
import defpackage.b36;
import defpackage.bs6;
import defpackage.gl4;
import defpackage.ta8;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes.dex */
public final class LoadingDialog extends FullScreenDialog<DialogLoadingBinding> {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;

    public static final class a {
        public static LoadingDialog a(String str) {
            LoadingDialog loadingDialog = new LoadingDialog();
            loadingDialog.setArguments(BundleKt.bundleOf(new b36("LOADING_TEXT_KEY", str)));
            return loadingDialog;
        }

        public static /* synthetic */ LoadingDialog b(a aVar) {
            String str = new String();
            aVar.getClass();
            return a(str);
        }
    }

    static {
        bs6 bs6Var = new bs6(LoadingDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/DialogLoadingBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public LoadingDialog() {
        super(R.layout.dialog_loading);
        this.c = new gl4(DialogLoadingBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.FullScreenDialogStyleLoading);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        Window window = dialogOnCreateDialog.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes == null) {
            return dialogOnCreateDialog;
        }
        attributes.windowAnimations = R.style.FullScreenDialogStyleLoading;
        return dialogOnCreateDialog;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        String string;
        view.getClass();
        super.onViewCreated(view, bundle);
        TextView textView = ((DialogLoadingBinding) this.c.getValue(this, e[0])).tvLoading;
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("LOADING_TEXT_KEY", new String())) == null) {
            string = null;
        } else if (ta8.M(string)) {
            string = getResources().getString(R.string.progress_bar_default_text);
            string.getClass();
        }
        textView.setText(string);
        setCancelable(false);
    }
}
