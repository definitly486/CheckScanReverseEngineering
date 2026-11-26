package defpackage;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.warefly.checkscan.presentation.webview.WebViewReplenishmentActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class eh9 extends WebViewClient {
    public final /* synthetic */ WebViewReplenishmentActivity a;

    public static final class a extends gh4 implements ll3<j59> {
        public final /* synthetic */ WebViewReplenishmentActivity f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(WebViewReplenishmentActivity webViewReplenishmentActivity) {
            super(0);
            this.f = webViewReplenishmentActivity;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.onBackPressed();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public final /* synthetic */ WebViewReplenishmentActivity f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(WebViewReplenishmentActivity webViewReplenishmentActivity) {
            super(0);
            this.f = webViewReplenishmentActivity;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.onBackPressed();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public final /* synthetic */ WebViewReplenishmentActivity f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(WebViewReplenishmentActivity webViewReplenishmentActivity) {
            super(0);
            this.f = webViewReplenishmentActivity;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.onBackPressed();
            return j59.a;
        }
    }

    public eh9(WebViewReplenishmentActivity webViewReplenishmentActivity) {
        this.a = webViewReplenishmentActivity;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x007c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0087  */
    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        b bVar;
        Uri url;
        Uri url2;
        boolean zD = ta8.D(String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null), "https://failurepayment.checkscan.org/", false);
        WebViewReplenishmentActivity webViewReplenishmentActivity = this.a;
        if (zD) {
            a aVar = new a(webViewReplenishmentActivity);
            int i = WebViewReplenishmentActivity.g;
            if (webViewReplenishmentActivity.e) {
                aVar.invoke();
                return null;
            }
        } else {
            if (aa4.e((webResourceRequest == null || (url2 = webResourceRequest.getUrl()) == null) ? null : url2.getHost(), "failurepayment.checkscan.org")) {
                bVar = new b(webViewReplenishmentActivity);
                int i2 = WebViewReplenishmentActivity.g;
                if (webViewReplenishmentActivity.e) {
                    bVar.invoke();
                }
            } else {
                if (aa4.e((webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.getHost(), "successpayment.checkscan.org")) {
                    bVar = new b(webViewReplenishmentActivity);
                    int i3 = WebViewReplenishmentActivity.g;
                    if (webViewReplenishmentActivity.e) {
                        bVar.invoke();
                    }
                } else {
                    if (!ta8.D(String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null), "https://successpayment.checkscan.org/", false)) {
                        return super.shouldInterceptRequest(webView, webResourceRequest);
                    }
                    c cVar = new c(webViewReplenishmentActivity);
                    int i4 = WebViewReplenishmentActivity.g;
                    if (webViewReplenishmentActivity.e) {
                        cVar.invoke();
                        return null;
                    }
                }
            }
        }
        return null;
    }
}
