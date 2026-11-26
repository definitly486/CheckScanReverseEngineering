package androidx.webkit;

import androidx.webkit.internal.WebViewFeatureInternal;
import defpackage.fg;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public final class PrefetchCache {
    private final ProfileBoundaryInterface mProfileImpl;

    public PrefetchCache(ProfileBoundaryInterface profileBoundaryInterface) {
        this.mProfileImpl = profileBoundaryInterface;
    }

    public void setMaxPrefetches(Integer num) {
        if (!WebViewFeatureInternal.PREFETCH_CACHE.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        if (num == null || num.intValue() >= 1) {
            this.mProfileImpl.setMaxPrefetches(num);
        } else {
            fg.c("maxPrefetches should be greater than or equal to 1");
        }
    }

    public void setPrefetchTtlSeconds(Integer num) {
        if (!WebViewFeatureInternal.PREFETCH_CACHE.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        if (num == null || num.intValue() >= 1) {
            this.mProfileImpl.setPrefetchTtlSeconds(num);
        } else {
            fg.c("prefetchTtlSeconds should be greater than or equal to 1");
        }
    }
}
