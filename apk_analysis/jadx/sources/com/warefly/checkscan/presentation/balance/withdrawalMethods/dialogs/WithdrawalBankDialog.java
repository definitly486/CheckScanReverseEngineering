package com.warefly.checkscan.presentation.balance.withdrawalMethods.dialogs;

import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogWithdrawalBankBinding;
import defpackage.bj9;
import defpackage.bs6;
import defpackage.ei6;
import defpackage.en2;
import defpackage.gl4;
import defpackage.i30;
import defpackage.lb7;
import defpackage.le9;
import defpackage.m2;
import defpackage.og4;
import defpackage.s47;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class WithdrawalBankDialog extends FullScreenDialog<DialogWithdrawalBankBinding> {
    public static final a f;
    public static final /* synthetic */ ze4<Object>[] g;
    public final gl4 c;
    public final en2 d;
    public boolean e;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(WithdrawalBankDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
        f = new a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WithdrawalBankDialog() {
        super(R.layout.dialog_withdrawal_bank);
        this.c = new gl4(DialogWithdrawalBankBinding.class);
        this.d = new en2((s47) (this instanceof og4 ? m2.c(s47.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(s47.class), null, null)));
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) throws Exception {
        String string;
        view.getClass();
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("WithdrawalBankDialog_URL_KEY")) == null) {
            throw new Exception("Url param can not be null in WithdrawalBankDialog");
        }
        DialogWithdrawalBankBinding dialogWithdrawalBankBinding = (DialogWithdrawalBankBinding) this.c.getValue(this, g[0]);
        ConstraintLayout constraintLayout = dialogWithdrawalBankBinding.layoutRoot;
        constraintLayout.getClass();
        le9.d(16, constraintLayout);
        ImageView imageView = dialogWithdrawalBankBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new i30(this, 3)));
        TextView textView = dialogWithdrawalBankBinding.incldTryAgain.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new ei6(1, dialogWithdrawalBankBinding, string)));
        WebView webView = dialogWithdrawalBankBinding.webViewContent;
        webView.setBackgroundColor(0);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(true);
        settings.setDefaultTextEncodingName("utf-8");
        webView.setWebViewClient(new bj9(dialogWithdrawalBankBinding, this, this.d.a()));
        webView.loadUrl(string);
    }
}
