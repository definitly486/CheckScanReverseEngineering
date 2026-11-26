package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.SystemClock;
import defpackage.ah;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public final class zzry {
    public static File zza(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            return filesDir;
        }
        SystemClock.sleep(100L);
        File filesDir2 = context.getFilesDir();
        if (filesDir2 != null) {
            return filesDir2;
        }
        ah.f("getFilesDir returned null twice.");
        return null;
    }
}
