package com.google.android.gms.internal.measurement;

import defpackage.bra;
import defpackage.cra;
import defpackage.dq;
import defpackage.fqa;
import defpackage.hra;
import defpackage.iqa;
import defpackage.kra;
import defpackage.nsa;
import defpackage.tra;
import defpackage.ud;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class f {
    public static final g a;

    static {
        int i = fqa.a;
        a = new g();
    }

    public static int A(int i, Object obj, nsa nsaVar) {
        int i2 = i << 3;
        if (obj instanceof zzaem) {
            int iZzE = zzada.zzE(i2);
            int iZzb = ((zzaem) obj).zzb();
            return dq.b(iZzb, iZzb, iZzE);
        }
        int iZzE2 = zzada.zzE(i2);
        int iA = ((zzacb) obj).a(nsaVar);
        return dq.b(iA, iA, iZzE2);
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void b(Object obj, Object obj2) {
        zzadu zzaduVar = (zzadu) obj;
        zzaga zzagaVar = zzaduVar.zzc;
        zzaga zzagaVar2 = ((zzadu) obj2).zzc;
        if (!zzaga.zza().equals(zzagaVar2)) {
            if (zzaga.zza().equals(zzagaVar)) {
                int i = zzagaVar.a + zzagaVar2.a;
                int[] iArrCopyOf = Arrays.copyOf(zzagaVar.b, i);
                System.arraycopy(zzagaVar2.b, 0, iArrCopyOf, zzagaVar.a, zzagaVar2.a);
                Object[] objArrCopyOf = Arrays.copyOf(zzagaVar.c, i);
                System.arraycopy(zzagaVar2.c, 0, objArrCopyOf, zzagaVar.a, zzagaVar2.a);
                zzagaVar = new zzaga(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                zzagaVar.getClass();
                if (!zzagaVar2.equals(zzaga.f)) {
                    if (!zzagaVar.e) {
                        ud.d();
                        return;
                    }
                    int i2 = zzagaVar.a + zzagaVar2.a;
                    zzagaVar.c(i2);
                    System.arraycopy(zzagaVar2.b, 0, zzagaVar.b, zzagaVar.a, zzagaVar2.a);
                    System.arraycopy(zzagaVar2.c, 0, zzagaVar.c, zzagaVar.a, zzagaVar2.a);
                    zzagaVar.a = i2;
                }
            }
        }
        zzaduVar.zzc = zzagaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object c(Object obj, int i, zzaef zzaefVar, zzadz zzadzVar, Object obj2, g gVar) {
        if (zzadzVar == null) {
            return obj2;
        }
        if (zzaefVar == null) {
            Iterator<E> it = zzaefVar.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (!zzadzVar.zza(iIntValue)) {
                    if (obj2 == null) {
                        gVar.getClass();
                        obj2 = g.a(obj);
                    }
                    gVar.getClass();
                    ((zzaga) obj2).b(i << 3, Long.valueOf(iIntValue));
                    it.remove();
                }
            }
            return obj2;
        }
        int size = zzaefVar.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Integer num = (Integer) zzaefVar.get(i3);
            int iIntValue2 = num.intValue();
            if (zzadzVar.zza(iIntValue2)) {
                if (i3 != i2) {
                    zzaefVar.set(i2, num);
                }
                i2++;
            } else {
                if (obj2 == null) {
                    gVar.getClass();
                    obj2 = g.a(obj);
                }
                gVar.getClass();
                ((zzaga) obj2).b(i << 3, Long.valueOf(iIntValue2));
            }
        }
        if (i2 != size) {
            zzaefVar.subList(i2, size).clear();
        }
        return obj2;
    }

    public static void d(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof cra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzg(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).getClass();
                i3 += 8;
            }
            zzadaVar.zzr(i3);
            while (i2 < list.size()) {
                zzadaVar.zzu(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        cra craVar = (cra) list;
        if (!z) {
            while (i2 < craVar.d) {
                craVar.c(i2);
                zzadaVar.zzg(i, Double.doubleToRawLongBits(craVar.c[i2]));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < craVar.d; i6++) {
            craVar.c(i6);
            double d = craVar.c[i6];
            i5 += 8;
        }
        zzadaVar.zzr(i5);
        while (i2 < craVar.d) {
            craVar.c(i2);
            zzadaVar.zzu(Double.doubleToRawLongBits(craVar.c[i2]));
            i2++;
        }
    }

    public static void e(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof hra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zze(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).getClass();
                i3 += 4;
            }
            zzadaVar.zzr(i3);
            while (i2 < list.size()) {
                zzadaVar.zzs(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        hra hraVar = (hra) list;
        if (!z) {
            while (i2 < hraVar.d) {
                hraVar.c(i2);
                zzadaVar.zze(i, Float.floatToRawIntBits(hraVar.c[i2]));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < hraVar.d; i6++) {
            hraVar.c(i6);
            float f = hraVar.c[i6];
            i5 += 4;
        }
        zzadaVar.zzr(i5);
        while (i2 < hraVar.d) {
            hraVar.c(i2);
            zzadaVar.zzs(Float.floatToRawIntBits(hraVar.c[i2]));
            i2++;
        }
    }

    public static void f(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof tra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzf(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int iZzF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzF += zzada.zzF(((Long) list.get(i3)).longValue());
            }
            zzadaVar.zzr(iZzF);
            while (i2 < list.size()) {
                zzadaVar.zzt(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        tra traVar = (tra) list;
        if (!z) {
            while (i2 < traVar.d) {
                zzadaVar.zzf(i, traVar.zzc(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int iZzF2 = 0;
        for (int i4 = 0; i4 < traVar.d; i4++) {
            iZzF2 += zzada.zzF(traVar.zzc(i4));
        }
        zzadaVar.zzr(iZzF2);
        while (i2 < traVar.d) {
            zzadaVar.zzt(traVar.zzc(i2));
            i2++;
        }
    }

    public static void g(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof tra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzf(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int iZzF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzF += zzada.zzF(((Long) list.get(i3)).longValue());
            }
            zzadaVar.zzr(iZzF);
            while (i2 < list.size()) {
                zzadaVar.zzt(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        tra traVar = (tra) list;
        if (!z) {
            while (i2 < traVar.d) {
                zzadaVar.zzf(i, traVar.zzc(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int iZzF2 = 0;
        for (int i4 = 0; i4 < traVar.d; i4++) {
            iZzF2 += zzada.zzF(traVar.zzc(i4));
        }
        zzadaVar.zzr(iZzF2);
        while (i2 < traVar.d) {
            zzadaVar.zzt(traVar.zzc(i2));
            i2++;
        }
    }

    public static void h(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof tra)) {
            if (!z) {
                while (i2 < list.size()) {
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    zzadaVar.zzf(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int iZzF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue2 = ((Long) list.get(i3)).longValue();
                iZzF += zzada.zzF((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            zzadaVar.zzr(iZzF);
            while (i2 < list.size()) {
                long jLongValue3 = ((Long) list.get(i2)).longValue();
                zzadaVar.zzt((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i2++;
            }
            return;
        }
        tra traVar = (tra) list;
        if (!z) {
            while (i2 < traVar.d) {
                long jZzc = traVar.zzc(i2);
                zzadaVar.zzf(i, (jZzc >> 63) ^ (jZzc + jZzc));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int iZzF2 = 0;
        for (int i4 = 0; i4 < traVar.d; i4++) {
            long jZzc2 = traVar.zzc(i4);
            iZzF2 += zzada.zzF((jZzc2 >> 63) ^ (jZzc2 + jZzc2));
        }
        zzadaVar.zzr(iZzF2);
        while (i2 < traVar.d) {
            long jZzc3 = traVar.zzc(i2);
            zzadaVar.zzt((jZzc3 >> 63) ^ (jZzc3 + jZzc3));
            i2++;
        }
    }

    public static void i(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof tra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzg(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzadaVar.zzr(i3);
            while (i2 < list.size()) {
                zzadaVar.zzu(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        tra traVar = (tra) list;
        if (!z) {
            while (i2 < traVar.d) {
                zzadaVar.zzg(i, traVar.zzc(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < traVar.d; i6++) {
            traVar.zzc(i6);
            i5 += 8;
        }
        zzadaVar.zzr(i5);
        while (i2 < traVar.d) {
            zzadaVar.zzu(traVar.zzc(i2));
            i2++;
        }
    }

    public static void j(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof tra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzg(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzadaVar.zzr(i3);
            while (i2 < list.size()) {
                zzadaVar.zzu(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        tra traVar = (tra) list;
        if (!z) {
            while (i2 < traVar.d) {
                zzadaVar.zzg(i, traVar.zzc(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < traVar.d; i6++) {
            traVar.zzc(i6);
            i5 += 8;
        }
        zzadaVar.zzr(i5);
        while (i2 < traVar.d) {
            zzadaVar.zzu(traVar.zzc(i2));
            i2++;
        }
    }

    public static void k(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof kra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzc(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int iZzF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzF += zzada.zzF(((Integer) list.get(i3)).intValue());
            }
            zzadaVar.zzr(iZzF);
            while (i2 < list.size()) {
                zzadaVar.zzq(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        kra kraVar = (kra) list;
        if (!z) {
            while (i2 < kraVar.d) {
                zzadaVar.zzc(i, kraVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int iZzF2 = 0;
        for (int i4 = 0; i4 < kraVar.d; i4++) {
            iZzF2 += zzada.zzF(kraVar.zzf(i4));
        }
        zzadaVar.zzr(iZzF2);
        while (i2 < kraVar.d) {
            zzadaVar.zzq(kraVar.zzf(i2));
            i2++;
        }
    }

    public static void l(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof kra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzd(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int iZzE = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzE += zzada.zzE(((Integer) list.get(i3)).intValue());
            }
            zzadaVar.zzr(iZzE);
            while (i2 < list.size()) {
                zzadaVar.zzr(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        kra kraVar = (kra) list;
        if (!z) {
            while (i2 < kraVar.d) {
                zzadaVar.zzd(i, kraVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int iZzE2 = 0;
        for (int i4 = 0; i4 < kraVar.d; i4++) {
            iZzE2 += zzada.zzE(kraVar.zzf(i4));
        }
        zzadaVar.zzr(iZzE2);
        while (i2 < kraVar.d) {
            zzadaVar.zzr(kraVar.zzf(i2));
            i2++;
        }
    }

    public static void m(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof kra)) {
            if (!z) {
                while (i2 < list.size()) {
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    zzadaVar.zzd(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int iZzE = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iZzE += zzada.zzE((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            zzadaVar.zzr(iZzE);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                zzadaVar.zzr((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        kra kraVar = (kra) list;
        if (!z) {
            while (i2 < kraVar.d) {
                int iZzf = kraVar.zzf(i2);
                zzadaVar.zzd(i, (iZzf >> 31) ^ (iZzf + iZzf));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int iZzE2 = 0;
        for (int i4 = 0; i4 < kraVar.d; i4++) {
            int iZzf2 = kraVar.zzf(i4);
            iZzE2 += zzada.zzE((iZzf2 >> 31) ^ (iZzf2 + iZzf2));
        }
        zzadaVar.zzr(iZzE2);
        while (i2 < kraVar.d) {
            int iZzf3 = kraVar.zzf(i2);
            zzadaVar.zzr((iZzf3 >> 31) ^ (iZzf3 + iZzf3));
            i2++;
        }
    }

    public static void n(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof kra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zze(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzadaVar.zzr(i3);
            while (i2 < list.size()) {
                zzadaVar.zzs(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        kra kraVar = (kra) list;
        if (!z) {
            while (i2 < kraVar.d) {
                zzadaVar.zze(i, kraVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < kraVar.d; i6++) {
            kraVar.zzf(i6);
            i5 += 4;
        }
        zzadaVar.zzr(i5);
        while (i2 < kraVar.d) {
            zzadaVar.zzs(kraVar.zzf(i2));
            i2++;
        }
    }

    public static void o(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof kra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zze(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzadaVar.zzr(i3);
            while (i2 < list.size()) {
                zzadaVar.zzs(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        kra kraVar = (kra) list;
        if (!z) {
            while (i2 < kraVar.d) {
                zzadaVar.zze(i, kraVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < kraVar.d; i6++) {
            kraVar.zzf(i6);
            i5 += 4;
        }
        zzadaVar.zzr(i5);
        while (i2 < kraVar.d) {
            zzadaVar.zzs(kraVar.zzf(i2));
            i2++;
        }
    }

    public static void p(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof kra)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzc(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int iZzF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzF += zzada.zzF(((Integer) list.get(i3)).intValue());
            }
            zzadaVar.zzr(iZzF);
            while (i2 < list.size()) {
                zzadaVar.zzq(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        kra kraVar = (kra) list;
        if (!z) {
            while (i2 < kraVar.d) {
                zzadaVar.zzc(i, kraVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int iZzF2 = 0;
        for (int i4 = 0; i4 < kraVar.d; i4++) {
            iZzF2 += zzada.zzF(kraVar.zzf(i4));
        }
        zzadaVar.zzr(iZzF2);
        while (i2 < kraVar.d) {
            zzadaVar.zzq(kraVar.zzf(i2));
            i2++;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void q(int i, List list, bra braVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzada zzadaVar = braVar.a;
        int i2 = 0;
        if (!(list instanceof iqa)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzadaVar.zzh(i, ((Boolean) list.get(i2)).booleanValue());
                    i2++;
                }
                return;
            }
            zzadaVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Boolean) list.get(i4)).getClass();
                i3++;
            }
            zzadaVar.zzr(i3);
            while (i2 < list.size()) {
                zzadaVar.zzp(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        iqa iqaVar = (iqa) list;
        if (!z) {
            while (i2 < iqaVar.d) {
                iqaVar.c(i2);
                zzadaVar.zzh(i, iqaVar.c[i2]);
                i2++;
            }
            return;
        }
        zzadaVar.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < iqaVar.d; i6++) {
            iqaVar.c(i6);
            boolean z2 = iqaVar.c[i6];
            i5++;
        }
        zzadaVar.zzr(i5);
        while (i2 < iqaVar.d) {
            iqaVar.c(i2);
            zzadaVar.zzp(iqaVar.c[i2] ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static int r(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof tra)) {
            int iZzF = 0;
            while (i < size) {
                iZzF += zzada.zzF(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzF;
        }
        tra traVar = (tra) list;
        int iZzF2 = 0;
        while (i < size) {
            iZzF2 += zzada.zzF(traVar.zzc(i));
            i++;
        }
        return iZzF2;
    }

    public static int s(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof tra)) {
            int iZzF = 0;
            while (i < size) {
                iZzF += zzada.zzF(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzF;
        }
        tra traVar = (tra) list;
        int iZzF2 = 0;
        while (i < size) {
            iZzF2 += zzada.zzF(traVar.zzc(i));
            i++;
        }
        return iZzF2;
    }

    public static int t(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof tra)) {
            int iZzF = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzF += zzada.zzF((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
            return iZzF;
        }
        tra traVar = (tra) list;
        int iZzF2 = 0;
        while (i < size) {
            long jZzc = traVar.zzc(i);
            iZzF2 += zzada.zzF((jZzc >> 63) ^ (jZzc + jZzc));
            i++;
        }
        return iZzF2;
    }

    public static int u(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof kra)) {
            int iZzF = 0;
            while (i < size) {
                iZzF += zzada.zzF(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzF;
        }
        kra kraVar = (kra) list;
        int iZzF2 = 0;
        while (i < size) {
            iZzF2 += zzada.zzF(kraVar.zzf(i));
            i++;
        }
        return iZzF2;
    }

    public static int v(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof kra)) {
            int iZzF = 0;
            while (i < size) {
                iZzF += zzada.zzF(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzF;
        }
        kra kraVar = (kra) list;
        int iZzF2 = 0;
        while (i < size) {
            iZzF2 += zzada.zzF(kraVar.zzf(i));
            i++;
        }
        return iZzF2;
    }

    public static int w(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof kra)) {
            int iZzE = 0;
            while (i < size) {
                iZzE += zzada.zzE(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzE;
        }
        kra kraVar = (kra) list;
        int iZzE2 = 0;
        while (i < size) {
            iZzE2 += zzada.zzE(kraVar.zzf(i));
            i++;
        }
        return iZzE2;
    }

    public static int x(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof kra)) {
            int iZzE = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzE += zzada.zzE((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iZzE;
        }
        kra kraVar = (kra) list;
        int iZzE2 = 0;
        while (i < size) {
            int iZzf = kraVar.zzf(i);
            iZzE2 += zzada.zzE((iZzf >> 31) ^ (iZzf + iZzf));
            i++;
        }
        return iZzE2;
    }

    public static int y(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzada.zzE(i << 3) + 4) * size;
    }

    public static int z(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzada.zzE(i << 3) + 8) * size;
    }
}
