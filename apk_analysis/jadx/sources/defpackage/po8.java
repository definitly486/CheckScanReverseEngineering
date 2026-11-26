package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class po8 {
    public static final fh8 a;

    public static final class a extends gh4 implements ll3<ExecutorService> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final ExecutorService invoke() {
            return Executors.newFixedThreadPool(1);
        }
    }

    public static final class b extends gh4 implements ll3<Handler> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    static {
        nm4.b(a.f);
        a = nm4.b(b.f);
    }
}
