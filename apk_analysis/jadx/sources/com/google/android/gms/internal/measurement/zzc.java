package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzk;
import com.google.android.gms.internal.measurement.zzv;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzc {
    public final zzf a;
    public zzg b;
    public final zzab c;
    public final zzz d;

    public zzc() {
        zzf zzfVar = new zzf();
        this.a = zzfVar;
        this.b = zzfVar.b.zzc();
        this.c = new zzab();
        this.d = new zzz();
        Callable callable = new Callable() { // from class: ewa
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzv(this.b.d);
            }
        };
        zzj zzjVar = zzfVar.d;
        zzjVar.zza("internal.registerCallback", callable);
        zzjVar.zza("internal.eventLogger", new Callable() { // from class: moa
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzk(this.b.c);
            }
        });
    }

    public final void zza(String str, Callable callable) {
        this.a.d.zza(str, callable);
    }

    public final boolean zzb(zzaa zzaaVar) throws zzd {
        try {
            zzab zzabVar = this.c;
            zzabVar.zzb(zzaaVar);
            this.a.c.zze("runtime.counter", new zzah(Double.valueOf(0.0d)));
            this.d.zzb(this.b.zzc(), zzabVar);
            return zzc() || zzd();
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }

    public final boolean zzc() {
        zzab zzabVar = this.c;
        return !zzabVar.zzc().equals(zzabVar.zza());
    }

    public final boolean zzd() {
        return !this.c.zzf().isEmpty();
    }

    public final zzab zze() {
        return this.c;
    }

    public final void zzf(zzja zzjaVar) throws zzd {
        zzai zzaiVar;
        try {
            zzf zzfVar = this.a;
            this.b = zzfVar.b.zzc();
            if (zzfVar.zza(this.b, (zzje[]) zzjaVar.zza().toArray(new zzje[0])) instanceof zzag) {
                throw new IllegalStateException("Program loading failed");
            }
            for (zziy zziyVar : zzjaVar.zzb().zza()) {
                List listZzb = zziyVar.zzb();
                String strZza = zziyVar.zza();
                Iterator it = listZzb.iterator();
                while (it.hasNext()) {
                    zzao zzaoVarZza = zzfVar.zza(this.b, (zzje) it.next());
                    if (!(zzaoVarZza instanceof zzal)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    zzg zzgVar = this.b;
                    if (zzgVar.zzd(strZza)) {
                        zzao zzaoVarZzh = zzgVar.zzh(strZza);
                        if (!(zzaoVarZzh instanceof zzai)) {
                            throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(strZza)));
                        }
                        zzaiVar = (zzai) zzaoVarZzh;
                    } else {
                        zzaiVar = null;
                    }
                    if (zzaiVar == null) {
                        throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(strZza)));
                    }
                    zzaiVar.zza(this.b, Collections.singletonList(zzaoVarZza));
                }
            }
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }
}
