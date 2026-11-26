package defpackage;

import androidx.media3.exoplayer.source.preload.PreCacheHelper;
import com.my.target.h2;
import com.my.target.m1;
import com.tapjoy.TJConnectListener;
import com.tapjoy.internal.h1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class as1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ as1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                super/*android.app.Dialog*/.onBackPressed();
                break;
            case 1:
                ((PreCacheHelper) obj).lambda$stop$1();
                break;
            case 2:
                h1.b((TJConnectListener) obj);
                break;
            default:
                h2 h2Var = (h2) obj;
                if (!h2Var.a) {
                    y14.r(null, "WebViewReachability: !!! Rare bug occurred: call 'webview closed' without 'webview shown'");
                } else {
                    m1.d(h2Var.b.a.a, "webviewClosed", 2, null);
                    y14.r(null, "WebViewReachability: webview closed");
                }
                break;
        }
    }
}
