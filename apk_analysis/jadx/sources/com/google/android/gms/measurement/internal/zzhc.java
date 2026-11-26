package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.hnb;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhc {
    public final String a;
    public final boolean b;
    public boolean c;
    public boolean d;
    public final /* synthetic */ hnb e;

    public zzhc(hnb hnbVar, String str, boolean z) {
        Objects.requireNonNull(hnbVar);
        this.e = hnbVar;
        Preconditions.checkNotEmpty(str);
        this.a = str;
        this.b = z;
    }

    public final boolean zza() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.d().getBoolean(this.a, this.b);
        }
        return this.d;
    }

    public final void zzb(boolean z) {
        SharedPreferences.Editor editorEdit = this.e.d().edit();
        editorEdit.putBoolean(this.a, z);
        editorEdit.apply();
        this.d = z;
    }
}
