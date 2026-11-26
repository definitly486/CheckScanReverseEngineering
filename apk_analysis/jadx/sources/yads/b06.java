package yads;

import android.os.Trace;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b06 {
    public static void a(String str) {
        if (u56.a >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void a() {
        if (u56.a >= 18) {
            Trace.endSection();
        }
    }
}
