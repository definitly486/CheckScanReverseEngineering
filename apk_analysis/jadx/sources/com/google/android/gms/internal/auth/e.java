package com.google.android.gms.internal.auth;

import defpackage.tlb;
import defpackage.ud;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends tlb {
    @Override // defpackage.tlb
    public final /* bridge */ /* synthetic */ zzha a(Object obj) {
        zzev zzevVar = (zzev) obj;
        zzha zzhaVar = zzevVar.zzc;
        if (zzhaVar != zzha.zza()) {
            return zzhaVar;
        }
        zzha zzhaVarA = zzha.a();
        zzevVar.zzc = zzhaVarA;
        return zzhaVarA;
    }

    @Override // defpackage.tlb
    public final /* synthetic */ zzha b(Object obj) {
        return ((zzev) obj).zzc;
    }

    @Override // defpackage.tlb
    public final Object c(Object obj, Object obj2) {
        if (!zzha.zza().equals(obj2)) {
            if (zzha.zza().equals(obj)) {
                zzha zzhaVar = (zzha) obj2;
                zzha zzhaVar2 = (zzha) obj;
                int i = zzhaVar2.a + zzhaVar.a;
                int[] iArrCopyOf = Arrays.copyOf(zzhaVar2.b, i);
                System.arraycopy(zzhaVar.b, 0, iArrCopyOf, zzhaVar2.a, zzhaVar.a);
                Object[] objArrCopyOf = Arrays.copyOf(zzhaVar2.c, i);
                System.arraycopy(zzhaVar.c, 0, objArrCopyOf, zzhaVar2.a, zzhaVar.a);
                return new zzha(i, iArrCopyOf, objArrCopyOf, true);
            }
            zzha zzhaVar3 = (zzha) obj2;
            zzha zzhaVar4 = (zzha) obj;
            zzhaVar4.getClass();
            if (!zzhaVar3.equals(zzha.e)) {
                if (!zzhaVar4.d) {
                    ud.d();
                    return null;
                }
                int i2 = zzhaVar4.a + zzhaVar3.a;
                zzhaVar4.c(i2);
                System.arraycopy(zzhaVar3.b, 0, zzhaVar4.b, zzhaVar4.a, zzhaVar3.a);
                System.arraycopy(zzhaVar3.c, 0, zzhaVar4.c, zzhaVar4.a, zzhaVar3.a);
                zzhaVar4.a = i2;
                return obj;
            }
        }
        return obj;
    }

    @Override // defpackage.tlb
    public final /* bridge */ /* synthetic */ void d(int i, long j, Object obj) {
        ((zzha) obj).b(i << 3, Long.valueOf(j));
    }

    @Override // defpackage.tlb
    public final void e(Object obj) {
        ((zzev) obj).zzc.zzf();
    }

    @Override // defpackage.tlb
    public final /* synthetic */ void f(Object obj, Object obj2) {
        ((zzev) obj).zzc = (zzha) obj2;
    }
}
