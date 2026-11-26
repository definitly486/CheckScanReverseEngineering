package com.google.android.gms.internal.measurement;

import defpackage.kv2;
import defpackage.me0;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class zzyl {
    public final String a;
    public final Class b;
    public final boolean c;
    public final boolean d;
    public final long e;

    public zzyl(String str, Class cls, boolean z, boolean z2) {
        zzabr.zzd(str);
        this.a = str;
        this.b = cls;
        this.c = z;
        this.d = z2;
        int iIdentityHashCode = System.identityHashCode(this);
        long j = 0;
        for (int i = 0; i < 5; i++) {
            j |= 1 << (iIdentityHashCode & 63);
            iIdentityHashCode >>>= 6;
        }
        this.e = j;
    }

    public static zzyl zzc(String str, Class cls) {
        return new zzyl(str, cls, false, false);
    }

    public void a(Iterator it, zzyk zzykVar) {
        while (it.hasNext()) {
            b(it.next(), zzykVar);
        }
    }

    public void b(Object obj, zzyk zzykVar) {
        zzykVar.zza(this.a, obj);
    }

    public final String toString() {
        String name = getClass().getName();
        String name2 = this.b.getName();
        int length = name.length();
        int length2 = name2.length();
        String str = this.a;
        StringBuilder sb = new StringBuilder(str.length() + length + 1 + 1 + length2 + 1);
        kv2.c(sb, name, "/", str, "[");
        return me0.d(sb, name2, "]");
    }

    public final String zzd() {
        return this.a;
    }

    public final Object zze(Object obj) {
        return this.b.cast(obj);
    }

    public final boolean zzf() {
        return this.c;
    }

    public final void zzg(Object obj, zzyk zzykVar) {
        if (!this.d || zzaad.zza() <= 20) {
            b(obj, zzykVar);
        } else {
            zzykVar.zza(this.a, obj);
        }
    }

    public final void zzh(Iterator it, zzyk zzykVar) {
        zzabr.zzc(this.c, "non repeating key");
        if (!this.d || zzaad.zza() <= 20) {
            a(it, zzykVar);
        } else {
            while (it.hasNext()) {
                zzykVar.zza(this.a, it.next());
            }
        }
    }

    public final long zzi() {
        return this.e;
    }
}
