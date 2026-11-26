package defpackage;

import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zrb implements Callable {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ zzjd e;

    public zrb(zzjd zzjdVar, String str, String str2, String str3) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        zzpg zzpgVar = this.e.a;
        zzpgVar.Q();
        return zzpgVar.zzj().X(this.b, this.c, this.d);
    }
}
