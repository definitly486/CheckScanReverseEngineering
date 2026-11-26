package defpackage;

import android.content.ComponentName;
import android.content.Context;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznf;
import com.google.android.gms.measurement.internal.zznl;

/* JADX INFO: loaded from: classes4.dex */
public final class fl2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fl2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((gl2) obj).e.m();
                break;
            default:
                zznl zznlVar = ((zznf) obj).d;
                zzic zzicVar = zznlVar.a;
                Context contextZzaZ = zzicVar.zzaZ();
                zzicVar.zzaV();
                zznlVar.e(new ComponentName(contextZzaZ, "com.google.android.gms.measurement.AppMeasurementService"));
                break;
        }
    }
}
