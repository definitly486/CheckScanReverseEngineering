package defpackage;

import com.google.android.gms.internal.measurement.zzafc;

/* JADX INFO: loaded from: classes4.dex */
public final class dra {
    public final Object a;
    public final int b;

    public dra(int i, zzafc zzafcVar) {
        this.a = zzafcVar;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dra)) {
            return false;
        }
        dra draVar = (dra) obj;
        return this.a == draVar.a && this.b == draVar.b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.a) * 65535) + this.b;
    }
}
