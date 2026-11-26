package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzww {
    public final String toString() {
        return TextUtils.join(" -> ", zza());
    }

    public abstract com.google.common.collect.j zza();

    public abstract com.google.common.collect.j zzb();

    public abstract UUID zzc();

    public abstract long zzd();
}
