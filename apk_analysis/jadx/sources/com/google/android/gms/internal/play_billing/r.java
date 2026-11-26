package com.google.android.gms.internal.play_billing;

import defpackage.bhb;
import defpackage.ejb;
import defpackage.ghb;
import defpackage.gkb;
import defpackage.jeb;
import defpackage.onb;
import defpackage.ud;
import defpackage.ydb;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class r {
    public static final defpackage.g a;

    static {
        int i = ydb.a;
        a = new defpackage.g();
    }

    public static void a(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof gkb)) {
            if (!z) {
                while (i2 < list.size()) {
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    zzfxVar.zzt(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int iZzy = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iZzy += zzfx.zzy((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            zzfxVar.zzu(iZzy);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                zzfxVar.zzu((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        gkb gkbVar = (gkb) list;
        if (!z) {
            while (i2 < gkbVar.d) {
                int iB = gkbVar.b(i2);
                zzfxVar.zzt(i, (iB >> 31) ^ (iB + iB));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int iZzy2 = 0;
        for (int i4 = 0; i4 < gkbVar.d; i4++) {
            int iB2 = gkbVar.b(i4);
            iZzy2 += zzfx.zzy((iB2 >> 31) ^ (iB2 + iB2));
        }
        zzfxVar.zzu(iZzy2);
        while (i2 < gkbVar.d) {
            int iB3 = gkbVar.b(i2);
            zzfxVar.zzu((iB3 >> 31) ^ (iB3 + iB3));
            i2++;
        }
    }

    public static void b(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof onb)) {
            if (!z) {
                while (i2 < list.size()) {
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    zzfxVar.zzv(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue2 = ((Long) list.get(i3)).longValue();
                iZzz += zzfx.zzz((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            zzfxVar.zzu(iZzz);
            while (i2 < list.size()) {
                long jLongValue3 = ((Long) list.get(i2)).longValue();
                zzfxVar.zzw((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i2++;
            }
            return;
        }
        onb onbVar = (onb) list;
        if (!z) {
            while (i2 < onbVar.d) {
                long jB = onbVar.b(i2);
                zzfxVar.zzv(i, (jB >> 63) ^ (jB + jB));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < onbVar.d; i4++) {
            long jB2 = onbVar.b(i4);
            iZzz2 += zzfx.zzz((jB2 >> 63) ^ (jB2 + jB2));
        }
        zzfxVar.zzu(iZzz2);
        while (i2 < onbVar.d) {
            long jB3 = onbVar.b(i2);
            zzfxVar.zzw((jB3 >> 63) ^ (jB3 + jB3));
            i2++;
        }
    }

    public static void c(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof gkb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzt(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int iZzy = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzy += zzfx.zzy(((Integer) list.get(i3)).intValue());
            }
            zzfxVar.zzu(iZzy);
            while (i2 < list.size()) {
                zzfxVar.zzu(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gkb gkbVar = (gkb) list;
        if (!z) {
            while (i2 < gkbVar.d) {
                zzfxVar.zzt(i, gkbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int iZzy2 = 0;
        for (int i4 = 0; i4 < gkbVar.d; i4++) {
            iZzy2 += zzfx.zzy(gkbVar.b(i4));
        }
        zzfxVar.zzu(iZzy2);
        while (i2 < gkbVar.d) {
            zzfxVar.zzu(gkbVar.b(i2));
            i2++;
        }
    }

    public static void d(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof onb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzv(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzz += zzfx.zzz(((Long) list.get(i3)).longValue());
            }
            zzfxVar.zzu(iZzz);
            while (i2 < list.size()) {
                zzfxVar.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        onb onbVar = (onb) list;
        if (!z) {
            while (i2 < onbVar.d) {
                zzfxVar.zzv(i, onbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < onbVar.d; i4++) {
            iZzz2 += zzfx.zzz(onbVar.b(i4));
        }
        zzfxVar.zzu(iZzz2);
        while (i2 < onbVar.d) {
            zzfxVar.zzw(onbVar.b(i2));
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
        if (!(list instanceof gkb)) {
            int iZzz = 0;
            while (i < size) {
                iZzz += zzfx.zzz(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzz;
        }
        gkb gkbVar = (gkb) list;
        int iZzz2 = 0;
        while (i < size) {
            iZzz2 += zzfx.zzz(gkbVar.b(i));
            i++;
        }
        return iZzz2;
    }

    public static int g(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfx.zzy(i << 3) + 4) * size;
    }

    public static int h(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfx.zzy(i << 3) + 8) * size;
    }

    public static int i(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gkb)) {
            int iZzz = 0;
            while (i < size) {
                iZzz += zzfx.zzz(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzz;
        }
        gkb gkbVar = (gkb) list;
        int iZzz2 = 0;
        while (i < size) {
            iZzz2 += zzfx.zzz(gkbVar.b(i));
            i++;
        }
        return iZzz2;
    }

    public static int j(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof onb)) {
            int iZzz = 0;
            while (i < size) {
                iZzz += zzfx.zzz(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzz;
        }
        onb onbVar = (onb) list;
        int iZzz2 = 0;
        while (i < size) {
            iZzz2 += zzfx.zzz(onbVar.b(i));
            i++;
        }
        return iZzz2;
    }

    public static int k(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gkb)) {
            int iZzy = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzy += zzfx.zzy((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iZzy;
        }
        gkb gkbVar = (gkb) list;
        int iZzy2 = 0;
        while (i < size) {
            int iB = gkbVar.b(i);
            iZzy2 += zzfx.zzy((iB >> 31) ^ (iB + iB));
            i++;
        }
        return iZzy2;
    }

    public static int l(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof onb)) {
            int iZzz = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzz += zzfx.zzz((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
            return iZzz;
        }
        onb onbVar = (onb) list;
        int iZzz2 = 0;
        while (i < size) {
            long jB = onbVar.b(i);
            iZzz2 += zzfx.zzz((jB >> 63) ^ (jB + jB));
            i++;
        }
        return iZzz2;
    }

    public static int m(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gkb)) {
            int iZzy = 0;
            while (i < size) {
                iZzy += zzfx.zzy(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzy;
        }
        gkb gkbVar = (gkb) list;
        int iZzy2 = 0;
        while (i < size) {
            iZzy2 += zzfx.zzy(gkbVar.b(i));
            i++;
        }
        return iZzy2;
    }

    public static int n(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof onb)) {
            int iZzz = 0;
            while (i < size) {
                iZzz += zzfx.zzz(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzz;
        }
        onb onbVar = (onb) list;
        int iZzz2 = 0;
        while (i < size) {
            iZzz2 += zzfx.zzz(onbVar.b(i));
            i++;
        }
        return iZzz2;
    }

    public static void o(Object obj, Object obj2) {
        zzgp zzgpVar = (zzgp) obj;
        zzir zzirVar = zzgpVar.zzc;
        zzir zzirVar2 = ((zzgp) obj2).zzc;
        if (!zzir.zzc().equals(zzirVar2)) {
            if (zzir.zzc().equals(zzirVar)) {
                int i = zzirVar.a + zzirVar2.a;
                int[] iArrCopyOf = Arrays.copyOf(zzirVar.b, i);
                System.arraycopy(zzirVar2.b, 0, iArrCopyOf, zzirVar.a, zzirVar2.a);
                Object[] objArrCopyOf = Arrays.copyOf(zzirVar.c, i);
                System.arraycopy(zzirVar2.c, 0, objArrCopyOf, zzirVar.a, zzirVar2.a);
                zzirVar = new zzir(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                zzirVar.getClass();
                if (!zzirVar2.equals(zzir.f)) {
                    if (!zzirVar.e) {
                        ud.d();
                        return;
                    }
                    int i2 = zzirVar.a + zzirVar2.a;
                    zzirVar.c(i2);
                    System.arraycopy(zzirVar2.b, 0, zzirVar.b, zzirVar.a, zzirVar2.a);
                    System.arraycopy(zzirVar2.c, 0, zzirVar.c, zzirVar.a, zzirVar2.a);
                    zzirVar.a = i2;
                }
            }
        }
        zzgpVar.zzc = zzirVar;
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
    public static void p(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof jeb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzd(i, ((Boolean) list.get(i2)).booleanValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Boolean) list.get(i4)).getClass();
                i3++;
            }
            zzfxVar.zzu(i3);
            while (i2 < list.size()) {
                zzfxVar.zzb(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        jeb jebVar = (jeb) list;
        if (!z) {
            while (i2 < jebVar.d) {
                jebVar.c(i2);
                zzfxVar.zzd(i, jebVar.c[i2]);
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < jebVar.d; i6++) {
            jebVar.c(i6);
            boolean z2 = jebVar.c[i6];
            i5++;
        }
        zzfxVar.zzu(i5);
        while (i2 < jebVar.d) {
            jebVar.c(i2);
            zzfxVar.zzb(jebVar.c[i2] ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void q(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof ghb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzj(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).getClass();
                i3 += 8;
            }
            zzfxVar.zzu(i3);
            while (i2 < list.size()) {
                zzfxVar.zzk(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        ghb ghbVar = (ghb) list;
        if (!z) {
            while (i2 < ghbVar.d) {
                ghbVar.c(i2);
                zzfxVar.zzj(i, Double.doubleToRawLongBits(ghbVar.c[i2]));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < ghbVar.d; i6++) {
            ghbVar.c(i6);
            double d = ghbVar.c[i6];
            i5 += 8;
        }
        zzfxVar.zzu(i5);
        while (i2 < ghbVar.d) {
            ghbVar.c(i2);
            zzfxVar.zzk(Double.doubleToRawLongBits(ghbVar.c[i2]));
            i2++;
        }
    }

    public static void r(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof gkb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzl(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzz += zzfx.zzz(((Integer) list.get(i3)).intValue());
            }
            zzfxVar.zzu(iZzz);
            while (i2 < list.size()) {
                zzfxVar.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gkb gkbVar = (gkb) list;
        if (!z) {
            while (i2 < gkbVar.d) {
                zzfxVar.zzl(i, gkbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < gkbVar.d; i4++) {
            iZzz2 += zzfx.zzz(gkbVar.b(i4));
        }
        zzfxVar.zzu(iZzz2);
        while (i2 < gkbVar.d) {
            zzfxVar.zzm(gkbVar.b(i2));
            i2++;
        }
    }

    public static void s(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof gkb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzh(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzfxVar.zzu(i3);
            while (i2 < list.size()) {
                zzfxVar.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gkb gkbVar = (gkb) list;
        if (!z) {
            while (i2 < gkbVar.d) {
                zzfxVar.zzh(i, gkbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < gkbVar.d; i6++) {
            gkbVar.b(i6);
            i5 += 4;
        }
        zzfxVar.zzu(i5);
        while (i2 < gkbVar.d) {
            zzfxVar.zzi(gkbVar.b(i2));
            i2++;
        }
    }

    public static void t(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof onb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzj(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzfxVar.zzu(i3);
            while (i2 < list.size()) {
                zzfxVar.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        onb onbVar = (onb) list;
        if (!z) {
            while (i2 < onbVar.d) {
                zzfxVar.zzj(i, onbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < onbVar.d; i6++) {
            onbVar.b(i6);
            i5 += 8;
        }
        zzfxVar.zzu(i5);
        while (i2 < onbVar.d) {
            zzfxVar.zzk(onbVar.b(i2));
            i2++;
        }
    }

    public static void u(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof ejb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzh(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).getClass();
                i3 += 4;
            }
            zzfxVar.zzu(i3);
            while (i2 < list.size()) {
                zzfxVar.zzi(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        ejb ejbVar = (ejb) list;
        if (!z) {
            while (i2 < ejbVar.d) {
                ejbVar.c(i2);
                zzfxVar.zzh(i, Float.floatToRawIntBits(ejbVar.c[i2]));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < ejbVar.d; i6++) {
            ejbVar.c(i6);
            float f = ejbVar.c[i6];
            i5 += 4;
        }
        zzfxVar.zzu(i5);
        while (i2 < ejbVar.d) {
            ejbVar.c(i2);
            zzfxVar.zzi(Float.floatToRawIntBits(ejbVar.c[i2]));
            i2++;
        }
    }

    public static void v(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof gkb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzl(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzz += zzfx.zzz(((Integer) list.get(i3)).intValue());
            }
            zzfxVar.zzu(iZzz);
            while (i2 < list.size()) {
                zzfxVar.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gkb gkbVar = (gkb) list;
        if (!z) {
            while (i2 < gkbVar.d) {
                zzfxVar.zzl(i, gkbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < gkbVar.d; i4++) {
            iZzz2 += zzfx.zzz(gkbVar.b(i4));
        }
        zzfxVar.zzu(iZzz2);
        while (i2 < gkbVar.d) {
            zzfxVar.zzm(gkbVar.b(i2));
            i2++;
        }
    }

    public static void w(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof onb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzv(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzz += zzfx.zzz(((Long) list.get(i3)).longValue());
            }
            zzfxVar.zzu(iZzz);
            while (i2 < list.size()) {
                zzfxVar.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        onb onbVar = (onb) list;
        if (!z) {
            while (i2 < onbVar.d) {
                zzfxVar.zzv(i, onbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < onbVar.d; i4++) {
            iZzz2 += zzfx.zzz(onbVar.b(i4));
        }
        zzfxVar.zzu(iZzz2);
        while (i2 < onbVar.d) {
            zzfxVar.zzw(onbVar.b(i2));
            i2++;
        }
    }

    public static void x(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof gkb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzh(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzfxVar.zzu(i3);
            while (i2 < list.size()) {
                zzfxVar.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gkb gkbVar = (gkb) list;
        if (!z) {
            while (i2 < gkbVar.d) {
                zzfxVar.zzh(i, gkbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < gkbVar.d; i6++) {
            gkbVar.b(i6);
            i5 += 4;
        }
        zzfxVar.zzu(i5);
        while (i2 < gkbVar.d) {
            zzfxVar.zzi(gkbVar.b(i2));
            i2++;
        }
    }

    public static void y(int i, List list, bhb bhbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfx zzfxVar = bhbVar.a;
        int i2 = 0;
        if (!(list instanceof onb)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfxVar.zzj(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzfxVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzfxVar.zzu(i3);
            while (i2 < list.size()) {
                zzfxVar.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        onb onbVar = (onb) list;
        if (!z) {
            while (i2 < onbVar.d) {
                zzfxVar.zzj(i, onbVar.b(i2));
                i2++;
            }
            return;
        }
        zzfxVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < onbVar.d; i6++) {
            onbVar.b(i6);
            i5 += 8;
        }
        zzfxVar.zzu(i5);
        while (i2 < onbVar.d) {
            zzfxVar.zzk(onbVar.b(i2));
            i2++;
        }
    }
}
