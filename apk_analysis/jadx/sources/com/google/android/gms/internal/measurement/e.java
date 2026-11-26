package com.google.android.gms.internal.measurement;

import defpackage.ah;
import defpackage.bra;
import defpackage.fra;
import defpackage.gqa;
import defpackage.gra;
import defpackage.nsa;
import defpackage.osa;
import defpackage.pqa;
import defpackage.qra;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements nsa {
    public final zzafc a;
    public final g b;
    public final boolean c;

    public e(g gVar, zzafc zzafcVar) {
        b bVar = fra.a;
        this.b = gVar;
        this.c = zzafcVar instanceof zzadr;
        this.a = zzafcVar;
    }

    @Override // defpackage.nsa
    public final void a(Object obj) {
        this.b.getClass();
        ((zzadu) obj).zzc.zzd();
        fra.a.a(obj);
    }

    @Override // defpackage.nsa
    public final void b(Object obj, pqa pqaVar, zzadf zzadfVar) {
        this.b.getClass();
        g.a(obj);
        throw null;
    }

    @Override // defpackage.nsa
    public final void c(Object obj, byte[] bArr, int i, int i2, gqa gqaVar) {
        zzadu zzaduVar = (zzadu) obj;
        if (zzaduVar.zzc == zzaga.zza()) {
            zzaduVar.zzc = zzaga.a();
        }
        throw null;
    }

    @Override // defpackage.nsa
    public final void d(Object obj, bra braVar) {
        Iterator itB = ((zzadr) obj).zzb.b();
        while (itB.hasNext()) {
            Map.Entry entry = (Map.Entry) itB.next();
            zzadj zzadjVar = (zzadj) entry.getKey();
            if (zzadjVar.zzc() != zzagn.zzi || zzadjVar.zzd() || zzadjVar.zze()) {
                ah.f("Found invalid MessageSet item.");
                return;
            } else if (entry instanceof qra) {
                braVar.b(zzadjVar.zza(), ((zzael) ((qra) entry).b.getValue()).zzc());
            } else {
                braVar.b(zzadjVar.zza(), entry.getValue());
            }
        }
        zzaga zzagaVar = ((zzadu) obj).zzc;
        for (int i = 0; i < zzagaVar.a; i++) {
            braVar.b(zzagaVar.b[i] >>> 3, zzagaVar.c[i]);
        }
    }

    @Override // defpackage.nsa
    public final int e(zzadu zzaduVar) {
        int iHashCode = zzaduVar.zzc.hashCode();
        if (!this.c) {
            return iHashCode;
        }
        return ((zzadr) zzaduVar).zzb.a.hashCode() + (iHashCode * 53);
    }

    @Override // defpackage.nsa
    public final void f(Object obj, Object obj2) {
        f.b(obj, obj2);
        if (this.c) {
            b bVar = fra.a;
            if (((zzadr) obj2).zzb.a.isEmpty()) {
                return;
            }
            throw null;
        }
    }

    @Override // defpackage.nsa
    public final int g(zzadu zzaduVar) {
        int iZzh = zzaduVar.zzc.zzh();
        if (!this.c) {
            return iZzh;
        }
        osa osaVar = ((zzadr) zzaduVar).zzb.a;
        int i = osaVar.c;
        int iJ = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iJ += gra.j(osaVar.b(i2));
        }
        Iterator it = osaVar.c().iterator();
        while (it.hasNext()) {
            iJ += gra.j((Map.Entry) it.next());
        }
        return iZzh + iJ;
    }

    @Override // defpackage.nsa
    public final boolean h(Object obj) {
        return ((zzadr) obj).zzb.d();
    }

    @Override // defpackage.nsa
    public final boolean i(zzadu zzaduVar, zzadu zzaduVar2) {
        if (!zzaduVar.zzc.equals(zzaduVar2.zzc)) {
            return false;
        }
        if (this.c) {
            return ((zzadr) zzaduVar).zzb.equals(((zzadr) zzaduVar2).zzb);
        }
        return true;
    }

    @Override // defpackage.nsa
    public final Object zza() {
        zzafc zzafcVar = this.a;
        return zzafcVar instanceof zzadu ? ((zzadu) zzafcVar).e() : zzafcVar.zzcI().zzbg();
    }
}
