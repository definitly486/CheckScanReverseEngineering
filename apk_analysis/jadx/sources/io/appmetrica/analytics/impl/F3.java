package io.appmetrica.analytics.impl;

import defpackage.aa4;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class F3 implements InterfaceC0940g8 {
    public final Map a;
    public final EnumC0914f8 b;

    public F3(Map<String, String> map, EnumC0914f8 enumC0914f8) {
        this.a = map;
        this.b = enumC0914f8;
    }

    public static F3 a(F3 f3, Map map, EnumC0914f8 enumC0914f8, int i, Object obj) {
        if ((i & 1) != 0) {
            map = f3.a;
        }
        if ((i & 2) != 0) {
            enumC0914f8 = f3.b;
        }
        f3.getClass();
        return new F3(map, enumC0914f8);
    }

    public final Map<String, String> b() {
        return this.a;
    }

    public final EnumC0914f8 c() {
        return this.b;
    }

    public final Map<String, String> d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F3)) {
            return false;
        }
        F3 f3 = (F3) obj;
        return aa4.e(this.a, f3.a) && this.b == f3.b;
    }

    public final int hashCode() {
        Map map = this.a;
        return this.b.hashCode() + ((map == null ? 0 : map.hashCode()) * 31);
    }

    public final String toString() {
        return "Candidate(clids=" + this.a + ", source=" + this.b + ')';
    }

    public final F3 a(Map<String, String> map, EnumC0914f8 enumC0914f8) {
        return new F3(map, enumC0914f8);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0940g8
    public final EnumC0914f8 a() {
        return this.b;
    }
}
