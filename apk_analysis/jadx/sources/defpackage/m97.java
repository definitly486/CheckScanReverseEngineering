package defpackage;

import com.my.target.h2;
import com.my.target.m1;
import com.tapjoy.TapjoyConnectCore;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m97 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m97(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((cp2) obj).dispose();
                break;
            case 1:
                ((TapjoyConnectCore) obj).c();
                break;
            default:
                h2 h2Var = (h2) obj;
                m1.d(h2Var.b.a.a, "webviewShown", 2, null);
                y14.r(null, "WebViewReachability: webview shown");
                h2Var.a = true;
                break;
        }
    }
}
