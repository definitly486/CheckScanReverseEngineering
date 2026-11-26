package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.UserHandle;

/* JADX INFO: loaded from: classes4.dex */
public final class zzn {
    public final String a;
    public final String b;
    public final ComponentName c;
    public final boolean d;
    public final UserHandle e;

    public zzn(String str, String str2, int i, boolean z, UserHandle userHandle) {
        Preconditions.checkNotEmpty(str);
        this.a = str;
        Preconditions.checkNotEmpty(str2);
        this.b = str2;
        this.c = null;
        this.d = z;
        this.e = userHandle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        return Objects.equal(this.a, zznVar.a) && Objects.equal(this.b, zznVar.b) && Objects.equal(this.c, zznVar.c) && this.d == zznVar.d && Objects.equal(this.e, zznVar.e);
    }

    public final int hashCode() {
        return Objects.hashCode(this.a, this.b, this.c, 4225, Boolean.valueOf(this.d), this.e);
    }

    public final String toString() {
        String str = this.a;
        if (str != null) {
            return str;
        }
        ComponentName componentName = this.c;
        Preconditions.checkNotNull(componentName);
        return componentName.flattenToString();
    }

    public final String zza() {
        return this.a;
    }

    public final String zzb() {
        return this.b;
    }

    public final ComponentName zzc() {
        return this.c;
    }

    public final boolean zzd() {
        return this.d;
    }

    public final UserHandle zze() {
        return this.e;
    }

    public zzn(String str, int i, boolean z) {
        this(str, "com.google.android.gms", 4225, false, null);
    }

    public zzn(ComponentName componentName, int i, UserHandle userHandle) {
        this.a = null;
        this.b = null;
        Preconditions.checkNotNull(componentName);
        this.c = componentName;
        this.d = false;
        this.e = null;
    }
}
