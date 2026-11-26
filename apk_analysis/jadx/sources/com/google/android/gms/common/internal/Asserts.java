package com.google.android.gms.common.internal;

import android.os.Looper;
import android.util.Log;
import defpackage.ah;
import defpackage.bj;
import defpackage.fg;
import defpackage.kv2;
import defpackage.ud;

/* JADX INFO: loaded from: classes4.dex */
public final class Asserts {
    public Asserts() {
        throw new AssertionError("Uninstantiable");
    }

    public static void checkMainThread(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        String strValueOf = String.valueOf(Thread.currentThread());
        String strValueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(strValueOf2.length() + strValueOf.length() + 56 + 1);
        kv2.c(sb, "checkMainThread: current thread ", strValueOf, " IS NOT the main thread ", strValueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        ah.f(str);
    }

    public static void checkNotMainThread(String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        String strValueOf = String.valueOf(Thread.currentThread());
        String strValueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        StringBuilder sb = new StringBuilder(strValueOf2.length() + strValueOf.length() + 55 + 1);
        kv2.c(sb, "checkNotMainThread: current thread ", strValueOf, " IS the main thread ", strValueOf2);
        sb.append("!");
        Log.e("Asserts", sb.toString());
        ah.f(str);
    }

    public static void checkNotNull(Object obj) {
        if (obj != null) {
            return;
        }
        fg.c("null reference");
    }

    public static void checkNull(Object obj) {
        if (obj == null) {
            return;
        }
        fg.c("non-null reference");
    }

    public static void checkState(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void checkNotNull(Object obj, Object obj2) {
        if (obj != null) {
            return;
        }
        bj.f(obj2);
    }

    public static void checkNull(Object obj, Object obj2) {
        if (obj == null) {
            return;
        }
        bj.f(obj2);
    }

    public static void checkState(boolean z) {
        if (z) {
            return;
        }
        ud.g();
    }
}
