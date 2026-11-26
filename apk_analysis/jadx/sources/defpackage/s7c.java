package defpackage;

import com.google.android.gms.measurement.internal.zznt;
import com.google.android.gms.measurement.internal.zzpg;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class s7c implements Runnable {
    public final /* synthetic */ zzpg b;
    public final /* synthetic */ Runnable c;

    public s7c(zznt zzntVar, zzpg zzpgVar, Runnable runnable) {
        this.b = zzpgVar;
        this.c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.b;
        zzpgVar.Q();
        zzpgVar.zzaX().zzg();
        ArrayList arrayList = zzpgVar.p;
        if (arrayList == null) {
            arrayList = new ArrayList();
            zzpgVar.p = arrayList;
        }
        arrayList.add(this.c);
        zzpgVar.l();
    }
}
