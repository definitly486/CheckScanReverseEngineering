package defpackage;

import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class rqb implements Callable {
    public final /* synthetic */ String b;
    public final /* synthetic */ zzjd c;

    public rqb(zzjd zzjdVar, String str) {
        this.b = str;
        this.c = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        zzpg zzpgVar = this.c.a;
        zzpgVar.Q();
        return zzpgVar.zzj().S(this.b);
    }
}
