package defpackage;

import android.view.ViewPropertyAnimator;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.warefly.checkscan.presentation.electrocheque.view.WebViewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class qg9 extends WebChromeClient {
    public final /* synthetic */ WebViewFragment a;

    public qg9(WebViewFragment webViewFragment) {
        this.a = webViewFragment;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        ViewPropertyAnimator viewPropertyAnimatorAlpha;
        ViewPropertyAnimator viewPropertyAnimatorAnimate;
        ViewPropertyAnimator viewPropertyAnimatorAlpha2;
        WebViewFragment webViewFragment = this.a;
        if (webViewFragment.isResumed()) {
            if (i == 0) {
                ViewPropertyAnimator viewPropertyAnimatorAnimate2 = webViewFragment.n().pbLoading.animate();
                if (viewPropertyAnimatorAnimate2 != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate2.alpha(1.0f)) != null) {
                    viewPropertyAnimatorAlpha.start();
                }
            } else if (i == 100 && (viewPropertyAnimatorAnimate = webViewFragment.n().pbLoading.animate()) != null && (viewPropertyAnimatorAlpha2 = viewPropertyAnimatorAnimate.alpha(0.0f)) != null) {
                viewPropertyAnimatorAlpha2.start();
            }
            webViewFragment.n().pbLoading.setProgress(i, true);
        }
    }
}
