package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzlj;

/* JADX INFO: loaded from: classes4.dex */
public final class qyb implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ long d;
    public final /* synthetic */ long e;
    public final /* synthetic */ Bundle f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ zzlj j;

    public qyb(zzlj zzljVar, String str, String str2, long j, long j2, Bundle bundle, boolean z, boolean z2, boolean z3) {
        this.b = str;
        this.c = str2;
        this.d = j;
        this.e = j2;
        this.f = bundle;
        this.g = z;
        this.h = z2;
        this.i = z3;
        this.j = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.j.d(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
    }
}
