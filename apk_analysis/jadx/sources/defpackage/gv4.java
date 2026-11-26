package defpackage;

import android.util.Log;
import java.util.HashSet;

/* JADX INFO: loaded from: classes3.dex */
public final class gv4 {
    public static final dv4 a = new dv4();

    public static void a() {
        a.getClass();
        dt dtVar = ah4.a;
    }

    public static void b(String str) {
        a.getClass();
        HashSet hashSet = dv4.a;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, null);
        hashSet.add(str);
    }

    public static void c(String str, Throwable th) {
        a.getClass();
        HashSet hashSet = dv4.a;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th);
        hashSet.add(str);
    }
}
