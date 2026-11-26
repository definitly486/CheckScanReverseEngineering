package yads;

import android.app.KeyguardManager;
import android.content.Context;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class qq6 {
    public static final qq6 d = new qq6();
    public WeakReference a;
    public boolean b = false;
    public boolean c = false;

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(boolean z, boolean z2) {
        if ((z2 || z) == (this.c || this.b)) {
            return;
        }
        Iterator it = Collections.unmodifiableCollection(tp6.c.a).iterator();
        while (it.hasNext()) {
            s9 s9Var = ((dp6) it.next()).e;
            boolean z3 = z2 || z;
            if (s9Var.b.get() != 0) {
                nq6.a.a((WebView) s9Var.b.get(), "setDeviceLockState", z3 ? "locked" : "unlocked");
            }
        }
    }

    public final void a() {
        KeyguardManager keyguardManager;
        Context context = (Context) this.a.get();
        if (context == null || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
            return;
        }
        boolean zIsDeviceLocked = keyguardManager.isDeviceLocked();
        a(this.b, zIsDeviceLocked);
        this.c = zIsDeviceLocked;
    }
}
