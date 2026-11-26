package androidx.webkit.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import androidx.webkit.NavigationListener;
import androidx.webkit.PrerenderException;
import androidx.webkit.PrerenderOperationCallback;
import androidx.webkit.Profile;
import androidx.webkit.SpeculativeLoadingParameters;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewRenderProcess;
import androidx.webkit.WebViewRenderProcessClient;
import androidx.webkit.internal.WebViewProviderAdapter;
import defpackage.kt0;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public class WebViewProviderAdapter {
    final WebViewProviderBoundaryInterface mImpl;

    public WebViewProviderAdapter(WebViewProviderBoundaryInterface webViewProviderBoundaryInterface) {
        this.mImpl = webViewProviderBoundaryInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prerenderUrlAsync$1(PrerenderOperationCallback prerenderOperationCallback, Throwable th) {
        prerenderOperationCallback.onError(new PrerenderException("Prerender operation failed", th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prerenderUrlAsync$3(PrerenderOperationCallback prerenderOperationCallback, Throwable th) {
        prerenderOperationCallback.onError(new PrerenderException("Prerender operation failed", th));
    }

    public ScriptHandlerImpl addDocumentStartJavaScript(String str, String[] strArr) {
        return ScriptHandlerImpl.toScriptHandler(this.mImpl.addDocumentStartJavaScript(str, strArr));
    }

    public ScriptHandlerImpl addJavaScriptOnEvent(String str, int i, String[] strArr, String str2) {
        return ScriptHandlerImpl.toScriptHandler(this.mImpl.addJavaScriptOnEvent(str, strArr, i, str2));
    }

    public void addNavigationListener(Executor executor, NavigationListener navigationListener) {
        this.mImpl.addWebViewNavigationListener(executor, new kt0.a(new NavigationListenerAdapter(navigationListener)));
    }

    public void addWebMessageListener(String str, String[] strArr, WebViewCompat.WebMessageListener webMessageListener) {
        this.mImpl.addWebMessageListener(str, strArr, new kt0.a(new WebMessageListenerAdapter(webMessageListener)));
    }

    public WebMessagePortCompat[] createWebMessageChannel() {
        InvocationHandler[] invocationHandlerArrCreateWebMessageChannel = this.mImpl.createWebMessageChannel();
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[invocationHandlerArrCreateWebMessageChannel.length];
        for (int i = 0; i < invocationHandlerArrCreateWebMessageChannel.length; i++) {
            webMessagePortCompatArr[i] = new WebMessagePortImpl(invocationHandlerArrCreateWebMessageChannel[i]);
        }
        return webMessagePortCompatArr;
    }

    public int getExecutionWorld(String str) {
        return this.mImpl.getJavaScriptWorld(str);
    }

    public Profile getProfile() {
        return new ProfileImpl((ProfileBoundaryInterface) kt0.a(ProfileBoundaryInterface.class, this.mImpl.getProfile()));
    }

    public WebChromeClient getWebChromeClient() {
        return this.mImpl.getWebChromeClient();
    }

    public WebViewClient getWebViewClient() {
        return this.mImpl.getWebViewClient();
    }

    public WebViewRenderProcess getWebViewRenderProcess() {
        return WebViewRenderProcessImpl.forInvocationHandler(this.mImpl.getWebViewRenderer());
    }

    public WebViewRenderProcessClient getWebViewRenderProcessClient() {
        InvocationHandler webViewRendererClient = this.mImpl.getWebViewRendererClient();
        if (webViewRendererClient == null) {
            return null;
        }
        return ((WebViewRenderProcessClientAdapter) ((kt0.a) webViewRendererClient).a).getWebViewRenderProcessClient();
    }

    public void insertVisualStateCallback(long j, WebViewCompat.VisualStateCallback visualStateCallback) {
        this.mImpl.insertVisualStateCallback(j, new kt0.a(new VisualStateCallbackAdapter(visualStateCallback)));
    }

    public boolean isAudioMuted() {
        return this.mImpl.isAudioMuted();
    }

    public void postWebMessage(WebMessageCompat webMessageCompat, Uri uri) {
        this.mImpl.postMessageToMainFrame(new kt0.a(new WebMessageAdapter(webMessageCompat)), uri);
    }

    public void prerenderUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, SpeculativeLoadingParameters speculativeLoadingParameters, final PrerenderOperationCallback prerenderOperationCallback) {
        this.mImpl.prerenderUrl(str, cancellationSignal, executor, new kt0.a(new SpeculativeLoadingParametersAdapter(speculativeLoadingParameters)), new ValueCallback() { // from class: tg9
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                prerenderOperationCallback.onPrerenderActivated();
            }
        }, new ValueCallback() { // from class: ug9
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                WebViewProviderAdapter.lambda$prerenderUrlAsync$3(prerenderOperationCallback, (Throwable) obj);
            }
        });
    }

    public void removeNavigationListener(NavigationListener navigationListener) {
        this.mImpl.removeWebViewNavigationListener(new kt0.a(new NavigationListenerAdapter(navigationListener)));
    }

    public void removeWebMessageListener(String str) {
        this.mImpl.removeWebMessageListener(str);
    }

    public void saveState(Bundle bundle, int i, boolean z) {
        this.mImpl.saveState(bundle, i, z);
    }

    public void setAudioMuted(boolean z) {
        this.mImpl.setAudioMuted(z);
    }

    public void setProfileWithName(String str) {
        this.mImpl.setProfile(str);
    }

    public void setWebViewRenderProcessClient(Executor executor, WebViewRenderProcessClient webViewRenderProcessClient) {
        this.mImpl.setWebViewRendererClient(webViewRenderProcessClient != null ? new kt0.a(new WebViewRenderProcessClientAdapter(executor, webViewRenderProcessClient)) : null);
    }

    public void removeWebMessageListener(String str, String str2) {
        this.mImpl.removeWebMessageListener(str, str2);
    }

    public void addWebMessageListener(String str, String[] strArr, String str2, WebViewCompat.WebMessageListener webMessageListener) {
        this.mImpl.addWebMessageListener(str, strArr, new kt0.a(new WebMessageListenerAdapter(webMessageListener)), str2);
    }

    public void prerenderUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, final PrerenderOperationCallback prerenderOperationCallback) {
        this.mImpl.prerenderUrl(str, cancellationSignal, executor, new ValueCallback() { // from class: vg9
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                prerenderOperationCallback.onPrerenderActivated();
            }
        }, new ValueCallback() { // from class: wg9
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                WebViewProviderAdapter.lambda$prerenderUrlAsync$1(prerenderOperationCallback, (Throwable) obj);
            }
        });
    }
}
