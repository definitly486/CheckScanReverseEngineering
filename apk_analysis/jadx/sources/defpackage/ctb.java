package defpackage;

import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;

/* JADX INFO: loaded from: classes4.dex */
public final class ctb implements Runnable {
    public final /* synthetic */ zzbh b;
    public final /* synthetic */ String c;
    public final /* synthetic */ zzjd d;

    public ctb(zzjd zzjdVar, zzbh zzbhVar, String str) {
        this.b = zzbhVar;
        this.c = str;
        this.d = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzpg zzpgVar = this.d.a;
        zzpgVar.Q();
        zzpgVar.c(this.b, this.c);
    }
}
