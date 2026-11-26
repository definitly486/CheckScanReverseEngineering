package io.appmetrica.analytics.impl;

import defpackage.aa4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class G3 implements InterfaceC0837c8 {
    public final F3 a;
    public final List b;

    public G3(F3 f3, List<F3> list) {
        this.a = f3;
        this.b = list;
    }

    public static G3 a(G3 g3, F3 f3, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            f3 = g3.a;
        }
        if ((i & 2) != 0) {
            list = g3.b;
        }
        g3.getClass();
        return new G3(f3, list);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0837c8
    public final Object b() {
        return this.a;
    }

    public final F3 c() {
        return this.a;
    }

    public final List<F3> d() {
        return this.b;
    }

    public final F3 e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof G3)) {
            return false;
        }
        G3 g3 = (G3) obj;
        return aa4.e(this.a, g3.a) && aa4.e(this.b, g3.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ClidsInfo(chosen=");
        sb.append(this.a);
        sb.append(", candidates=");
        return defpackage.qg.f(sb, this.b, ')');
    }

    public final G3 a(F3 f3, List<F3> list) {
        return new G3(f3, list);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0837c8
    public final List<F3> a() {
        return this.b;
    }
}
