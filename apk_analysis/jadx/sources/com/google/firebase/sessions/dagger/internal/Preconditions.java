package com.google.firebase.sessions.dagger.internal;

import defpackage.fg;
import defpackage.g2;
import defpackage.o2;

/* JADX INFO: loaded from: classes4.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static <T> void checkBuilderRequirement(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        g2.d(cls.getCanonicalName());
    }

    public static <T> T checkNotNull(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        if (!str.contains("%s")) {
            fg.c("errorMessageTemplate has no format specifiers");
            return null;
        }
        if (str.indexOf("%s") != str.lastIndexOf("%s")) {
            fg.c("errorMessageTemplate has more than one format specifier");
            return null;
        }
        if (obj instanceof Class) {
            obj = ((Class) obj).getCanonicalName();
        }
        o2.d(str.replace("%s", String.valueOf(obj)));
        return null;
    }

    public static <T> T checkNotNullFromComponent(T t) {
        if (t != null) {
            return t;
        }
        o2.d("Cannot return null from a non-@Nullable component method");
        return null;
    }

    public static <T> T checkNotNullFromProvides(T t) {
        if (t != null) {
            return t;
        }
        o2.d("Cannot return null from a non-@Nullable @Provides method");
        return null;
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        o2.d(str);
        return null;
    }

    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }
}
