package com.google.android.gms.internal.measurement;

import defpackage.jh;
import defpackage.pqa;
import defpackage.xg;

/* JADX INFO: loaded from: classes4.dex */
public final class g {
    public static /* bridge */ zzaga a(Object obj) {
        zzadu zzaduVar = (zzadu) obj;
        zzaga zzagaVar = zzaduVar.zzc;
        if (zzagaVar != zzaga.zza()) {
            return zzagaVar;
        }
        zzaga zzagaVarA = zzaga.a();
        zzaduVar.zzc = zzagaVarA;
        return zzagaVarA;
    }

    public static boolean b(int i, Object obj, pqa pqaVar) throws zzaeh {
        zzacv zzacvVar = pqaVar.a;
        int i2 = pqaVar.b;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            pqaVar.q(0);
            ((zzaga) obj).b(i3 << 3, Long.valueOf(zzacvVar.zzg()));
            return true;
        }
        if (i4 == 1) {
            pqaVar.q(1);
            ((zzaga) obj).b((i3 << 3) | 1, Long.valueOf(zzacvVar.zzi()));
            return true;
        }
        if (i4 == 2) {
            ((zzaga) obj).b((i3 << 3) | 2, pqaVar.y());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                if (i != 0) {
                    return false;
                }
                xg.e("Protocol message end-group tag did not match expected tag.");
                return false;
            }
            if (i4 != 5) {
                jh.c();
                return false;
            }
            pqaVar.q(5);
            ((zzaga) obj).b(5 | (i3 << 3), Integer.valueOf(zzacvVar.zzj()));
            return true;
        }
        zzaga zzagaVarA = zzaga.a();
        int i5 = i3 << 3;
        int i6 = i + 1;
        if (i6 >= 100) {
            xg.e("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return false;
        }
        while (pqaVar.x() != Integer.MAX_VALUE && b(i6, zzagaVarA, pqaVar)) {
        }
        if ((i5 | 4) != pqaVar.b) {
            xg.e("Protocol message end-group tag did not match expected tag.");
            return false;
        }
        zzagaVarA.zzd();
        ((zzaga) obj).b(i5 | 3, zzagaVarA);
        return true;
    }
}
