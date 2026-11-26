package yads;

import android.webkit.WebView;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class up6 implements Runnable {
    public final /* synthetic */ float b;
    public final /* synthetic */ wp6 c;

    public up6(wp6 wp6Var, float f) {
        this.c = wp6Var;
        this.b = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        oq6 oq6Var = this.c.b.e;
        float f = this.b;
        oq6Var.a = f;
        tp6 tp6Var = oq6Var.d;
        if (tp6Var == null) {
            tp6Var = tp6.c;
            oq6Var.d = tp6Var;
        }
        Iterator it = Collections.unmodifiableCollection(tp6Var.b).iterator();
        while (it.hasNext()) {
            s9 s9Var = ((dp6) it.next()).e;
            nq6.a.a((WebView) s9Var.b.get(), "setDeviceVolume", Float.valueOf(f), s9Var.a);
        }
    }
}
