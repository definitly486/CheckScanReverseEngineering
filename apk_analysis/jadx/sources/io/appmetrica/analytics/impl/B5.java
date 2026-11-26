package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.xp;

/* JADX INFO: loaded from: classes5.dex */
public final class B5 {
    public final String a;

    public B5(String str) {
        this.a = str;
    }

    public static B5 a(B5 b5, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = b5.a;
        }
        b5.getClass();
        return new B5(str);
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof B5) && aa4.e(this.a, ((B5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return xp.e(new StringBuilder("ConstantModuleEntryPointProvider(className="), this.a, ')');
    }

    public final B5 a(String str) {
        return new B5(str);
    }

    public final String a() {
        return this.a;
    }
}
