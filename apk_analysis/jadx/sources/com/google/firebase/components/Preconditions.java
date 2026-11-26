package com.google.firebase.components;

import defpackage.ah;
import defpackage.fg;
import defpackage.o2;

/* JADX INFO: loaded from: classes4.dex */
public final class Preconditions {
    public static void checkArgument(boolean z, String str) {
        if (z) {
            return;
        }
        fg.c(str);
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        o2.d(str);
        return null;
    }

    public static void checkState(boolean z, String str) {
        if (z) {
            return;
        }
        ah.f(str);
    }

    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }
}
