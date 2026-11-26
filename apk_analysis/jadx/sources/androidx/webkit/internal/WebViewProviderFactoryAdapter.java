package androidx.webkit.internal;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewOutcomeReceiver;
import androidx.webkit.WebViewStartUpConfig;
import androidx.webkit.WebViewStartUpResult;
import androidx.webkit.WebViewStartupException;
import androidx.webkit.internal.WebViewProviderFactoryAdapter;
import defpackage.fd7;
import defpackage.kt0;
import defpackage.wq;
import defpackage.yg9;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface;
import org.chromium.support_lib_boundary.ProfileStoreBoundaryInterface;
import org.chromium.support_lib_boundary.ProxyControllerBoundaryInterface;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public class WebViewProviderFactoryAdapter implements WebViewProviderFactory {
    final WebViewProviderFactoryBoundaryInterface mImpl;

    public WebViewProviderFactoryAdapter(WebViewProviderFactoryBoundaryInterface webViewProviderFactoryBoundaryInterface) {
        this.mImpl = webViewProviderFactoryBoundaryInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startUpWebView$1(WebViewCompat.WebViewStartUpCallback webViewStartUpCallback, WebViewStartUpResult webViewStartUpResult) {
        new Handler(Looper.getMainLooper()).post(new yg9(0, webViewStartUpCallback, webViewStartUpResult));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startUpWebView$3(WebViewOutcomeReceiver webViewOutcomeReceiver, Consumer consumer) {
        new Handler(Looper.getMainLooper()).post(new fd7(1, webViewOutcomeReceiver, new WebViewStartupResultImpl(consumer)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startUpWebView$5(final WebViewOutcomeReceiver webViewOutcomeReceiver, Consumer consumer) {
        final WebViewStartupException webViewStartupExceptionBuildException = WebViewStartupExceptionBuilder.buildException(consumer);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: xg9
            @Override // java.lang.Runnable
            public final void run() {
                webViewOutcomeReceiver.onError(webViewStartupExceptionBuildException);
            }
        });
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        return (WebViewProviderBoundaryInterface) kt0.a(WebViewProviderBoundaryInterface.class, this.mImpl.createWebView(webView));
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public DropDataContentProviderBoundaryInterface getDropDataProvider() {
        return (DropDataContentProviderBoundaryInterface) kt0.a(DropDataContentProviderBoundaryInterface.class, this.mImpl.getDropDataProvider());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public ProfileStoreBoundaryInterface getProfileStore() {
        return (ProfileStoreBoundaryInterface) kt0.a(ProfileStoreBoundaryInterface.class, this.mImpl.getProfileStore());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public ProxyControllerBoundaryInterface getProxyController() {
        return (ProxyControllerBoundaryInterface) kt0.a(ProxyControllerBoundaryInterface.class, this.mImpl.getProxyController());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public ServiceWorkerControllerBoundaryInterface getServiceWorkerController() {
        return (ServiceWorkerControllerBoundaryInterface) kt0.a(ServiceWorkerControllerBoundaryInterface.class, this.mImpl.getServiceWorkerController());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) kt0.a(StaticsBoundaryInterface.class, this.mImpl.getStatics());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public TracingControllerBoundaryInterface getTracingController() {
        return (TracingControllerBoundaryInterface) kt0.a(TracingControllerBoundaryInterface.class, this.mImpl.getTracingController());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public WebViewBuilderBoundaryInterface getWebViewBuilder() {
        return (WebViewBuilderBoundaryInterface) kt0.a(WebViewBuilderBoundaryInterface.class, this.mImpl.getWebViewBuilder());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public String[] getWebViewFeatures() {
        return this.mImpl.getSupportedFeatures();
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter() {
        return (WebkitToCompatConverterBoundaryInterface) kt0.a(WebkitToCompatConverterBoundaryInterface.class, this.mImpl.getWebkitToCompatConverter());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    @Deprecated
    public void startUpWebView(WebViewStartUpConfig webViewStartUpConfig, WebViewCompat.WebViewStartUpCallback webViewStartUpCallback) {
        this.mImpl.startUpWebView(new kt0.a(new WebViewStartUpConfigAdapter(webViewStartUpConfig)), new kt0.a(new WebViewStartUpCallbackAdapter(new wq(webViewStartUpCallback, 5))));
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    public void startUpWebView(final WebViewStartUpConfig webViewStartUpConfig, final WebViewOutcomeReceiver<WebViewStartUpResult, WebViewStartupException> webViewOutcomeReceiver) {
        WebViewProviderFactoryBoundaryInterface webViewProviderFactoryBoundaryInterface = this.mImpl;
        Objects.requireNonNull(webViewStartUpConfig);
        webViewProviderFactoryBoundaryInterface.startUpWebView(new Consumer() { // from class: zg9
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                webViewStartUpConfig.accept((BiConsumer) obj);
            }
        }, new Consumer() { // from class: ah9
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WebViewProviderFactoryAdapter.lambda$startUpWebView$3(webViewOutcomeReceiver, (Consumer) obj);
            }
        }, new Consumer() { // from class: bh9
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WebViewProviderFactoryAdapter.lambda$startUpWebView$5(webViewOutcomeReceiver, (Consumer) obj);
            }
        });
    }
}
