package defpackage;

import com.google.android.gms.internal.play_billing.zzhr;

/* JADX INFO: loaded from: classes4.dex */
public final class yhb {
    public final Object a;
    public final int b;

    public yhb(int i, zzhr zzhrVar) {
        this.a = zzhrVar;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof yhb)) {
            return false;
        }
        yhb yhbVar = (yhb) obj;
        return this.a == yhbVar.a && this.b == yhbVar.b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.a) * 65535) + this.b;
    }
}
