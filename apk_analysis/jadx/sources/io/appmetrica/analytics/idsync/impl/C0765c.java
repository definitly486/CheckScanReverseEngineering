package io.appmetrica.analytics.idsync.impl;

import defpackage.aa4;
import defpackage.qg;
import defpackage.vg;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0765c {
    public final boolean a;
    public final long b;
    public final List c;

    public C0765c(boolean z, long j, ArrayList arrayList) {
        this.a = z;
        this.b = j;
        this.c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0765c)) {
            return false;
        }
        C0765c c0765c = (C0765c) obj;
        return this.a == c0765c.a && this.b == c0765c.b && aa4.e(this.c, c0765c.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + vg.b(Boolean.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IdSyncConfig(enabled=");
        sb.append(this.a);
        sb.append(", launchDelay=");
        sb.append(this.b);
        sb.append(", requests=");
        return qg.f(sb, this.c, ')');
    }
}
