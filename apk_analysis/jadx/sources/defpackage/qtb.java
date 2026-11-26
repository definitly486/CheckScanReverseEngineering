package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class qtb implements Callable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ Bundle c;
    public final /* synthetic */ zzjd d;

    public qtb(zzjd zzjdVar, zzr zzrVar, Bundle bundle) {
        this.b = zzrVar;
        this.c = bundle;
        this.d = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        zzpg zzpgVar = this.d.a;
        zzpgVar.Q();
        return zzpgVar.Y(this.b, this.c);
    }
}
