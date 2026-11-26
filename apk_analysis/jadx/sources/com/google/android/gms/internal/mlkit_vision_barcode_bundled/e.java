package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.ah;
import defpackage.b8b;
import defpackage.d6b;
import defpackage.gnb;
import defpackage.h2b;
import defpackage.hab;
import defpackage.j6b;
import defpackage.jib;
import defpackage.k8b;
import defpackage.lgb;
import defpackage.tdb;
import defpackage.ud;
import defpackage.vib;
import defpackage.zd3;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public static final zd3 a;

    static {
        lgb lgbVar = lgb.c;
        a = new zd3();
    }

    public static void A(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof hab)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzf(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzdnVar.zzt(i3);
            while (i2 < list.size()) {
                zzdnVar.zzg(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        hab habVar = (hab) list;
        if (!z) {
            while (i2 < habVar.d) {
                zzdnVar.zzf(i, habVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < habVar.d; i6++) {
            habVar.b(i6);
            i5 += 4;
        }
        zzdnVar.zzt(i5);
        while (i2 < habVar.d) {
            zzdnVar.zzg(habVar.b(i2));
            i2++;
        }
    }

    public static void B(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof tdb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzh(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzdnVar.zzt(i3);
            while (i2 < list.size()) {
                zzdnVar.zzi(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        tdb tdbVar = (tdb) list;
        if (!z) {
            while (i2 < tdbVar.d) {
                zzdnVar.zzh(i, tdbVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < tdbVar.d; i6++) {
            tdbVar.b(i6);
            i5 += 8;
        }
        zzdnVar.zzt(i5);
        while (i2 < tdbVar.d) {
            zzdnVar.zzi(tdbVar.b(i2));
            i2++;
        }
    }

    public static void a(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof hab)) {
            if (!z) {
                while (i2 < list.size()) {
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    zzdnVar.zzs(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int iZzA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iZzA += zzdn.zzA((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            zzdnVar.zzt(iZzA);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                zzdnVar.zzt((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        hab habVar = (hab) list;
        if (!z) {
            while (i2 < habVar.d) {
                int iB = habVar.b(i2);
                zzdnVar.zzs(i, (iB >> 31) ^ (iB + iB));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int iZzA2 = 0;
        for (int i4 = 0; i4 < habVar.d; i4++) {
            int iB2 = habVar.b(i4);
            iZzA2 += zzdn.zzA((iB2 >> 31) ^ (iB2 + iB2));
        }
        zzdnVar.zzt(iZzA2);
        while (i2 < habVar.d) {
            int iB3 = habVar.b(i2);
            zzdnVar.zzt((iB3 >> 31) ^ (iB3 + iB3));
            i2++;
        }
    }

    public static void b(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof tdb)) {
            if (!z) {
                while (i2 < list.size()) {
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    zzdnVar.zzu(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int iZzB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue2 = ((Long) list.get(i3)).longValue();
                iZzB += zzdn.zzB((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            zzdnVar.zzt(iZzB);
            while (i2 < list.size()) {
                long jLongValue3 = ((Long) list.get(i2)).longValue();
                zzdnVar.zzv((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i2++;
            }
            return;
        }
        tdb tdbVar = (tdb) list;
        if (!z) {
            while (i2 < tdbVar.d) {
                long jB = tdbVar.b(i2);
                zzdnVar.zzu(i, (jB >> 63) ^ (jB + jB));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int iZzB2 = 0;
        for (int i4 = 0; i4 < tdbVar.d; i4++) {
            long jB2 = tdbVar.b(i4);
            iZzB2 += zzdn.zzB((jB2 >> 63) ^ (jB2 + jB2));
        }
        zzdnVar.zzt(iZzB2);
        while (i2 < tdbVar.d) {
            long jB3 = tdbVar.b(i2);
            zzdnVar.zzv((jB3 >> 63) ^ (jB3 + jB3));
            i2++;
        }
    }

    public static void c(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof hab)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzs(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int iZzA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzA += zzdn.zzA(((Integer) list.get(i3)).intValue());
            }
            zzdnVar.zzt(iZzA);
            while (i2 < list.size()) {
                zzdnVar.zzt(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        hab habVar = (hab) list;
        if (!z) {
            while (i2 < habVar.d) {
                zzdnVar.zzs(i, habVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int iZzA2 = 0;
        for (int i4 = 0; i4 < habVar.d; i4++) {
            iZzA2 += zzdn.zzA(habVar.b(i4));
        }
        zzdnVar.zzt(iZzA2);
        while (i2 < habVar.d) {
            zzdnVar.zzt(habVar.b(i2));
            i2++;
        }
    }

    public static void d(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof tdb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzu(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int iZzB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzB += zzdn.zzB(((Long) list.get(i3)).longValue());
            }
            zzdnVar.zzt(iZzB);
            while (i2 < list.size()) {
                zzdnVar.zzv(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        tdb tdbVar = (tdb) list;
        if (!z) {
            while (i2 < tdbVar.d) {
                zzdnVar.zzu(i, tdbVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int iZzB2 = 0;
        for (int i4 = 0; i4 < tdbVar.d; i4++) {
            iZzB2 += zzdn.zzB(tdbVar.b(i4));
        }
        zzdnVar.zzt(iZzB2);
        while (i2 < tdbVar.d) {
            zzdnVar.zzv(tdbVar.b(i2));
            i2++;
        }
    }

    public static boolean e(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int f(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof hab)) {
            int iZzB = 0;
            while (i < size) {
                iZzB += zzdn.zzB(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzB;
        }
        hab habVar = (hab) list;
        int iZzB2 = 0;
        while (i < size) {
            iZzB2 += zzdn.zzB(habVar.b(i));
            i++;
        }
        return iZzB2;
    }

    public static int g(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzdn.zzA(i << 3) + 4) * size;
    }

    public static int h(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzdn.zzA(i << 3) + 8) * size;
    }

    public static int i(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof hab)) {
            int iZzB = 0;
            while (i < size) {
                iZzB += zzdn.zzB(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzB;
        }
        hab habVar = (hab) list;
        int iZzB2 = 0;
        while (i < size) {
            iZzB2 += zzdn.zzB(habVar.b(i));
            i++;
        }
        return iZzB2;
    }

    public static int j(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof tdb)) {
            int iZzB = 0;
            while (i < size) {
                iZzB += zzdn.zzB(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzB;
        }
        tdb tdbVar = (tdb) list;
        int iZzB2 = 0;
        while (i < size) {
            iZzB2 += zzdn.zzB(tdbVar.b(i));
            i++;
        }
        return iZzB2;
    }

    public static int k(int i, Object obj, jib jibVar) {
        int i2 = i << 3;
        if (obj instanceof zzex) {
            int iZzA = zzdn.zzA(i2);
            int iZza = ((zzex) obj).zza();
            return ah.b(iZza, iZza, iZzA);
        }
        int iZzA2 = zzdn.zzA(i2);
        int iA = ((zzcq) ((zzfm) obj)).a(jibVar);
        return ah.b(iA, iA, iZzA2);
    }

    public static int l(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof hab)) {
            int iZzA = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzA += zzdn.zzA((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iZzA;
        }
        hab habVar = (hab) list;
        int iZzA2 = 0;
        while (i < size) {
            int iB = habVar.b(i);
            iZzA2 += zzdn.zzA((iB >> 31) ^ (iB + iB));
            i++;
        }
        return iZzA2;
    }

    public static int m(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof tdb)) {
            int iZzB = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzB += zzdn.zzB((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
            return iZzB;
        }
        tdb tdbVar = (tdb) list;
        int iZzB2 = 0;
        while (i < size) {
            long jB = tdbVar.b(i);
            iZzB2 += zzdn.zzB((jB >> 63) ^ (jB + jB));
            i++;
        }
        return iZzB2;
    }

    public static int n(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof hab)) {
            int iZzA = 0;
            while (i < size) {
                iZzA += zzdn.zzA(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzA;
        }
        hab habVar = (hab) list;
        int iZzA2 = 0;
        while (i < size) {
            iZzA2 += zzdn.zzA(habVar.b(i));
            i++;
        }
        return iZzA2;
    }

    public static int o(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof tdb)) {
            int iZzB = 0;
            while (i < size) {
                iZzB += zzdn.zzB(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzB;
        }
        tdb tdbVar = (tdb) list;
        int iZzB2 = 0;
        while (i < size) {
            iZzB2 += zzdn.zzB(tdbVar.b(i));
            i++;
        }
        return iZzB2;
    }

    public static Object p(int i, int i2, Object obj, Object obj2) {
        zzeh zzehVar;
        zzgt zzgtVar;
        Object obj3 = obj2;
        if (obj2 == null && (zzgtVar = (zzehVar = (zzeh) obj).zzc) == zzgt.zzc()) {
            obj3 = zzgtVar;
            zzgt zzgtVarA = zzgt.a();
            zzehVar.zzc = zzgtVarA;
            obj3 = zzgtVarA;
        }
        obj3 = zzgtVar;
        ((zzgt) obj3).b(i << 3, Long.valueOf(i2));
        return obj3;
    }

    public static void q(Object obj, Object obj2) {
        vib vibVar = ((zzed) obj2).zzb.a;
        if (vibVar.isEmpty()) {
            return;
        }
        zzed zzedVar = (zzed) obj;
        b8b b8bVarClone = zzedVar.zzb;
        if (b8bVarClone.b) {
            b8bVarClone = b8bVarClone.clone();
            zzedVar.zzb = b8bVarClone;
        }
        int i = vibVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            b8bVarClone.g(vibVar.d(i2));
        }
        Iterator it = vibVar.b().iterator();
        while (it.hasNext()) {
            b8bVarClone.g((Map.Entry) it.next());
        }
    }

    public static void r(Object obj, Object obj2) {
        zzeh zzehVar = (zzeh) obj;
        zzgt zzgtVar = zzehVar.zzc;
        zzgt zzgtVar2 = ((zzeh) obj2).zzc;
        if (!zzgt.zzc().equals(zzgtVar2)) {
            if (zzgt.zzc().equals(zzgtVar)) {
                int i = zzgtVar.a + zzgtVar2.a;
                int[] iArrCopyOf = Arrays.copyOf(zzgtVar.b, i);
                System.arraycopy(zzgtVar2.b, 0, iArrCopyOf, zzgtVar.a, zzgtVar2.a);
                Object[] objArrCopyOf = Arrays.copyOf(zzgtVar.c, i);
                System.arraycopy(zzgtVar2.c, 0, objArrCopyOf, zzgtVar.a, zzgtVar2.a);
                zzgtVar = new zzgt(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                zzgtVar.getClass();
                if (!zzgtVar2.equals(zzgt.f)) {
                    if (!zzgtVar.e) {
                        ud.d();
                        return;
                    }
                    int i2 = zzgtVar.a + zzgtVar2.a;
                    zzgtVar.c(i2);
                    System.arraycopy(zzgtVar2.b, 0, zzgtVar.b, zzgtVar.a, zzgtVar2.a);
                    System.arraycopy(zzgtVar2.c, 0, zzgtVar.c, zzgtVar.a, zzgtVar2.a);
                    zzgtVar.a = i2;
                }
            }
        }
        zzehVar.zzc = zzgtVar;
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
    public static void s(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof h2b)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzd(i, ((Boolean) list.get(i2)).booleanValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Boolean) list.get(i4)).getClass();
                i3++;
            }
            zzdnVar.zzt(i3);
            while (i2 < list.size()) {
                zzdnVar.zzb(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        h2b h2bVar = (h2b) list;
        if (!z) {
            while (i2 < h2bVar.d) {
                h2bVar.zzh(i2);
                zzdnVar.zzd(i, h2bVar.c[i2]);
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < h2bVar.d; i6++) {
            h2bVar.zzh(i6);
            boolean z2 = h2bVar.c[i6];
            i5++;
        }
        zzdnVar.zzt(i5);
        while (i2 < h2bVar.d) {
            h2bVar.zzh(i2);
            zzdnVar.zzb(h2bVar.c[i2] ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void t(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof j6b)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzh(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).getClass();
                i3 += 8;
            }
            zzdnVar.zzt(i3);
            while (i2 < list.size()) {
                zzdnVar.zzi(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        j6b j6bVar = (j6b) list;
        if (!z) {
            while (i2 < j6bVar.d) {
                j6bVar.c(i2);
                zzdnVar.zzh(i, Double.doubleToRawLongBits(j6bVar.c[i2]));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < j6bVar.d; i6++) {
            j6bVar.c(i6);
            double d = j6bVar.c[i6];
            i5 += 8;
        }
        zzdnVar.zzt(i5);
        while (i2 < j6bVar.d) {
            j6bVar.c(i2);
            zzdnVar.zzi(Double.doubleToRawLongBits(j6bVar.c[i2]));
            i2++;
        }
    }

    public static void u(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof hab)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzj(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int iZzB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzB += zzdn.zzB(((Integer) list.get(i3)).intValue());
            }
            zzdnVar.zzt(iZzB);
            while (i2 < list.size()) {
                zzdnVar.zzk(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        hab habVar = (hab) list;
        if (!z) {
            while (i2 < habVar.d) {
                zzdnVar.zzj(i, habVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int iZzB2 = 0;
        for (int i4 = 0; i4 < habVar.d; i4++) {
            iZzB2 += zzdn.zzB(habVar.b(i4));
        }
        zzdnVar.zzt(iZzB2);
        while (i2 < habVar.d) {
            zzdnVar.zzk(habVar.b(i2));
            i2++;
        }
    }

    public static void v(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof hab)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzf(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzdnVar.zzt(i3);
            while (i2 < list.size()) {
                zzdnVar.zzg(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        hab habVar = (hab) list;
        if (!z) {
            while (i2 < habVar.d) {
                zzdnVar.zzf(i, habVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < habVar.d; i6++) {
            habVar.b(i6);
            i5 += 4;
        }
        zzdnVar.zzt(i5);
        while (i2 < habVar.d) {
            zzdnVar.zzg(habVar.b(i2));
            i2++;
        }
    }

    public static void w(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof tdb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzh(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzdnVar.zzt(i3);
            while (i2 < list.size()) {
                zzdnVar.zzi(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        tdb tdbVar = (tdb) list;
        if (!z) {
            while (i2 < tdbVar.d) {
                zzdnVar.zzh(i, tdbVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < tdbVar.d; i6++) {
            tdbVar.b(i6);
            i5 += 8;
        }
        zzdnVar.zzt(i5);
        while (i2 < tdbVar.d) {
            zzdnVar.zzi(tdbVar.b(i2));
            i2++;
        }
    }

    public static void x(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof k8b)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzf(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).getClass();
                i3 += 4;
            }
            zzdnVar.zzt(i3);
            while (i2 < list.size()) {
                zzdnVar.zzg(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        k8b k8bVar = (k8b) list;
        if (!z) {
            while (i2 < k8bVar.d) {
                k8bVar.b(i2);
                zzdnVar.zzf(i, Float.floatToRawIntBits(k8bVar.c[i2]));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < k8bVar.d; i6++) {
            k8bVar.b(i6);
            float f = k8bVar.c[i6];
            i5 += 4;
        }
        zzdnVar.zzt(i5);
        while (i2 < k8bVar.d) {
            k8bVar.b(i2);
            zzdnVar.zzg(Float.floatToRawIntBits(k8bVar.c[i2]));
            i2++;
        }
    }

    public static void y(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof hab)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzj(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int iZzB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzB += zzdn.zzB(((Integer) list.get(i3)).intValue());
            }
            zzdnVar.zzt(iZzB);
            while (i2 < list.size()) {
                zzdnVar.zzk(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        hab habVar = (hab) list;
        if (!z) {
            while (i2 < habVar.d) {
                zzdnVar.zzj(i, habVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int iZzB2 = 0;
        for (int i4 = 0; i4 < habVar.d; i4++) {
            iZzB2 += zzdn.zzB(habVar.b(i4));
        }
        zzdnVar.zzt(iZzB2);
        while (i2 < habVar.d) {
            zzdnVar.zzk(habVar.b(i2));
            i2++;
        }
    }

    public static void z(int i, List list, gnb gnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdn zzdnVar = ((d6b) gnbVar).a;
        int i2 = 0;
        if (!(list instanceof tdb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzdnVar.zzu(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzdnVar.zzr(i, 2);
            int iZzB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzB += zzdn.zzB(((Long) list.get(i3)).longValue());
            }
            zzdnVar.zzt(iZzB);
            while (i2 < list.size()) {
                zzdnVar.zzv(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        tdb tdbVar = (tdb) list;
        if (!z) {
            while (i2 < tdbVar.d) {
                zzdnVar.zzu(i, tdbVar.b(i2));
                i2++;
            }
            return;
        }
        zzdnVar.zzr(i, 2);
        int iZzB2 = 0;
        for (int i4 = 0; i4 < tdbVar.d; i4++) {
            iZzB2 += zzdn.zzB(tdbVar.b(i4));
        }
        zzdnVar.zzt(iZzB2);
        while (i2 < tdbVar.d) {
            zzdnVar.zzv(tdbVar.b(i2));
            i2++;
        }
    }
}
