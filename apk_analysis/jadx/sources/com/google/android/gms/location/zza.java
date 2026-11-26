package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zza {
    public long a = Long.MIN_VALUE;

    public final zza zza(long j) {
        Preconditions.checkArgument(j >= 0, "intervalMillis can't be negative.");
        this.a = j;
        return this;
    }

    public final zzb zzb() {
        Preconditions.checkState(this.a != Long.MIN_VALUE, "Must set intervalMillis.");
        return new zzb(this.a, true, null, null, null, false, null, 0L, null);
    }
}
