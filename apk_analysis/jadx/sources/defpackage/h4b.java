package defpackage;

import com.google.android.gms.internal.auth.zzdh;

/* JADX INFO: loaded from: classes4.dex */
public final class h4b extends zzdh {
    public static final h4b b = new h4b();

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final Object zza() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final boolean zzb() {
        return false;
    }
}
