package androidx.webkit;

import androidx.webkit.internal.WebSettingsAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;

/* JADX INFO: loaded from: classes3.dex */
public class BackForwardCacheSettings {
    private final WebSettingsAdapter mAdapter;

    public BackForwardCacheSettings(WebSettingsAdapter webSettingsAdapter) {
        this.mAdapter = webSettingsAdapter;
    }

    public int getMaxPagesInCache() {
        if (WebViewFeatureInternal.BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3.isSupportedByWebView()) {
            return this.mAdapter.getBackForwardCacheMaxPagesInCache();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public long getTimeoutSeconds() {
        if (WebViewFeatureInternal.BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3.isSupportedByWebView()) {
            return this.mAdapter.getBackForwardCacheTimeoutSeconds();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public boolean isKeepForwardEntriesEnabled() {
        if (WebViewFeatureInternal.BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V4.isSupportedByWebView()) {
            return this.mAdapter.getBackForwardCacheKeepForwardEntries();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public void setKeepForwardEntriesEnabled(boolean z) {
        if (!WebViewFeatureInternal.BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V4.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        this.mAdapter.setBackForwardCacheKeepForwardEntries(z);
    }

    public void setMaxPagesInCache(int i) {
        if (!WebViewFeatureInternal.BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        this.mAdapter.setBackForwardCacheMaxPagesInCache(i);
    }

    public void setTimeoutSeconds(long j) {
        if (!WebViewFeatureInternal.BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        this.mAdapter.setBackForwardCacheTimeoutSeconds(j);
    }
}
