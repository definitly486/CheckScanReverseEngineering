package defpackage;

import android.view.ViewPropertyAnimator;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.warefly.checkscan.presentation.webview.WebViewReplenishmentActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class fh9 extends WebChromeClient {
    public final /* synthetic */ WebViewReplenishmentActivity a;

    public static final class a extends gh4 implements ll3<j59> {
        public final /* synthetic */ int f;
        public final /* synthetic */ WebViewReplenishmentActivity g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, WebViewReplenishmentActivity webViewReplenishmentActivity) {
            super(0);
            this.f = i;
            this.g = webViewReplenishmentActivity;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            ViewPropertyAnimator viewPropertyAnimatorAlpha;
            ViewPropertyAnimator viewPropertyAnimatorAlpha2;
            WebViewReplenishmentActivity webViewReplenishmentActivity = this.g;
            int i = this.f;
            if (i == 0) {
                int i2 = WebViewReplenishmentActivity.g;
                ViewPropertyAnimator viewPropertyAnimatorAnimate = webViewReplenishmentActivity.s().pbLoading.animate();
                if (viewPropertyAnimatorAnimate != null && (viewPropertyAnimatorAlpha2 = viewPropertyAnimatorAnimate.alpha(1.0f)) != null) {
                    viewPropertyAnimatorAlpha2.start();
                }
            } else if (i == 100) {
                int i3 = WebViewReplenishmentActivity.g;
                ViewPropertyAnimator viewPropertyAnimatorAnimate2 = webViewReplenishmentActivity.s().pbLoading.animate();
                if (viewPropertyAnimatorAnimate2 != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate2.alpha(0.0f)) != null) {
                    viewPropertyAnimatorAlpha.start();
                }
            }
            int i4 = WebViewReplenishmentActivity.g;
            webViewReplenishmentActivity.s().pbLoading.setProgress(i, true);
            return j59.a;
        }
    }

    public fh9(WebViewReplenishmentActivity webViewReplenishmentActivity) {
        this.a = webViewReplenishmentActivity;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        WebViewReplenishmentActivity webViewReplenishmentActivity = this.a;
        a aVar = new a(i, webViewReplenishmentActivity);
        int i2 = WebViewReplenishmentActivity.g;
        if (webViewReplenishmentActivity.e) {
            aVar.invoke();
        }
    }
}
