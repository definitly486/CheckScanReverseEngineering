package defpackage;

import com.google.android.gms.internal.measurement.zzlk;
import com.google.android.gms.internal.measurement.zzmc;
import com.google.android.gms.internal.measurement.zzmd;
import com.google.android.gms.internal.measurement.zzme;
import com.google.android.gms.internal.measurement.zzmk;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzqn;
import com.google.android.gms.measurement.internal.zzmb;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class n3c implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ n3c(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFutureZzb;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                zzmb zzmbVar = (zzmb) obj;
                zzmbVar.e = zzmbVar.j;
                break;
            default:
                final zzpg zzpgVar = (zzpg) obj;
                scc sccVarA = zzpgVar.a();
                String str = sccVarA.b;
                zzlk zzlkVar = zzpgVar.b;
                zzqn zzqnVarZzc = zzlkVar.zzd().zzc(false);
                if (zzqnVarZzc.zze()) {
                    if (i13.b(str) && !zzqnVarZzc.zzd()) {
                        u24 u24Var = u24.c;
                    } else {
                        com.google.android.gms.internal.measurement.zzmb zzmbVarZzb = zzme.zzb();
                        rcc rccVar = sccVarA.e;
                        int i2 = rccVar.a;
                        zzmc zzmcVarZza = zzmd.zza();
                        zzmcVarZza.zza(i2);
                        zzmcVarZza.zzb(rccVar.b);
                        zzmbVarZzb.zzb((zzmd) zzmcVarZza.zzbd());
                        if (!i13.b(str)) {
                            zzmbVarZzb.zza(str);
                        }
                        if (zzqnVarZzc.zzd()) {
                            zzmbVarZzb.zzc(zzpgVar.c);
                        }
                        listenableFutureZzb = zzlkVar.zzh().zzc((zzme) zzmbVarZzb.zzbd());
                    }
                } else if (i13.b(str)) {
                    u24 u24Var2 = u24.c;
                } else {
                    listenableFutureZzb = zzlkVar.zzh().zzb(str);
                }
                ks ksVar = new ks() { // from class: mac
                    @Override // defpackage.ks
                    public final ListenableFuture apply(Object obj2) {
                        int iZza = ((zzmk) obj2).zza();
                        if (iZza == 29501 || iZza == 29537 || iZza == 29538 || iZza == 29539 || iZza == 29540 || iZza == 29541 || iZza == 29542 || iZza == 29543 || iZza == 29544) {
                            zzpg zzpgVar2 = zzpgVar;
                            if (!zzpgVar2.g.b()) {
                                zzpgVar2.b();
                            }
                        }
                        return u24.c;
                    }
                };
                xr4 xr4VarZzg = zzlkVar.zzg();
                int i3 = p.m;
                p.a aVar = new p.a(listenableFutureZzb, zzmk.class, ksVar);
                listenableFutureZzb.addListener(aVar, nd5.a(xr4VarZzg, aVar));
                break;
        }
    }
}
