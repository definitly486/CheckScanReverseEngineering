package defpackage;

import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzlu;
import com.google.android.gms.measurement.internal.zzpg;

/* JADX INFO: loaded from: classes4.dex */
public final class grb implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ long e;
    public final /* synthetic */ zzjd f;

    public grb(zzjd zzjdVar, String str, String str2, String str3, long j) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = j;
        this.f = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.f.a;
        String str = this.c;
        String str2 = this.b;
        if (str2 == null) {
            zzpgVar.zzau(str, null);
        } else {
            zzpgVar.zzau(str, new zzlu(this.d, str2, this.e));
        }
    }
}
