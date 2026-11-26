package com.google.android.gms.internal.measurement;

import defpackage.s3c;
import java.util.concurrent.Executor;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlz {
    public static final void zza(Level level, Executor executor, String str, Object... objArr) {
        executor.execute(zzxa.zza(new s3c(level, null, str, objArr)));
    }

    public static final void zzb(Level level, Executor executor, Throwable th, String str, Object... objArr) {
        executor.execute(zzxa.zza(new s3c(level, th, str, objArr)));
    }
}
