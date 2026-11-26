package com.google.android.gms.internal.play_billing;

import defpackage.ah;
import defpackage.bhb;
import defpackage.ceb;
import defpackage.clb;
import defpackage.kqb;
import defpackage.qqb;
import defpackage.slb;
import defpackage.xib;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class q implements kqb {
    public final zzhr a;
    public final boolean b;

    public q(defpackage.g gVar, zzhr zzhrVar) {
        this.b = zzhrVar instanceof zzgm;
        this.a = zzhrVar;
    }

    @Override // defpackage.kqb
    public final boolean a(Object obj) {
        return ((zzgm) obj).zzb.h();
    }

    @Override // defpackage.kqb
    public final void b(Object obj) {
        ((zzgp) obj).zzc.zzh();
        ((zzgm) obj).zzb.e();
    }

    @Override // defpackage.kqb
    public final void c(Object obj, Object obj2) {
        r.o(obj, obj2);
        if (!this.b || ((zzgm) obj2).zzb.a.isEmpty()) {
            return;
        }
        throw null;
    }

    @Override // defpackage.kqb
    public final void d(Object obj, byte[] bArr, int i, int i2, ceb cebVar) {
        zzgp zzgpVar = (zzgp) obj;
        if (zzgpVar.zzc == zzir.zzc()) {
            zzgpVar.zzc = zzir.a();
        }
        throw null;
    }

    @Override // defpackage.kqb
    public final int e(zzgp zzgpVar) {
        int iZzb = zzgpVar.zzc.zzb();
        if (!this.b) {
            return iZzb;
        }
        qqb qqbVar = ((zzgm) zzgpVar).zzb.a;
        int i = qqbVar.c;
        int iJ = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iJ += xib.j(qqbVar.d(i2));
        }
        Iterator it = qqbVar.b().iterator();
        while (it.hasNext()) {
            iJ += xib.j((Map.Entry) it.next());
        }
        return iZzb + iJ;
    }

    @Override // defpackage.kqb
    public final int f(zzgp zzgpVar) {
        int iHashCode = zzgpVar.zzc.hashCode();
        if (!this.b) {
            return iHashCode;
        }
        return ((zzgm) zzgpVar).zzb.a.hashCode() + (iHashCode * 53);
    }

    @Override // defpackage.kqb
    public final boolean g(zzgp zzgpVar, zzgp zzgpVar2) {
        if (!zzgpVar.zzc.equals(zzgpVar2.zzc)) {
            return false;
        }
        if (this.b) {
            return ((zzgm) zzgpVar).zzb.equals(((zzgm) zzgpVar2).zzb);
        }
        return true;
    }

    @Override // defpackage.kqb
    public final void h(Object obj, bhb bhbVar) {
        zzfp zzfpVar;
        Iterator itD = ((zzgm) obj).zzb.d();
        while (itD.hasNext()) {
            Map.Entry entry = (Map.Entry) itD.next();
            zzgg zzggVar = (zzgg) entry.getKey();
            if (zzggVar.zzc() != zzjh.zzi || zzggVar.zze() || zzggVar.zzd()) {
                ah.f("Found invalid MessageSet item.");
                return;
            }
            if (entry instanceof clb) {
                int iZza = zzggVar.zza();
                slb slbVar = (slb) ((clb) entry).b.getValue();
                if (slbVar.c != null) {
                    zzfpVar = slbVar.c;
                } else {
                    synchronized (slbVar) {
                        try {
                            if (slbVar.c != null) {
                                zzfpVar = slbVar.c;
                            } else {
                                slbVar.c = slbVar.d.zzj();
                                zzfpVar = slbVar.c;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                bhbVar.c(iZza, zzfpVar);
            } else {
                bhbVar.c(zzggVar.zza(), entry.getValue());
            }
        }
        zzir zzirVar = ((zzgp) obj).zzc;
        for (int i = 0; i < zzirVar.a; i++) {
            bhbVar.c(zzirVar.b[i] >>> 3, zzirVar.c[i]);
        }
    }

    @Override // defpackage.kqb
    public final Object zze() {
        zzhr zzhrVar = this.a;
        return zzhrVar instanceof zzgp ? (zzgp) ((zzgp) zzhrVar).g(4) : zzhrVar.zzw().zzk();
    }
}
