package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.a2b;
import defpackage.ah;
import defpackage.b8b;
import defpackage.c2b;
import defpackage.d6b;
import defpackage.fcb;
import defpackage.gnb;
import defpackage.jib;
import defpackage.l7b;
import defpackage.lgb;
import defpackage.nz0;
import defpackage.r7b;
import defpackage.vib;
import defpackage.zd3;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements jib {
    public final zzfm a;
    public final zd3 b;
    public final boolean c;

    public c(zd3 zd3Var, zzfm zzfmVar) {
        l7b l7bVar = r7b.a;
        this.b = zd3Var;
        this.c = zzfmVar instanceof zzed;
        this.a = zzfmVar;
    }

    @Override // defpackage.jib
    public final boolean a(Object obj) {
        return ((zzed) obj).zzb.f();
    }

    @Override // defpackage.jib
    public final void b(Object obj) {
        this.b.getClass();
        ((zzeh) obj).zzc.zzh();
        l7b l7bVar = r7b.a;
        ((zzed) obj).zzb.d();
    }

    @Override // defpackage.jib
    public final void c(Object obj, Object obj2) {
        e.r(obj, obj2);
        if (this.c) {
            l7b l7bVar = r7b.a;
            e.q(obj, obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:57:0x00dd A[EDGE_INSN: B:57:0x00dd->B:37:0x00dd BREAK  A[LOOP:1: B:20:0x0086->B:28:0x00b8], SYNTHETIC] */
    @Override // defpackage.jib
    public final void d(Object obj, byte[] bArr, int i, int i2, a2b a2bVar) throws zzer {
        byte[] bArr2 = bArr;
        int i3 = i2;
        zzeh zzehVar = (zzeh) obj;
        zzgt zzgtVarA = zzehVar.zzc;
        if (zzgtVarA == zzgt.zzc()) {
            zzgtVarA = zzgt.a();
            zzehVar.zzc = zzgtVarA;
        }
        zzgt zzgtVar = zzgtVarA;
        zzed zzedVar = (zzed) obj;
        b8b b8bVarClone = zzedVar.zzb;
        if (b8bVarClone.b) {
            b8bVarClone = b8bVarClone.clone();
            zzedVar.zzb = b8bVarClone;
        }
        b8b b8bVar = b8bVarClone;
        int iF = i;
        zzef zzefVar = null;
        while (iF < i3) {
            int iG = c2b.g(bArr2, iF, a2bVar);
            int i4 = a2bVar.a;
            zzds zzdsVar = a2bVar.d;
            zzfm zzfmVar = this.a;
            int i5 = 2;
            if (i4 == 11) {
                int i6 = 0;
                zzef zzefVarZzb = zzefVar;
                zzdf zzdfVar = null;
                while (iG < i3) {
                    iG = c2b.g(bArr2, iG, a2bVar);
                    int i7 = a2bVar.a;
                    int i8 = i7 >>> 3;
                    int i9 = i7 & 7;
                    if (i8 == i5) {
                        if (i9 != 0) {
                            if (i7 == 12) {
                                break;
                                break;
                            }
                            iG = c2b.m(i7, bArr2, iG, i3, a2bVar);
                        } else {
                            iG = c2b.g(bArr2, iG, a2bVar);
                            i6 = a2bVar.a;
                            zzefVarZzb = zzdsVar.zzb(zzfmVar, i6);
                        }
                    } else if (i8 != 3) {
                        if (i7 == 12) {
                            break;
                            break;
                        }
                        iG = c2b.m(i7, bArr2, iG, i3, a2bVar);
                    } else if (zzefVarZzb == null) {
                        if (i9 != 2) {
                            if (i7 == 12) {
                                break;
                            } else {
                                iG = c2b.m(i7, bArr2, iG, i3, a2bVar);
                            }
                        } else {
                            iG = c2b.a(bArr2, iG, a2bVar);
                            zzdfVar = (zzdf) a2bVar.c;
                        }
                    } else {
                        jib jibVarA = lgb.c.a(zzefVarZzb.a.getClass());
                        Object objZze = jibVarA.zze();
                        iG = c2b.l(objZze, jibVarA, bArr2, iG, i3, a2bVar);
                        jibVarA.b(objZze);
                        a2bVar.c = objZze;
                        b8bVar.e(zzefVarZzb.b, objZze);
                    }
                    i5 = 2;
                }
                iF = iG;
                if (zzdfVar != null) {
                    zzgtVar.b((i6 << 3) | 2, zzdfVar);
                }
                zzefVar = zzefVarZzb;
            } else if ((i4 & 7) == 2) {
                zzef zzefVarZzb2 = zzdsVar.zzb(zzfmVar, i4 >>> 3);
                if (zzefVarZzb2 != null) {
                    jib jibVarA2 = lgb.c.a(zzefVarZzb2.a.getClass());
                    Object objZze2 = jibVarA2.zze();
                    int iL = c2b.l(objZze2, jibVarA2, bArr2, iG, i3, a2bVar);
                    jibVarA2.b(objZze2);
                    a2bVar.c = objZze2;
                    b8bVar.e(zzefVarZzb2.b, objZze2);
                    bArr2 = bArr;
                    i3 = i2;
                    iF = iL;
                    zzefVar = zzefVarZzb2;
                } else {
                    byte[] bArr3 = bArr2;
                    int i10 = i3;
                    iF = c2b.f(i4, bArr3, iG, i10, zzgtVar, a2bVar);
                    bArr2 = bArr3;
                    zzefVar = zzefVarZzb2;
                    i3 = i10;
                }
            } else {
                iF = c2b.m(i4, bArr2, iG, i3, a2bVar);
            }
        }
        if (iF == i3) {
            return;
        }
        nz0.c("Failed to parse the message.");
    }

    @Override // defpackage.jib
    public final boolean e(zzeh zzehVar, zzeh zzehVar2) {
        if (!zzehVar.zzc.equals(zzehVar2.zzc)) {
            return false;
        }
        if (this.c) {
            return ((zzed) zzehVar).zzb.equals(((zzed) zzehVar2).zzb);
        }
        return true;
    }

    @Override // defpackage.jib
    public final int f(zzeh zzehVar) {
        int iHashCode = zzehVar.zzc.hashCode();
        if (!this.c) {
            return iHashCode;
        }
        return ((zzed) zzehVar).zzb.a.hashCode() + (iHashCode * 53);
    }

    @Override // defpackage.jib
    public final void g(Object obj, gnb gnbVar) {
        Iterator itC = ((zzed) obj).zzb.c();
        while (itC.hasNext()) {
            Map.Entry entry = (Map.Entry) itC.next();
            zzdw zzdwVar = (zzdw) entry.getKey();
            if (zzdwVar.zze() != zzhg.zzi) {
                ah.f("Found invalid MessageSet item.");
                return;
            }
            zzdwVar.zzg();
            zzdwVar.zzf();
            if (entry instanceof fcb) {
                ((d6b) gnbVar).b(zzdwVar.zza(), ((zzew) ((fcb) entry).b.getValue()).zzb());
            } else {
                ((d6b) gnbVar).b(zzdwVar.zza(), entry.getValue());
            }
        }
        zzgt zzgtVar = ((zzeh) obj).zzc;
        for (int i = 0; i < zzgtVar.a; i++) {
            ((d6b) gnbVar).b(zzgtVar.b[i] >>> 3, zzgtVar.c[i]);
        }
    }

    @Override // defpackage.jib
    public final int h(zzeh zzehVar) {
        int iZzb = zzehVar.zzc.zzb();
        if (!this.c) {
            return iZzb;
        }
        vib vibVar = ((zzed) zzehVar).zzb.a;
        int i = vibVar.c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += b8b.i(vibVar.d(i3));
        }
        Iterator it = vibVar.b().iterator();
        while (it.hasNext()) {
            i2 += b8b.i((Map.Entry) it.next());
        }
        return iZzb + i2;
    }

    @Override // defpackage.jib
    public final Object zze() {
        zzfm zzfmVar = this.a;
        return zzfmVar instanceof zzeh ? (zzeh) ((zzeh) zzfmVar).j(4, null) : zzfmVar.zzZ().zzk();
    }
}
