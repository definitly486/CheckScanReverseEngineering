package defpackage;

import android.util.Log;
import com.google.android.gms.measurement.internal.zzgm;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjs;

/* JADX INFO: loaded from: classes5.dex */
public final class lx2 implements zzgm {
    public final Object a;

    public lx2() {
        uo4 uo4Var = uo4.NONE;
        uo4Var.getClass();
        this.a = uo4Var;
    }

    public void a(uo4 uo4Var, String str) {
        uo4Var.getClass();
        if (((uo4) this.a).compareTo(uo4Var) <= 0) {
            uo4Var.getClass();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgm
    public boolean zza() {
        return Log.isLoggable(((zzic) this.a).zzaW().f(), 3);
    }

    public lx2(zzic zzicVar, zzjs zzjsVar) {
        this.a = zzicVar;
    }
}
