package defpackage;

import android.content.Context;
import android.view.ViewPropertyAnimator;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.databinding.FragmentBrandLinkBinding;
import com.warefly.checkscan.presentation.brandlink.view.BrandlinkFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class st0 extends WebChromeClient {
    public final /* synthetic */ BrandlinkFragment a;
    public final /* synthetic */ WebView b;

    public static final class a {
        public final /* synthetic */ PermissionRequest a;

        public a(PermissionRequest permissionRequest) {
            this.a = permissionRequest;
        }
    }

    public st0(BrandlinkFragment brandlinkFragment, WebView webView) {
        this.a = brandlinkFragment;
        this.b = webView;
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        permissionRequest.getClass();
        Context context = this.b.getContext();
        if (context != null) {
            if (ContextCompat.checkSelfPermission(context, "android.permission.CAMERA") == 0) {
                permissionRequest.grant(permissionRequest.getResources());
                return;
            }
            BrandlinkFragment brandlinkFragment = this.a;
            brandlinkFragment.j.launch("android.permission.CAMERA");
            brandlinkFragment.i = new a(permissionRequest);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        ViewPropertyAnimator viewPropertyAnimatorAlpha;
        BrandlinkFragment brandlinkFragment = this.a;
        if (brandlinkFragment.isResumed()) {
            if (i == 0) {
                ViewPropertyAnimator viewPropertyAnimatorAnimate = brandlinkFragment.n().pbLoading.animate();
                if (viewPropertyAnimatorAnimate != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate.alpha(1.0f)) != null) {
                    viewPropertyAnimatorAlpha.start();
                }
            } else if (i == 100) {
                FragmentBrandLinkBinding fragmentBrandLinkBindingN = brandlinkFragment.n();
                ViewPropertyAnimator viewPropertyAnimatorAlpha2 = brandlinkFragment.n().pbLoading.animate().alpha(0.0f);
                if (viewPropertyAnimatorAlpha2 != null) {
                    viewPropertyAnimatorAlpha2.start();
                }
                fragmentBrandLinkBindingN.wvBrandlink.setVisibility(0);
                fragmentBrandLinkBindingN.viewLoading.getRoot().setVisibility(8);
                fragmentBrandLinkBindingN.ivNoImages.setVisibility(8);
                fragmentBrandLinkBindingN.tvBrandlinks.setVisibility(8);
            }
            brandlinkFragment.n().pbLoading.setProgress(i, true);
        }
    }
}
