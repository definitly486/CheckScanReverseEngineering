package yads;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes6.dex */
public final class fp6 implements Runnable {
    public final WebView b;

    public fp6(jp6 jp6Var) {
        this.b = jp6Var.g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.destroy();
    }
}
