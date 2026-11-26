package defpackage;

import com.google.android.gms.internal.auth.zzdh;

/* JADX INFO: loaded from: classes4.dex */
public final class v4b extends zzdh {
    public final Object b;

    public v4b(Object obj) {
        this.b = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof v4b) {
            return this.b.equals(((v4b) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + 1502476572;
    }

    public final String toString() {
        return me0.c("Optional.of(", this.b.toString(), ")");
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final Object zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final boolean zzb() {
        return true;
    }
}
