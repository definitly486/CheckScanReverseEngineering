package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AlertDialog;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.webview.WebViewActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class lg9 extends WebViewClient {
    public AlertDialog a;
    public String b;
    public final /* synthetic */ WebViewActivity c;
    public final /* synthetic */ WebView d;

    public static final class a extends gh4 implements ll3<j59> {
        public final /* synthetic */ WebViewActivity f;
        public final /* synthetic */ Intent g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(WebViewActivity webViewActivity, Intent intent) {
            super(0);
            this.f = webViewActivity;
            this.g = intent;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.startActivity(this.g);
            return j59.a;
        }
    }

    public lg9(WebViewActivity webViewActivity, WebView webView) {
        this.c = webViewActivity;
        this.d = webView;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        String stringExtra;
        super.onPageFinished(webView, str);
        String str2 = this.b;
        WebViewActivity webViewActivity = this.c;
        if (str2 == null && (stringExtra = webViewActivity.getIntent().getStringExtra("QR_DATA")) != null) {
            String string = webViewActivity.getString(R.string.interface_brandlink_mobile_native_scanner_complete);
            string.getClass();
            webViewActivity.s(string, stringExtra);
            this.b = stringExtra;
        }
        String str3 = webViewActivity.d;
        if (str3 != null) {
            webViewActivity.s(str3, "");
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (this.a == null) {
            WebViewActivity webViewActivity = this.c;
            String stringExtra = webViewActivity.getIntent().getStringExtra("SHOP_APP_PACKAGE");
            if (stringExtra != null && webResourceRequest != null) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(webResourceRequest.getUrl());
                ComponentName componentNameResolveActivity = intent.resolveActivity(webViewActivity.getPackageManager());
                if (aa4.e(componentNameResolveActivity != null ? componentNameResolveActivity.getPackageName() : null, stringExtra)) {
                    WebView webView2 = this.d;
                    Context context = webView2.getContext();
                    context.getClass();
                    Context context2 = webView2.getContext();
                    String stringExtra2 = webViewActivity.getIntent().getStringExtra("SHOP_APP_NAME");
                    if (stringExtra2 == null) {
                        stringExtra2 = "";
                    }
                    String string = context2.getString(R.string.partner_shopping_open_app_suggestion, stringExtra2);
                    string.getClass();
                    this.a = fw1.a(context, string, new a(webViewActivity, intent));
                }
            }
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }
}
