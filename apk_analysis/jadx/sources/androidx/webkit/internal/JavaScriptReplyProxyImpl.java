package androidx.webkit.internal;

import androidx.webkit.JavaScriptExecutionException;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebViewOutcomeReceiver;
import androidx.webkit.internal.JavaScriptReplyProxyImpl;
import defpackage.kt0;
import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.ExecuteJavaScriptCallbackBoundaryInterface;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public class JavaScriptReplyProxyImpl extends JavaScriptReplyProxy {
    private final JsReplyProxyBoundaryInterface mBoundaryInterface;

    public JavaScriptReplyProxyImpl(JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface) {
        this.mBoundaryInterface = jsReplyProxyBoundaryInterface;
    }

    public static JavaScriptReplyProxyImpl forInvocationHandler(InvocationHandler invocationHandler) {
        final JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface = (JsReplyProxyBoundaryInterface) kt0.a(JsReplyProxyBoundaryInterface.class, invocationHandler);
        return (JavaScriptReplyProxyImpl) jsReplyProxyBoundaryInterface.getOrCreatePeer(new Callable() { // from class: fb4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return JavaScriptReplyProxyImpl.lambda$forInvocationHandler$0(jsReplyProxyBoundaryInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$forInvocationHandler$0(JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface) {
        return new JavaScriptReplyProxyImpl(jsReplyProxyBoundaryInterface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int toErrorType(int i) {
        return i != 1 ? 0 : 1;
    }

    @Override // androidx.webkit.JavaScriptReplyProxy
    public void executeJavaScript(String str, final WebViewOutcomeReceiver<String, JavaScriptExecutionException> webViewOutcomeReceiver) {
        if (!WebViewFeatureInternal.JS_INJECTION_IN_FRAME_AND_WORLD.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        this.mBoundaryInterface.executeJavaScript(str, webViewOutcomeReceiver == null ? null : new kt0.a(new ExecuteJavaScriptCallbackBoundaryInterface() { // from class: androidx.webkit.internal.JavaScriptReplyProxyImpl.1
            @Override // org.chromium.support_lib_boundary.ExecuteJavaScriptCallbackBoundaryInterface
            public void onFailure(int i, String str2) {
                webViewOutcomeReceiver.onError(new JavaScriptExecutionException(JavaScriptReplyProxyImpl.this.toErrorType(i), str2));
            }

            @Override // org.chromium.support_lib_boundary.ExecuteJavaScriptCallbackBoundaryInterface
            public void onSuccess(String str2) {
                webViewOutcomeReceiver.onResult(str2);
            }
        }));
    }

    @Override // androidx.webkit.JavaScriptReplyProxy
    public void postMessage(byte[] bArr) {
        Objects.requireNonNull(bArr, "ArrayBuffer must be non-null");
        if (!WebViewFeatureInternal.WEB_MESSAGE_ARRAY_BUFFER.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        this.mBoundaryInterface.postMessageWithPayload(new kt0.a(new WebMessagePayloadAdapter(bArr)));
    }

    @Override // androidx.webkit.JavaScriptReplyProxy
    public void postMessage(String str) {
        if (WebViewFeatureInternal.WEB_MESSAGE_LISTENER.isSupportedByWebView()) {
            this.mBoundaryInterface.postMessage(str);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }
}
