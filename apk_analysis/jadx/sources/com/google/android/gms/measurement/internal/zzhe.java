package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.hnb;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhe {
    public final String a;
    public final long b;
    public boolean c;
    public long d;
    public final /* synthetic */ hnb e;

    public zzhe(hnb hnbVar, String str, long j) {
        Objects.requireNonNull(hnbVar);
        this.e = hnbVar;
        Preconditions.checkNotEmpty(str);
        this.a = str;
        this.b = j;
    }

    public final long zza() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.d().getLong(this.a, this.b);
        }
        return this.d;
    }

    public final void zzb(long j) {
        SharedPreferences.Editor editorEdit = this.e.d().edit();
        editorEdit.putLong(this.a, j);
        editorEdit.apply();
        this.d = j;
    }
}
