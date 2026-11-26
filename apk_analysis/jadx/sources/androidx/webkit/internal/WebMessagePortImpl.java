package androidx.webkit.internal;

import android.os.Handler;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import defpackage.kt0;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public class WebMessagePortImpl extends WebMessagePortCompat {
    private WebMessagePortBoundaryInterface mBoundaryInterface;
    private WebMessagePort mFrameworksImpl;

    public WebMessagePortImpl(InvocationHandler invocationHandler) {
        this.mBoundaryInterface = (WebMessagePortBoundaryInterface) kt0.a(WebMessagePortBoundaryInterface.class, invocationHandler);
    }

    public static WebMessage compatToFrameworkMessage(WebMessageCompat webMessageCompat) {
        return new WebMessage(webMessageCompat.getData(), compatToPorts(webMessageCompat.getPorts()));
    }

    public static WebMessagePort[] compatToPorts(WebMessagePortCompat[] webMessagePortCompatArr) {
        if (webMessagePortCompatArr == null) {
            return null;
        }
        int length = webMessagePortCompatArr.length;
        WebMessagePort[] webMessagePortArr = new WebMessagePort[length];
        for (int i = 0; i < length; i++) {
            webMessagePortArr[i] = webMessagePortCompatArr[i].getFrameworkPort();
        }
        return webMessagePortArr;
    }

    public static WebMessageCompat frameworkMessageToCompat(WebMessage webMessage) {
        return new WebMessageCompat(webMessage.getData(), portsToCompat(webMessage.getPorts()));
    }

    private WebMessagePortBoundaryInterface getBoundaryInterface() {
        WebMessagePortBoundaryInterface webMessagePortBoundaryInterface = this.mBoundaryInterface;
        if (webMessagePortBoundaryInterface != null) {
            return webMessagePortBoundaryInterface;
        }
        WebMessagePortBoundaryInterface webMessagePortBoundaryInterface2 = (WebMessagePortBoundaryInterface) kt0.a(WebMessagePortBoundaryInterface.class, WebViewGlueCommunicator.getCompatConverter().convertWebMessagePort(this.mFrameworksImpl));
        this.mBoundaryInterface = webMessagePortBoundaryInterface2;
        return webMessagePortBoundaryInterface2;
    }

    private WebMessagePort getFrameworksImpl() {
        WebMessagePort webMessagePort = this.mFrameworksImpl;
        if (webMessagePort != null) {
            return webMessagePort;
        }
        WebMessagePort webMessagePortConvertWebMessagePort = WebViewGlueCommunicator.getCompatConverter().convertWebMessagePort(Proxy.getInvocationHandler(this.mBoundaryInterface));
        this.mFrameworksImpl = webMessagePortConvertWebMessagePort;
        return webMessagePortConvertWebMessagePort;
    }

    public static WebMessagePortCompat[] portsToCompat(WebMessagePort[] webMessagePortArr) {
        if (webMessagePortArr == null) {
            return null;
        }
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[webMessagePortArr.length];
        for (int i = 0; i < webMessagePortArr.length; i++) {
            webMessagePortCompatArr[i] = new WebMessagePortImpl(webMessagePortArr[i]);
        }
        return webMessagePortCompatArr;
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void close() {
        getFrameworksImpl().close();
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public WebMessagePort getFrameworkPort() {
        return getFrameworksImpl();
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public InvocationHandler getInvocationHandler() {
        return Proxy.getInvocationHandler(getBoundaryInterface());
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void postMessage(WebMessageCompat webMessageCompat) {
        ApiFeature.M m = WebViewFeatureInternal.WEB_MESSAGE_PORT_POST_MESSAGE;
        if (webMessageCompat.getType() == 0) {
            getFrameworksImpl().postMessage(compatToFrameworkMessage(webMessageCompat));
        } else {
            if (!m.isSupportedByWebView() || !WebMessageAdapter.isMessagePayloadTypeSupportedByWebView(webMessageCompat.getType())) {
                throw WebViewFeatureInternal.getUnsupportedOperationException();
            }
            getBoundaryInterface().postMessage(new kt0.a(new WebMessageAdapter(webMessageCompat)));
        }
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void setWebMessageCallback(final WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat) {
        if (WebViewFeatureInternal.WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK.isSupportedByWebView()) {
            getBoundaryInterface().setWebMessageCallback(new kt0.a(new WebMessageCallbackAdapter(webMessageCallbackCompat)));
        } else {
            getFrameworksImpl().setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: androidx.webkit.internal.WebMessagePortImpl.1
                @Override // android.webkit.WebMessagePort.WebMessageCallback
                public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
                    webMessageCallbackCompat.onMessage(new WebMessagePortImpl(webMessagePort), WebMessagePortImpl.frameworkMessageToCompat(webMessage));
                }
            });
        }
    }

    public WebMessagePortImpl(WebMessagePort webMessagePort) {
        this.mFrameworksImpl = webMessagePort;
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void setWebMessageCallback(Handler handler, final WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat) {
        if (WebViewFeatureInternal.CREATE_WEB_MESSAGE_CHANNEL.isSupportedByWebView()) {
            getBoundaryInterface().setWebMessageCallback(new kt0.a(new WebMessageCallbackAdapter(webMessageCallbackCompat)), handler);
        } else {
            getFrameworksImpl().setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: androidx.webkit.internal.WebMessagePortImpl.2
                @Override // android.webkit.WebMessagePort.WebMessageCallback
                public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
                    webMessageCallbackCompat.onMessage(new WebMessagePortImpl(webMessagePort), WebMessagePortImpl.frameworkMessageToCompat(webMessage));
                }
            }, handler);
        }
    }
}
