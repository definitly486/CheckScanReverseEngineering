package androidx.webkit;

import androidx.webkit.internal.ProxyControllerImpl;
import defpackage.n1;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ProxyController {

    public static class LAZY_HOLDER {
        static final ProxyController INSTANCE = new ProxyControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    public static ProxyController getInstance() {
        if (WebViewFeature.isFeatureSupported(WebViewFeature.PROXY_OVERRIDE)) {
            return LAZY_HOLDER.INSTANCE;
        }
        n1.e("Proxy override not supported");
        return null;
    }

    public abstract void clearProxyOverride(Executor executor, Runnable runnable);

    public abstract void setProxyOverride(ProxyConfig proxyConfig, Executor executor, Runnable runnable);
}
