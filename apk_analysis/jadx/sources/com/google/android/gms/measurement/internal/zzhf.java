package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.hnb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhf {
    public final long a;
    public final /* synthetic */ hnb b;

    public /* synthetic */ zzhf(hnb hnbVar, long j) {
        this.b = hnbVar;
        Preconditions.checkNotEmpty("health_monitor");
        Preconditions.checkArgument(j > 0);
        this.a = j;
    }

    public final void a() {
        hnb hnbVar = this.b;
        hnbVar.zzg();
        long jCurrentTimeMillis = hnbVar.a.zzba().currentTimeMillis();
        SharedPreferences.Editor editorEdit = hnbVar.d().edit();
        editorEdit.remove("health_monitor:count");
        editorEdit.remove("health_monitor:value");
        editorEdit.putLong("health_monitor:start", jCurrentTimeMillis);
        editorEdit.apply();
    }

    public final void zza(String str, long j) {
        hnb hnbVar = this.b;
        hnbVar.zzg();
        if (hnbVar.d().getLong("health_monitor:start", 0L) == 0) {
            a();
        }
        if (str == null) {
            str = "";
        }
        long j2 = hnbVar.d().getLong("health_monitor:count", 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor editorEdit = hnbVar.d().edit();
            editorEdit.putString("health_monitor:value", str);
            editorEdit.putLong("health_monitor:count", 1L);
            editorEdit.apply();
            return;
        }
        long jNextLong = hnbVar.a.zzk().J().nextLong() & Long.MAX_VALUE;
        long j3 = j2 + 1;
        long j4 = Long.MAX_VALUE / j3;
        SharedPreferences.Editor editorEdit2 = hnbVar.d().edit();
        if (jNextLong < j4) {
            editorEdit2.putString("health_monitor:value", str);
        }
        editorEdit2.putLong("health_monitor:count", j3);
        editorEdit2.apply();
    }

    public final Pair zzb() {
        long jAbs;
        hnb hnbVar = this.b;
        hnbVar.zzg();
        hnbVar.zzg();
        long j = hnbVar.d().getLong("health_monitor:start", 0L);
        if (j == 0) {
            a();
            jAbs = 0;
        } else {
            jAbs = Math.abs(j - hnbVar.a.zzba().currentTimeMillis());
        }
        long j2 = this.a;
        if (jAbs < j2) {
            return null;
        }
        if (jAbs > j2 + j2) {
            a();
            return null;
        }
        String string = hnbVar.d().getString("health_monitor:value", null);
        long j3 = hnbVar.d().getLong("health_monitor:count", 0L);
        a();
        return (string == null || j3 <= 0) ? hnb.z : new Pair(string, Long.valueOf(j3));
    }
}
