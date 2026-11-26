package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.databinding.DialogWithdrawalBankBinding;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.dialogs.WithdrawalBankDialog;
import javax.net.ssl.TrustManagerFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class bj9 extends fn2 {
    public final /* synthetic */ DialogWithdrawalBankBinding b;
    public final /* synthetic */ WithdrawalBankDialog c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bj9(DialogWithdrawalBankBinding dialogWithdrawalBankBinding, WithdrawalBankDialog withdrawalBankDialog, TrustManagerFactory trustManagerFactory) {
        super(trustManagerFactory);
        this.b = dialogWithdrawalBankBinding;
        this.c = withdrawalBankDialog;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        DialogWithdrawalBankBinding dialogWithdrawalBankBinding = this.b;
        ConstraintLayout root = dialogWithdrawalBankBinding.incldTryAgain.getRoot();
        root.getClass();
        root.setVisibility(this.c.e ? 0 : 8);
        CircularProgressIndicator circularProgressIndicator = dialogWithdrawalBankBinding.pbLoading;
        circularProgressIndicator.getClass();
        circularProgressIndicator.setVisibility(8);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        CircularProgressIndicator circularProgressIndicator = this.b.pbLoading;
        circularProgressIndicator.getClass();
        circularProgressIndicator.setVisibility(0);
        this.c.e = false;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        this.c.e = (webResourceError != null && webResourceError.getErrorCode() == -6) || (webResourceError != null && webResourceError.getErrorCode() == -2) || ((webResourceError != null && webResourceError.getErrorCode() == -8) || ((webResourceError != null && webResourceError.getErrorCode() == -12) || (webResourceError != null && webResourceError.getErrorCode() == -10)));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Context context;
        Uri url;
        if (!aa4.e((webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.getScheme(), "mailto")) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
        if (webView == null || (context = webView.getContext()) == null) {
            return true;
        }
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(webResourceRequest.getUrl().toString())));
            j59 j59Var = j59.a;
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }
}
