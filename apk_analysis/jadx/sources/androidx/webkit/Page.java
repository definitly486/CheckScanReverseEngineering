package androidx.webkit;

import androidx.webkit.Page;
import defpackage.kt0;
import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewPageBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public final class Page {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final WebViewPageBoundaryInterface mPageImpl;

    private Page(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        this.mPageImpl = webViewPageBoundaryInterface;
    }

    public static Page forInvocationHandler(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) kt0.a(WebViewPageBoundaryInterface.class, invocationHandler);
        Object orCreatePeer = webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: p16
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Page.lambda$forInvocationHandler$0(webViewPageBoundaryInterface);
            }
        });
        Objects.requireNonNull(orCreatePeer);
        return (Page) orCreatePeer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$forInvocationHandler$0(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        return new Page(webViewPageBoundaryInterface);
    }

    public String getUrl() {
        return this.mPageImpl.getUrl();
    }
}
