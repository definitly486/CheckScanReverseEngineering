package defpackage;

import android.view.View;
import android.view.Window;
import android.webkit.WebView;
import androidx.webkit.WebViewRenderProcess;
import androidx.webkit.WebViewRenderProcessClient;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hd6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ View d;
    public final /* synthetic */ Object e;

    public /* synthetic */ hd6(Object obj, View view, Object obj2, int i) {
        this.b = i;
        this.c = obj;
        this.d = view;
        this.e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        View view = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                od6 od6Var = (od6) obj2;
                try {
                    od6.g(od6Var, new WeakReference(view), new WeakReference((Window) obj));
                } catch (Throwable th) {
                    sg.f("Session Replay generateSnapshot failed: ", th, '.', od6Var.c.v);
                    return;
                }
                break;
            default:
                ((WebViewRenderProcessClient) obj2).onRenderProcessResponsive((WebView) view, (WebViewRenderProcess) obj);
                break;
        }
    }
}
