package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class po2 {
    public static final fh8 a;
    public static final fh8 b;

    public static final class a extends gh4 implements ll3<mo2> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final mo2 invoke() {
            return new mo2();
        }
    }

    public static final class b extends gh4 implements ll3<oo2> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final oo2 invoke() {
            return new oo2(new Handler(Looper.getMainLooper()));
        }
    }

    public static final class c extends gh4 implements ll3<ScheduledThreadPoolExecutor> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final ScheduledThreadPoolExecutor invoke() {
            return new ScheduledThreadPoolExecutor(1);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class d extends gh4 implements ll3<ThreadPoolExecutor> {
        public static final d f = new d(0);

        @Override // defpackage.ll3
        public final ThreadPoolExecutor invoke() {
            return new ThreadPoolExecutor(3, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue());
        }
    }

    static {
        nm4.b(c.f);
        a = nm4.b(d.f);
        nm4.b(b.f);
        b = nm4.b(a.f);
        int i = uy8.a;
    }

    public static jo2 a() {
        synchronized (sm1.c) {
        }
        return (jo2) b.getValue();
    }
}
