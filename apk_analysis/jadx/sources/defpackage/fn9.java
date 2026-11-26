package defpackage;

import android.os.SystemClock;
import android.util.LruCache;

/* JADX INFO: loaded from: classes4.dex */
public final class fn9 {
    public static final fn9 b;
    public boolean a;

    static {
        fn9 fn9Var = new fn9();
        new LruCache(10);
        b = fn9Var;
        SystemClock.elapsedRealtime();
    }
}
