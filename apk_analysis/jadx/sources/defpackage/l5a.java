package defpackage;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class l5a implements j5a {
    public long f;
    public long g;
    public final d9a b = new d9a(15000, w4a.h);
    public final po9 c = new po9(this, 1);
    public final m6a d = new m6a();
    public zs9 e = new zs9();
    public volatile HashMap h = new HashMap();
    public final WeakHashMap i = new WeakHashMap();

    public static final class a {
        public final ArrayList a = new ArrayList();
        public final HashMap b = new HashMap();
    }

    public static final class b {
        public final ArrayList a = new ArrayList();
    }

    public static final class c {
        public final long a;
        public final int b;
        public final int c;
        public final int d;
        public final String e;
        public final String f;

        public c(int i, int i2, int i3, long j, String str, String str2) {
            this.a = j;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = str;
            this.f = str2;
        }
    }

    @Override // defpackage.j5a
    public final void b(pp9 pp9Var, int i, int i2, int i3, String str, String str2) {
        Map map;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = (jElapsedRealtime - this.g) + this.f;
        z8a z8aVar = pp9Var.a;
        if (z8aVar.h == 2) {
            return;
        }
        c cVar = new c(i, i2, i3, j, str, str2);
        synchronized (this) {
            try {
                int i4 = z8aVar.h;
                if (i4 == 0) {
                    map = this.i;
                } else if (i4 != 1) {
                    return;
                } else {
                    map = this.h;
                }
                a aVar = (a) map.get(z8aVar);
                if (aVar == null) {
                    aVar = new a();
                    map.put(z8aVar, aVar);
                }
                b bVar = (b) aVar.b.get(pp9Var);
                if (bVar == null) {
                    bVar = new b();
                    aVar.b.put(pp9Var, bVar);
                }
                bVar.a.add(cVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.j5a
    public final void c(z8a z8aVar, boolean z, r8a r8aVar) {
        synchronized (this) {
            try {
                r8aVar.run();
                a aVar = (a) this.i.remove(z8aVar);
                if (z && aVar != null) {
                    this.h.put(z8aVar, aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.j5a
    public final void d(z8a z8aVar, int i, int i2, int i3, String str, String str2) {
        Map map;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = (jElapsedRealtime - this.g) + this.f;
        if (z8aVar.h == 2) {
            return;
        }
        c cVar = new c(i, i2, i3, j, str, str2);
        synchronized (this) {
            try {
                int i4 = z8aVar.h;
                if (i4 == 0) {
                    map = this.i;
                } else if (i4 != 1) {
                    return;
                } else {
                    map = this.h;
                }
                a aVar = (a) map.get(z8aVar);
                if (aVar == null) {
                    aVar = new a();
                    map.put(z8aVar, aVar);
                }
                aVar.a.add(cVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
