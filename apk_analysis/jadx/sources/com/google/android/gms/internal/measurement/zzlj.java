package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.measurement.zzjx;
import com.google.android.gms.internal.measurement.zzlk;
import com.google.android.gms.internal.measurement.zzmn;
import com.google.android.gms.internal.measurement.zzqi;
import com.google.android.gms.internal.measurement.zzru;
import defpackage.f2c;
import defpackage.i2c;
import defpackage.kd8;
import defpackage.ld8;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlj {
    public Context a;
    public kd8 b;
    public kd8 c;
    public i2c d;
    public kd8 e;
    public f2c f;

    public zzlj() {
        throw null;
    }

    public final zzlj zza(Context context) {
        this.a = context;
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [i2c] */
    /* JADX WARN: Type inference failed for: r0v6, types: [f2c] */
    public final zzlk zzb() {
        this.a.getClass();
        if (this.b == null) {
            this.b = zzlk.m;
        }
        if (this.c == null) {
            final Context context = this.a;
            Object obj = zzlk.j;
            this.c = ld8.a(new kd8() { // from class: t2c
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final /* synthetic */ Object get2() {
                    Object obj2 = zzlk.j;
                    return new zzmn(zzjx.zza(context));
                }
            });
        }
        if (this.d == null) {
            this.d = new kd8() { // from class: i2c
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    return new nf6(new zzqi(this.b.b, 10));
                }
            };
        }
        if (this.e == null) {
            Context context2 = this.a;
            Object obj2 = zzlk.j;
            final ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, zzrx.zza(context2).zza(), new zzsd());
            this.e = ld8.a(new kd8() { // from class: q2c
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final /* synthetic */ Object get2() {
                    Object obj3 = zzlk.j;
                    return new zzru(arrayList);
                }
            });
        }
        if (this.f == null) {
            this.f = new kd8() { // from class: f2c
                @Override // defpackage.kd8
                /* JADX INFO: renamed from: get */
                public final Object get2() {
                    Context context3 = this.b.a;
                    Object obj3 = zzlk.j;
                    try {
                        ApplicationInfo applicationInfo = context3.getPackageManager().getApplicationInfo("com.google.android.gms", 0);
                        applicationInfo.getClass();
                        return new nf6(applicationInfo);
                    } catch (PackageManager.NameNotFoundException unused) {
                        return l.b;
                    }
                }
            };
        }
        return new zzlk(this.a, this.b, this.c, this.d, this.e, this.f);
    }
}
