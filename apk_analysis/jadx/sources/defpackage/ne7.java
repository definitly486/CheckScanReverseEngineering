package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class ne7 {
    public static final he7 a = d97.a(new h());
    public static final he7 b = d97.a(new b());
    public static final he7 c = d97.a(new c());
    public static final vy8 d = vy8.c;

    public static final class a {
        public static final uu1 a = new uu1();
    }

    public static final class b implements Callable<he7> {
        @Override // java.util.concurrent.Callable
        public final he7 call() {
            return a.a;
        }
    }

    public static final class c implements Callable<he7> {
        @Override // java.util.concurrent.Callable
        public final he7 call() {
            return d.a;
        }
    }

    public static final class d {
        public static final ja4 a = new ja4();
    }

    public static final class e {
        public static final nn5 a = new nn5();
    }

    public static final class f implements Callable<he7> {
        @Override // java.util.concurrent.Callable
        public final he7 call() {
            return e.a;
        }
    }

    public static final class g {
        public static final b18 a = new b18();
    }

    public static final class h implements Callable<he7> {
        @Override // java.util.concurrent.Callable
        public final he7 call() {
            return g.a;
        }
    }

    static {
        d97.a(new f());
    }
}
