package defpackage;

import com.google.android.gms.internal.measurement.zzyd;
import com.google.android.gms.internal.measurement.zzyf;

/* JADX INFO: loaded from: classes4.dex */
public final class cic implements Runnable {
    public final /* synthetic */ zzyd b;
    public final /* synthetic */ zzyf c;

    public cic(zzyf zzyfVar, zzyd zzydVar) {
        this.b = zzydVar;
        this.c = zzyfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.a.remove(this.b);
    }
}
