package defpackage;

import com.google.android.gms.internal.measurement.zzadf;
import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzti;
import com.google.android.gms.internal.measurement.zztr;
import com.google.android.gms.internal.measurement.zzui;
import com.google.android.gms.internal.measurement.zzuv;
import com.google.android.gms.internal.measurement.zzuw;
import com.google.android.gms.internal.measurement.zzve;
import com.google.android.gms.internal.measurement.zzwb;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class nec extends zzuw {
    public static final nec a = new nec();

    @Override // com.google.android.gms.internal.measurement.zzuw
    public final String zza(zzti zztiVar) {
        zztiVar.getClass();
        return "singleproc";
    }

    @Override // com.google.android.gms.internal.measurement.zzuw
    public final zzuv zzb(zztr zztrVar, String str, Executor executor, zzru zzruVar, zzti zztiVar) {
        zztiVar.getClass();
        return new zzui(str, en3.X(zztrVar.zza()), zzve.zzd(zztrVar.zzb(), zztrVar.zzf() ? zzadf.zzb() : zzadf.zza()), executor, zzruVar, zztrVar.zzc(), zzwb.zzb());
    }
}
