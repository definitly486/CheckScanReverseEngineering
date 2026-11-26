package defpackage;

import android.view.ViewPropertyAnimator;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.lifecycle.Lifecycle;
import com.warefly.checkscan.presentation.webview.WebViewActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class mg9 extends WebChromeClient {
    public final /* synthetic */ WebViewActivity a;

    public mg9(WebViewActivity webViewActivity) {
        this.a = webViewActivity;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        ViewPropertyAnimator viewPropertyAnimatorAlpha;
        ViewPropertyAnimator viewPropertyAnimatorAlpha2;
        WebViewActivity webViewActivity = this.a;
        if (webViewActivity.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.RESUMED)) {
            if (i == 0) {
                int i2 = WebViewActivity.f;
                ViewPropertyAnimator viewPropertyAnimatorAnimate = webViewActivity.r().pbLoading.animate();
                if (viewPropertyAnimatorAnimate != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate.alpha(1.0f)) != null) {
                    viewPropertyAnimatorAlpha.start();
                }
            } else if (i == 100) {
                int i3 = WebViewActivity.f;
                ViewPropertyAnimator viewPropertyAnimatorAnimate2 = webViewActivity.r().pbLoading.animate();
                if (viewPropertyAnimatorAnimate2 != null && (viewPropertyAnimatorAlpha2 = viewPropertyAnimatorAnimate2.alpha(0.0f)) != null) {
                    viewPropertyAnimatorAlpha2.start();
                }
            }
            int i4 = WebViewActivity.f;
            webViewActivity.r().pbLoading.setProgress(i, true);
        }
    }
}
