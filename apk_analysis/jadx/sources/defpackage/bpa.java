package defpackage;

import com.google.android.gms.internal.measurement.zzaat;
import com.google.android.gms.internal.measurement.zzabe;
import com.google.android.gms.internal.measurement.zzzj;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class bpa extends zzaat {
    public static final bpa b = new bpa(zzaat.zze());
    public final AtomicReference a;

    public bpa(zzaat zzaatVar) {
        this.a = new AtomicReference(zzaatVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzaat
    public final boolean zzb(String str, Level level, boolean z) {
        ((zzaat) this.a.get()).zzb(str, level, z);
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzaat
    public final zzabe zzc() {
        return ((zzaat) this.a.get()).zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzaat
    public final zzzj zzd() {
        return ((zzaat) this.a.get()).zzd();
    }
}
