package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.hnb;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhg {
    public final String a;
    public boolean b;
    public String c;
    public final /* synthetic */ hnb d;

    public zzhg(hnb hnbVar, String str, String str2) {
        Objects.requireNonNull(hnbVar);
        this.d = hnbVar;
        Preconditions.checkNotEmpty(str);
        this.a = str;
    }

    public final String zza() {
        if (!this.b) {
            this.b = true;
            this.c = this.d.d().getString(this.a, null);
        }
        return this.c;
    }

    public final void zzb(String str) {
        SharedPreferences.Editor editorEdit = this.d.d().edit();
        editorEdit.putString(this.a, str);
        editorEdit.apply();
        this.c = str;
    }
}
