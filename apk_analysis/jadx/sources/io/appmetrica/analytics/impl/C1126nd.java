package io.appmetrica.analytics.impl;

import defpackage.aa4;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.nd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1126nd {
    public final String a;
    public final boolean b;

    public C1126nd(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1126nd)) {
            return false;
        }
        C1126nd c1126nd = (C1126nd) obj;
        return aa4.e(this.a, c1126nd.a) && this.b == c1126nd.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ModuleStatus(moduleName=");
        sb.append(this.a);
        sb.append(", loaded=");
        return defpackage.sg.d(sb, this.b, ')');
    }
}
