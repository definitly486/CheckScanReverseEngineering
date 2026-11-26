package defpackage;

import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class htb implements Callable {
    public final /* synthetic */ zzjd b;

    public htb(zzjd zzjdVar, zzbh zzbhVar, String str) {
        this.b = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzpg zzpgVar = this.b.a;
        zzpgVar.Q();
        zzpgVar.zzn().zzg();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
