package defpackage;

import com.google.android.gms.measurement.internal.zzao;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class vsb implements Callable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ zzjd c;

    public vsb(zzjd zzjdVar, zzr zzrVar) {
        this.b = zzrVar;
        this.c = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        zzpg zzpgVar = this.c.a;
        zzpgVar.Q();
        return new zzao(zzpgVar.d0(this.b.zza));
    }
}
