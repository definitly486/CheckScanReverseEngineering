package yads;

import android.os.Handler;
import android.os.Looper;
import defpackage.j59;
import defpackage.nl3;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes6.dex */
public final class yf2 {
    public final ConcurrentHashMap a;
    public final ConcurrentLinkedQueue b;
    public final LinkedHashSet c;
    public final ConcurrentLinkedQueue d;
    public final zc4 e;

    public yf2() {
        new Handler(Looper.getMainLooper());
        this.a = new ConcurrentHashMap();
        this.b = new ConcurrentLinkedQueue();
        new LinkedHashMap();
        this.c = new LinkedHashSet();
        new LinkedHashSet();
        this.d = new ConcurrentLinkedQueue();
        this.e = new zc4(this, new defpackage.oh0(this, 6));
    }

    public final void a(nl3 nl3Var) {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((u66) it.next()).a.a(nl3Var);
        }
    }

    public static final j59 a(yf2 yf2Var, String str) {
        Iterator it = yf2Var.d.iterator();
        while (it.hasNext()) {
            ((nl3) it.next()).invoke(str);
        }
        return j59.a;
    }
}
