package com.google.android.gms.internal.play_billing;

import androidx.compose.ui.spatial.RectListKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.ad2;
import defpackage.bhb;
import defpackage.bj;
import defpackage.ceb;
import defpackage.dta;
import defpackage.dub;
import defpackage.dvb;
import defpackage.fg;
import defpackage.geb;
import defpackage.kpb;
import defpackage.kqb;
import defpackage.l62;
import defpackage.lib;
import defpackage.mi2;
import defpackage.n7;
import defpackage.qqb;
import defpackage.rg;
import defpackage.uqb;
import defpackage.wtb;
import defpackage.xib;
import defpackage.zc5;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class p<T> implements kqb<T> {
    public static final int[] j = new int[0];
    public static final Unsafe k = wtb.d();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final zzhr e;
    public final boolean f;
    public final int[] g;
    public final int h;
    public final int i;

    public p(int[] iArr, Object[] objArr, int i, int i2, zzhr zzhrVar, int[] iArr2, int i3, int i4, defpackage.g gVar, lib libVar) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        boolean z = false;
        if (libVar != null && (zzhrVar instanceof zzgm)) {
            z = true;
        }
        this.f = z;
        this.g = iArr2;
        this.h = i3;
        this.i = i4;
        this.e = zzhrVar;
    }

    public static Field C(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sbD = ad2.d("Field ", str, " for ", name, " not found. Known fields are ");
            sbD.append(string);
            throw new RuntimeException(sbD.toString(), e);
        }
    }

    public static boolean o(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgp) {
            return ((zzgp) obj).e();
        }
        return true;
    }

    public static final int q(byte[] bArr, int i, int i2, zzjg zzjgVar, Class cls, ceb cebVar) throws zzhb {
        zzjg zzjgVar2 = zzjg.zza;
        switch (zzjgVar.ordinal()) {
            case 0:
                int i3 = i + 8;
                cebVar.c = Double.valueOf(Double.longBitsToDouble(geb.n(i, bArr)));
                return i3;
            case 1:
                int i4 = i + 4;
                cebVar.c = Float.valueOf(Float.intBitsToFloat(geb.b(i, bArr)));
                return i4;
            case 2:
            case 3:
                int iJ = geb.j(bArr, i, cebVar);
                cebVar.c = Long.valueOf(cebVar.b);
                return iJ;
            case 4:
            case 12:
            case 13:
                int iG = geb.g(bArr, i, cebVar);
                cebVar.c = Integer.valueOf(cebVar.a);
                return iG;
            case 5:
            case 15:
                int i5 = i + 8;
                cebVar.c = Long.valueOf(geb.n(i, bArr));
                return i5;
            case 6:
            case 14:
                int i6 = i + 4;
                cebVar.c = Integer.valueOf(geb.b(i, bArr));
                return i6;
            case 7:
                int iJ2 = geb.j(bArr, i, cebVar);
                cebVar.c = Boolean.valueOf(cebVar.b != 0);
                return iJ2;
            case 8:
                return geb.e(bArr, i, cebVar);
            case 9:
            default:
                n7.g("unsupported field type.");
                return 0;
            case 10:
                kqb kqbVarA = kpb.b.a(cls);
                Object objZze = kqbVarA.zze();
                int iL = geb.l(objZze, kqbVarA, bArr, i, i2, cebVar);
                kqbVarA.b(objZze);
                cebVar.c = objZze;
                return iL;
            case 11:
                return geb.a(bArr, i, cebVar);
            case 16:
                int iG2 = geb.g(bArr, i, cebVar);
                cebVar.c = Integer.valueOf(zzft.zzb(cebVar.a));
                return iG2;
            case 17:
                int iJ3 = geb.j(bArr, i, cebVar);
                cebVar.c = Long.valueOf(zzft.zzc(cebVar.b));
                return iJ3;
        }
    }

    public static zzir s(Object obj) {
        zzgp zzgpVar = (zzgp) obj;
        zzir zzirVar = zzgpVar.zzc;
        if (zzirVar != zzir.zzc()) {
            return zzirVar;
        }
        zzir zzirVarA = zzir.a();
        zzgpVar.zzc = zzirVarA;
        return zzirVarA;
    }

    public static int t(Object obj, long j2) {
        return ((Integer) wtb.c(obj, j2)).intValue();
    }

    public static int v(int i) {
        return (i >>> 20) & 255;
    }

    public static long x(Object obj, long j2) {
        return ((Long) wtb.c(obj, j2)).longValue();
    }

    public final Object A(int i, Object obj) {
        kqb kqbVarZ = z(i);
        int iW = w(i) & 1048575;
        if (!m(i, obj)) {
            return kqbVarZ.zze();
        }
        Object object = k.getObject(obj, iW);
        if (o(object)) {
            return object;
        }
        Object objZze = kqbVarZ.zze();
        if (object != null) {
            kqbVarZ.c(objZze, object);
        }
        return objZze;
    }

    public final Object B(int i, int i2, Object obj) {
        kqb kqbVarZ = z(i2);
        if (!p(i, i2, obj)) {
            return kqbVarZ.zze();
        }
        Object object = k.getObject(obj, w(i2) & 1048575);
        if (o(object)) {
            return object;
        }
        Object objZze = kqbVarZ.zze();
        if (object != null) {
            kqbVarZ.c(objZze, object);
        }
        return objZze;
    }

    @Override // defpackage.kqb
    public final boolean a(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < this.h) {
            int i6 = this.g[i3];
            int iW = this.w(i6);
            int[] iArr = this.a;
            int i7 = iArr[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i5) {
                if (i8 != 1048575) {
                    i4 = k.getInt(obj, i8);
                }
                i2 = i4;
                i = i8;
            } else {
                i = i5;
                i2 = i4;
            }
            p<T> pVar = this;
            Object obj2 = obj;
            if ((268435456 & iW) == 0 || pVar.n(obj2, i6, i, i2, i9)) {
                int iV = v(iW);
                if (iV != 9 && iV != 17) {
                    if (iV != 27) {
                        if (iV == 60 || iV == 68) {
                            if (!pVar.p(iArr[i6], i6, obj2) || pVar.z(i6).a(wtb.c(obj2, iW & 1048575))) {
                                i3++;
                                this = pVar;
                                obj = obj2;
                                i5 = i;
                                i4 = i2;
                            }
                        } else if (iV != 49) {
                            if (iV != 50) {
                                continue;
                            } else {
                                zzhm zzhmVar = (zzhm) wtb.c(obj2, iW & 1048575);
                                if (zzhmVar.isEmpty()) {
                                    continue;
                                } else {
                                    int i10 = i6 / 3;
                                    if (((zzjg) ((zzhl) pVar.b[i10 + i10]).a.b).zzb() == zzjh.zzi) {
                                        kqb kqbVarA = null;
                                        for (Object obj3 : zzhmVar.values()) {
                                            if (kqbVarA == null) {
                                                kqbVarA = kpb.b.a(obj3.getClass());
                                            }
                                            if (!kqbVarA.a(obj3)) {
                                            }
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                            i3++;
                            this = pVar;
                            obj = obj2;
                            i5 = i;
                            i4 = i2;
                        }
                    }
                    List list = (List) wtb.c(obj2, iW & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        kqb kqbVarZ = pVar.z(i6);
                        for (int i11 = 0; i11 < list.size(); i11++) {
                            if (kqbVarZ.a(list.get(i11))) {
                            }
                        }
                    }
                    i3++;
                    this = pVar;
                    obj = obj2;
                    i5 = i;
                    i4 = i2;
                } else if (!pVar.n(obj2, i6, i, i2, i9) || pVar.z(i6).a(wtb.c(obj2, iW & 1048575))) {
                    i3++;
                    this = pVar;
                    obj = obj2;
                    i5 = i;
                    i4 = i2;
                }
            }
        }
        return !this.f || ((zzgm) obj).zzb.h();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0070  */
    /* JADX WARN: Code duplicated, block: B:40:0x007b A[SYNTHETIC] */
    @Override // defpackage.kqb
    public final void b(Object obj) {
        if (!o(obj)) {
            return;
        }
        int i = 0;
        if (obj instanceof zzgp) {
            zzgp zzgpVar = (zzgp) obj;
            zzgpVar.d();
            zzgpVar.zza = 0;
            zzgpVar.b();
        }
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                ((zzgp) obj).zzc.zzh();
                if (this.f) {
                    ((zzgm) obj).zzb.e();
                    return;
                }
                return;
            }
            int iW = w(i);
            int i2 = 1048575 & iW;
            int iV = v(iW);
            long j2 = i2;
            Unsafe unsafe = k;
            if (iV != 9) {
                if (iV != 60 && iV != 68) {
                    switch (iV) {
                        case 17:
                            if (m(i, obj)) {
                                z(i).b(unsafe.getObject(obj, j2));
                            }
                            break;
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            ((zzgu) wtb.c(obj, j2)).zzb();
                            break;
                        case 50:
                            Object object = unsafe.getObject(obj, j2);
                            if (object != null) {
                                ((zzhm) object).zzc();
                                unsafe.putObject(obj, j2, object);
                            }
                            break;
                    }
                } else if (p(iArr[i], i, obj)) {
                    z(i).b(unsafe.getObject(obj, j2));
                }
            } else if (m(i, obj)) {
                z(i).b(unsafe.getObject(obj, j2));
            }
            i += 3;
        }
    }

    @Override // defpackage.kqb
    public final void c(Object obj, Object obj2) {
        Object obj3;
        if (!o(obj)) {
            fg.c("Mutating immutable message: ".concat(String.valueOf(obj)));
            return;
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                Object obj4 = obj;
                r.o(obj4, obj2);
                if (!this.f || ((zzgm) obj2).zzb.a.isEmpty()) {
                    return;
                }
                throw null;
            }
            int iW = w(i);
            int i2 = iW & 1048575;
            int iV = v(iW);
            int i3 = iArr[i];
            long j2 = i2;
            switch (iV) {
                case 0:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        dta dtaVar = wtb.c;
                        dtaVar.h(obj3, j2, dtaVar.a(obj2, j2));
                        k(i, obj3);
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 1:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        dta dtaVar2 = wtb.c;
                        dtaVar2.j(obj3, j2, dtaVar2.c(obj2, j2));
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 2:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.c.a.putLong(obj3, j2, wtb.b(obj2, j2));
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 3:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.c.a.putLong(obj3, j2, wtb.b(obj2, j2));
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 4:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.g(wtb.a(obj2, j2), j2, obj3);
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 5:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.c.a.putLong(obj3, j2, wtb.b(obj2, j2));
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 6:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.g(wtb.a(obj2, j2), j2, obj3);
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 7:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        dta dtaVar3 = wtb.c;
                        dtaVar3.e(obj3, j2, dtaVar3.m(obj2, j2));
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 8:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.h(j2, obj3, wtb.c(obj2, j2));
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 9:
                    obj3 = obj;
                    i(i, obj3, obj2);
                    continue;
                    i += 3;
                    obj = obj3;
                    break;
                case 10:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.h(j2, obj3, wtb.c(obj2, j2));
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 11:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.g(wtb.a(obj2, j2), j2, obj3);
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 12:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.g(wtb.a(obj2, j2), j2, obj3);
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 13:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.g(wtb.a(obj2, j2), j2, obj3);
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 14:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.c.a.putLong(obj3, j2, wtb.b(obj2, j2));
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 15:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        wtb.g(wtb.a(obj2, j2), j2, obj3);
                        k(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 16:
                    if (m(i, obj2)) {
                        obj3 = obj;
                        wtb.c.a.putLong(obj3, j2, wtb.b(obj2, j2));
                        k(i, obj3);
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 17:
                    i(i, obj, obj2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzgu zzguVarZzd = (zzgu) wtb.c(obj, j2);
                    zzgu zzguVar = (zzgu) wtb.c(obj2, j2);
                    int size = zzguVarZzd.size();
                    int size2 = zzguVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzguVarZzd.zzc()) {
                            zzguVarZzd = zzguVarZzd.zzd(size2 + size);
                        }
                        zzguVarZzd.addAll(zzguVar);
                    }
                    if (size > 0) {
                        zzguVar = zzguVarZzd;
                    }
                    wtb.h(j2, obj, zzguVar);
                    break;
                case 50:
                    defpackage.g gVar = r.a;
                    zzhm zzhmVarZzb = (zzhm) wtb.c(obj, j2);
                    zzhm zzhmVar = (zzhm) wtb.c(obj2, j2);
                    if (!zzhmVar.isEmpty()) {
                        if (!zzhmVarZzb.zze()) {
                            zzhmVarZzb = zzhmVarZzb.zzb();
                        }
                        zzhmVarZzb.zzd(zzhmVar);
                    }
                    wtb.h(j2, obj, zzhmVarZzb);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                case 52:
                case 53:
                case 54:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (p(i3, i, obj2)) {
                        wtb.h(j2, obj, wtb.c(obj2, j2));
                        wtb.g(i3, iArr[i + 2] & 1048575, obj);
                    }
                    break;
                case 60:
                    j(i, obj, obj2);
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                case RectListKt.BitOffsetForGesturable /* 62 */:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (p(i3, i, obj2)) {
                        wtb.h(j2, obj, wtb.c(obj2, j2));
                        wtb.g(i3, iArr[i + 2] & 1048575, obj);
                    }
                    break;
                case 68:
                    j(i, obj, obj2);
                    break;
            }
            obj3 = obj;
            i += 3;
            obj = obj3;
        }
    }

    @Override // defpackage.kqb
    public final void d(Object obj, byte[] bArr, int i, int i2, ceb cebVar) {
        r(obj, bArr, i, i2, 0, cebVar);
    }

    /* JADX WARN: Code duplicated, block: B:191:0x051f  */
    /* JADX WARN: Code duplicated, block: B:82:0x0203  */
    @Override // defpackage.kqb
    public final int e(zzgp zzgpVar) {
        int i;
        int iZzy;
        int iZzz;
        int i2;
        int iA;
        int iH;
        int iZzy2;
        int size;
        int iN;
        int iZzy3;
        int iZzy4;
        int iZzy5;
        int iA2;
        int iZzy6;
        int iZzz2;
        p<T> pVar = this;
        zzgp zzgpVar2 = zzgpVar;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int iB = 0;
        while (true) {
            int[] iArr = pVar.a;
            if (i5 >= iArr.length) {
                int iZza = zzgpVar2.zzc.zza() + iB;
                if (!pVar.f) {
                    return iZza;
                }
                qqb qqbVar = ((zzgm) zzgpVar2).zzb.a;
                int i7 = qqbVar.c;
                int iC = 0;
                for (int i8 = 0; i8 < i7; i8++) {
                    uqb uqbVarD = qqbVar.d(i8);
                    iC = xib.c(uqbVarD.b, uqbVarD.c) + iC;
                }
                for (Map.Entry entry : qqbVar.b()) {
                    iC = xib.c((zzgg) entry.getKey(), entry.getValue()) + iC;
                }
                return iZza + iC;
            }
            int iW = pVar.w(i5);
            int iV = v(iW);
            int i9 = iArr[i5];
            int i10 = iArr[i5 + 2];
            int i11 = i10 & i3;
            Unsafe unsafe = k;
            if (iV <= 17) {
                if (i11 != i4) {
                    i6 = i11 == i3 ? 0 : unsafe.getInt(zzgpVar2, i11);
                    i4 = i11;
                }
                i = 1 << (i10 >>> 20);
            } else {
                i = 0;
            }
            int i12 = iW & i3;
            if (iV >= zzgi.zzJ.zza()) {
                zzgi.zzW.zza();
            }
            long j2 = i12;
            switch (iV) {
                case 0:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        iB = bj.b(i9 << 3, 8, iB);
                    }
                    break;
                case 1:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        iB = bj.b(i9 << 3, 4, iB);
                    }
                    pVar = this;
                    zzgpVar2 = zzgpVar;
                    break;
                case 2:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        long j3 = unsafe.getLong(zzgpVar2, j2);
                        iZzy = zzfx.zzy(i9 << 3);
                        iZzz = zzfx.zzz(j3);
                        iB += iZzz + iZzy;
                    }
                    pVar = this;
                    break;
                case 3:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        long j4 = unsafe.getLong(zzgpVar2, j2);
                        iZzy = zzfx.zzy(i9 << 3);
                        iZzz = zzfx.zzz(j4);
                        iB += iZzz + iZzy;
                    }
                    pVar = this;
                    break;
                case 4:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        long j5 = unsafe.getInt(zzgpVar2, j2);
                        iZzy = zzfx.zzy(i9 << 3);
                        iZzz = zzfx.zzz(j5);
                        iB += iZzz + iZzy;
                    }
                    pVar = this;
                    break;
                case 5:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        iB = bj.b(i9 << 3, 8, iB);
                    }
                    pVar = this;
                    zzgpVar2 = zzgpVar;
                    break;
                case 6:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        iB = bj.b(i9 << 3, 4, iB);
                    }
                    pVar = this;
                    zzgpVar2 = zzgpVar;
                    break;
                case 7:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        iB = bj.b(i9 << 3, 1, iB);
                    }
                    pVar = this;
                    zzgpVar2 = zzgpVar;
                    break;
                case 8:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        int i13 = i9 << 3;
                        Object object = unsafe.getObject(zzgpVar2, j2);
                        if (object instanceof zzfp) {
                            int iZzy7 = zzfx.zzy(i13);
                            int iZzd = ((zzfp) object).zzd();
                            iB = rg.d(iZzd, iZzd, iZzy7, iB);
                        } else {
                            int iZzy8 = zzfx.zzy(i13);
                            int i14 = dvb.a;
                            int iA3 = dub.a((String) object);
                            iB = rg.d(iA3, iA3, iZzy8, iB);
                        }
                    }
                    pVar = this;
                    break;
                case 9:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        Object object2 = unsafe.getObject(zzgpVar2, j2);
                        kqb kqbVarZ = pVar.z(i5);
                        defpackage.g gVar = r.a;
                        int iZzy9 = zzfx.zzy(i9 << 3);
                        int iA4 = ((zzfa) object2).a(kqbVarZ);
                        iB = rg.d(iA4, iA4, iZzy9, iB);
                    }
                    break;
                case 10:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        zzfp zzfpVar = (zzfp) unsafe.getObject(zzgpVar2, j2);
                        int iZzy10 = zzfx.zzy(i9 << 3);
                        int iZzd2 = zzfpVar.zzd();
                        iB = rg.d(iZzd2, iZzd2, iZzy10, iB);
                    }
                    pVar = this;
                    break;
                case 11:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        iB = bj.b(unsafe.getInt(zzgpVar2, j2), zzfx.zzy(i9 << 3), iB);
                    }
                    pVar = this;
                    break;
                case 12:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        long j6 = unsafe.getInt(zzgpVar2, j2);
                        iZzy = zzfx.zzy(i9 << 3);
                        iZzz = zzfx.zzz(j6);
                        iB += iZzz + iZzy;
                    }
                    pVar = this;
                    break;
                case 13:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        iB = bj.b(i9 << 3, 4, iB);
                    }
                    pVar = this;
                    zzgpVar2 = zzgpVar;
                    break;
                case 14:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        iB = bj.b(i9 << 3, 8, iB);
                    }
                    pVar = this;
                    zzgpVar2 = zzgpVar;
                    break;
                case 15:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        int i15 = unsafe.getInt(zzgpVar2, j2);
                        iB = bj.b((i15 >> 31) ^ (i15 + i15), zzfx.zzy(i9 << 3), iB);
                    }
                    pVar = this;
                    break;
                case 16:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        long j7 = unsafe.getLong(zzgpVar2, j2);
                        iZzy = zzfx.zzy(i9 << 3);
                        iZzz = zzfx.zzz((j7 >> 63) ^ (j7 + j7));
                        iB += iZzz + iZzy;
                    }
                    pVar = this;
                    break;
                case 17:
                    if (pVar.n(zzgpVar2, i5, i4, i6, i)) {
                        zzhr zzhrVar = (zzhr) unsafe.getObject(zzgpVar2, j2);
                        kqb kqbVarZ2 = pVar.z(i5);
                        defpackage.g gVar2 = r.a;
                        int iZzy11 = zzfx.zzy(i9 << 3);
                        i2 = iZzy11 + iZzy11;
                        iA = ((zzfa) zzhrVar).a(kqbVarZ2);
                        iH = iA + i2;
                        iB += iH;
                    }
                    break;
                case 18:
                    iH = r.h(i9, (List) unsafe.getObject(zzgpVar2, j2));
                    iB += iH;
                    break;
                case 19:
                    iH = r.g(i9, (List) unsafe.getObject(zzgpVar2, j2));
                    iB += iH;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar3 = r.a;
                    if (list.size() == 0) {
                        iZzy2 = 0;
                    } else {
                        iZzy2 = (zzfx.zzy(i9 << 3) * list.size()) + r.j(list);
                    }
                    iB += iZzy2;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar4 = r.a;
                    size = list2.size();
                    if (size == 0) {
                        iZzy4 = 0;
                    } else {
                        iN = r.n(list2);
                        iZzy3 = zzfx.zzy(i9 << 3);
                        iZzy4 = (iZzy3 * size) + iN;
                    }
                    iB += iZzy4;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar5 = r.a;
                    size = list3.size();
                    if (size == 0) {
                        iZzy4 = 0;
                    } else {
                        iN = r.i(list3);
                        iZzy3 = zzfx.zzy(i9 << 3);
                        iZzy4 = (iZzy3 * size) + iN;
                    }
                    iB += iZzy4;
                    break;
                case 23:
                    iH = r.h(i9, (List) unsafe.getObject(zzgpVar2, j2));
                    iB += iH;
                    break;
                case 24:
                    iH = r.g(i9, (List) unsafe.getObject(zzgpVar2, j2));
                    iB += iH;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar6 = r.a;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        iZzy2 = 0;
                    } else {
                        iZzy2 = (zzfx.zzy(i9 << 3) + 1) * size2;
                    }
                    iB += iZzy2;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar7 = r.a;
                    int size3 = list5.size();
                    if (size3 == 0) {
                        iZzy4 = 0;
                    } else {
                        iZzy4 = zzfx.zzy(i9 << 3) * size3;
                        if (list5 instanceof zzhd) {
                            zzhd zzhdVar = (zzhd) list5;
                            for (int i16 = 0; i16 < size3; i16++) {
                                Object objZza = zzhdVar.zza();
                                if (objZza instanceof zzfp) {
                                    int iZzd3 = ((zzfp) objZza).zzd();
                                    iZzy4 = bj.b(iZzd3, iZzd3, iZzy4);
                                } else {
                                    int i17 = dvb.a;
                                    int iA5 = dub.a((String) objZza);
                                    iZzy4 = bj.b(iA5, iA5, iZzy4);
                                }
                            }
                        } else {
                            for (int i18 = 0; i18 < size3; i18++) {
                                Object obj = list5.get(i18);
                                if (obj instanceof zzfp) {
                                    int iZzd4 = ((zzfp) obj).zzd();
                                    iZzy4 = bj.b(iZzd4, iZzd4, iZzy4);
                                } else {
                                    int i19 = dvb.a;
                                    int iA6 = dub.a((String) obj);
                                    iZzy4 = bj.b(iA6, iA6, iZzy4);
                                }
                            }
                        }
                    }
                    iB += iZzy4;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(zzgpVar2, j2);
                    kqb kqbVarZ3 = pVar.z(i5);
                    defpackage.g gVar8 = r.a;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iZzy5 = 0;
                    } else {
                        iZzy5 = zzfx.zzy(i9 << 3) * size4;
                        for (int i20 = 0; i20 < size4; i20++) {
                            int iA7 = ((zzfa) list6.get(i20)).a(kqbVarZ3);
                            iZzy5 = bj.b(iA7, iA7, iZzy5);
                        }
                    }
                    iB += iZzy5;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar9 = r.a;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iZzy4 = 0;
                    } else {
                        iZzy4 = zzfx.zzy(i9 << 3) * size5;
                        for (int i21 = 0; i21 < list7.size(); i21++) {
                            int iZzd5 = ((zzfp) list7.get(i21)).zzd();
                            iZzy4 = bj.b(iZzd5, iZzd5, iZzy4);
                        }
                    }
                    iB += iZzy4;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar10 = r.a;
                    size = list8.size();
                    if (size == 0) {
                        iZzy4 = 0;
                    } else {
                        iN = r.m(list8);
                        iZzy3 = zzfx.zzy(i9 << 3);
                        iZzy4 = (iZzy3 * size) + iN;
                    }
                    iB += iZzy4;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar11 = r.a;
                    size = list9.size();
                    if (size == 0) {
                        iZzy4 = 0;
                    } else {
                        iN = r.f(list9);
                        iZzy3 = zzfx.zzy(i9 << 3);
                        iZzy4 = (iZzy3 * size) + iN;
                    }
                    iB += iZzy4;
                    break;
                case 31:
                    iH = r.g(i9, (List) unsafe.getObject(zzgpVar2, j2));
                    iB += iH;
                    break;
                case 32:
                    iH = r.h(i9, (List) unsafe.getObject(zzgpVar2, j2));
                    iB += iH;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar12 = r.a;
                    size = list10.size();
                    if (size == 0) {
                        iZzy4 = 0;
                    } else {
                        iN = r.k(list10);
                        iZzy3 = zzfx.zzy(i9 << 3);
                        iZzy4 = (iZzy3 * size) + iN;
                    }
                    iB += iZzy4;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar13 = r.a;
                    size = list11.size();
                    if (size == 0) {
                        iZzy4 = 0;
                    } else {
                        iN = r.l(list11);
                        iZzy3 = zzfx.zzy(i9 << 3);
                        iZzy4 = (iZzy3 * size) + iN;
                    }
                    iB += iZzy4;
                    break;
                case 35:
                    List list12 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar14 = r.a;
                    int size6 = list12.size() * 8;
                    if (size6 > 0) {
                        iB = rg.d(size6, zzfx.zzy(i9 << 3), size6, iB);
                    }
                    break;
                case 36:
                    List list13 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar15 = r.a;
                    int size7 = list13.size() * 4;
                    if (size7 > 0) {
                        iB = rg.d(size7, zzfx.zzy(i9 << 3), size7, iB);
                    }
                    break;
                case 37:
                    int iJ = r.j((List) unsafe.getObject(zzgpVar2, j2));
                    if (iJ > 0) {
                        iB = rg.d(iJ, zzfx.zzy(i9 << 3), iJ, iB);
                    }
                    break;
                case 38:
                    int iN2 = r.n((List) unsafe.getObject(zzgpVar2, j2));
                    if (iN2 > 0) {
                        iB = rg.d(iN2, zzfx.zzy(i9 << 3), iN2, iB);
                    }
                    break;
                case 39:
                    int i22 = r.i((List) unsafe.getObject(zzgpVar2, j2));
                    if (i22 > 0) {
                        iB = rg.d(i22, zzfx.zzy(i9 << 3), i22, iB);
                    }
                    break;
                case 40:
                    List list14 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar16 = r.a;
                    int size8 = list14.size() * 8;
                    if (size8 > 0) {
                        iB = rg.d(size8, zzfx.zzy(i9 << 3), size8, iB);
                    }
                    break;
                case 41:
                    List list15 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar17 = r.a;
                    int size9 = list15.size() * 4;
                    if (size9 > 0) {
                        iB = rg.d(size9, zzfx.zzy(i9 << 3), size9, iB);
                    }
                    break;
                case 42:
                    List list16 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar18 = r.a;
                    int size10 = list16.size();
                    if (size10 > 0) {
                        iB = rg.d(size10, zzfx.zzy(i9 << 3), size10, iB);
                    }
                    break;
                case 43:
                    int iM = r.m((List) unsafe.getObject(zzgpVar2, j2));
                    if (iM > 0) {
                        iB = rg.d(iM, zzfx.zzy(i9 << 3), iM, iB);
                    }
                    break;
                case 44:
                    int iF = r.f((List) unsafe.getObject(zzgpVar2, j2));
                    if (iF > 0) {
                        iB = rg.d(iF, zzfx.zzy(i9 << 3), iF, iB);
                    }
                    break;
                case 45:
                    List list17 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar19 = r.a;
                    int size11 = list17.size() * 4;
                    if (size11 > 0) {
                        iB = rg.d(size11, zzfx.zzy(i9 << 3), size11, iB);
                    }
                    break;
                case 46:
                    List list18 = (List) unsafe.getObject(zzgpVar2, j2);
                    defpackage.g gVar20 = r.a;
                    int size12 = list18.size() * 8;
                    if (size12 > 0) {
                        iB = rg.d(size12, zzfx.zzy(i9 << 3), size12, iB);
                    }
                    break;
                case 47:
                    int iK = r.k((List) unsafe.getObject(zzgpVar2, j2));
                    if (iK > 0) {
                        iB = rg.d(iK, zzfx.zzy(i9 << 3), iK, iB);
                    }
                    break;
                case 48:
                    int iL = r.l((List) unsafe.getObject(zzgpVar2, j2));
                    if (iL > 0) {
                        iB = rg.d(iL, zzfx.zzy(i9 << 3), iL, iB);
                    }
                    break;
                case 49:
                    List list19 = (List) unsafe.getObject(zzgpVar2, j2);
                    kqb kqbVarZ4 = pVar.z(i5);
                    defpackage.g gVar21 = r.a;
                    int size13 = list19.size();
                    if (size13 == 0) {
                        iA2 = 0;
                    } else {
                        iA2 = 0;
                        for (int i23 = 0; i23 < size13; i23++) {
                            zzhr zzhrVar2 = (zzhr) list19.get(i23);
                            int iZzy12 = zzfx.zzy(i9 << 3);
                            iA2 += ((zzfa) zzhrVar2).a(kqbVarZ4) + iZzy12 + iZzy12;
                        }
                    }
                    iB += iA2;
                    break;
                case 50:
                    int i24 = i5 / 3;
                    zzhm zzhmVar = (zzhm) unsafe.getObject(zzgpVar2, j2);
                    zzhl zzhlVar = (zzhl) pVar.b[i24 + i24];
                    if (zzhmVar.isEmpty()) {
                        iZzy4 = 0;
                    } else {
                        iZzy4 = 0;
                        for (Map.Entry entry2 : zzhmVar.entrySet()) {
                            iZzy4 += zzhlVar.zza(i9, entry2.getKey(), entry2.getValue());
                        }
                    }
                    iB += iZzy4;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        iB = bj.b(i9 << 3, 8, iB);
                    }
                    break;
                case 52:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        iB = bj.b(i9 << 3, 4, iB);
                    }
                    break;
                case 53:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        long jX = x(zzgpVar2, j2);
                        iZzy6 = zzfx.zzy(i9 << 3);
                        iZzz2 = zzfx.zzz(jX);
                        iB += iZzz2 + iZzy6;
                    }
                    break;
                case 54:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        long jX2 = x(zzgpVar2, j2);
                        iZzy6 = zzfx.zzy(i9 << 3);
                        iZzz2 = zzfx.zzz(jX2);
                        iB += iZzz2 + iZzy6;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        long jT = t(zzgpVar2, j2);
                        iZzy6 = zzfx.zzy(i9 << 3);
                        iZzz2 = zzfx.zzz(jT);
                        iB += iZzz2 + iZzy6;
                    }
                    break;
                case 56:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        iB = bj.b(i9 << 3, 8, iB);
                    }
                    break;
                case 57:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        iB = bj.b(i9 << 3, 4, iB);
                    }
                    break;
                case 58:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        iB = bj.b(i9 << 3, 1, iB);
                    }
                    break;
                case 59:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        int i25 = i9 << 3;
                        Object object3 = unsafe.getObject(zzgpVar2, j2);
                        if (object3 instanceof zzfp) {
                            int iZzy13 = zzfx.zzy(i25);
                            int iZzd6 = ((zzfp) object3).zzd();
                            iB = rg.d(iZzd6, iZzd6, iZzy13, iB);
                        } else {
                            int iZzy14 = zzfx.zzy(i25);
                            int i26 = dvb.a;
                            int iA8 = dub.a((String) object3);
                            iB = rg.d(iA8, iA8, iZzy14, iB);
                        }
                    }
                    break;
                case 60:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        Object object4 = unsafe.getObject(zzgpVar2, j2);
                        kqb kqbVarZ5 = pVar.z(i5);
                        defpackage.g gVar22 = r.a;
                        int iZzy15 = zzfx.zzy(i9 << 3);
                        int iA9 = ((zzfa) object4).a(kqbVarZ5);
                        iB = rg.d(iA9, iA9, iZzy15, iB);
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        zzfp zzfpVar2 = (zzfp) unsafe.getObject(zzgpVar2, j2);
                        int iZzy16 = zzfx.zzy(i9 << 3);
                        int iZzd7 = zzfpVar2.zzd();
                        iB = rg.d(iZzd7, iZzd7, iZzy16, iB);
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        iB = bj.b(t(zzgpVar2, j2), zzfx.zzy(i9 << 3), iB);
                    }
                    break;
                case 63:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        long jT2 = t(zzgpVar2, j2);
                        iZzy6 = zzfx.zzy(i9 << 3);
                        iZzz2 = zzfx.zzz(jT2);
                        iB += iZzz2 + iZzy6;
                    }
                    break;
                case 64:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        iB = bj.b(i9 << 3, 4, iB);
                    }
                    break;
                case 65:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        iB = bj.b(i9 << 3, 8, iB);
                    }
                    break;
                case 66:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        int iT = t(zzgpVar2, j2);
                        iB = bj.b((iT >> 31) ^ (iT + iT), zzfx.zzy(i9 << 3), iB);
                    }
                    break;
                case 67:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        long jX3 = x(zzgpVar2, j2);
                        iZzy6 = zzfx.zzy(i9 << 3);
                        iZzz2 = zzfx.zzz((jX3 >> 63) ^ (jX3 + jX3));
                        iB += iZzz2 + iZzy6;
                    }
                    break;
                case 68:
                    if (pVar.p(i9, i5, zzgpVar2)) {
                        zzhr zzhrVar3 = (zzhr) unsafe.getObject(zzgpVar2, j2);
                        kqb kqbVarZ6 = pVar.z(i5);
                        defpackage.g gVar23 = r.a;
                        int iZzy17 = zzfx.zzy(i9 << 3);
                        i2 = iZzy17 + iZzy17;
                        iA = ((zzfa) zzhrVar3).a(kqbVarZ6);
                        iH = iA + i2;
                        iB += iH;
                    }
                    break;
            }
            i5 += 3;
            i3 = 1048575;
        }
    }

    @Override // defpackage.kqb
    public final int f(zzgp zzgpVar) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int i3;
        int iHashCode = 0;
        for (int i4 = 0; i4 < this.a.length; i4 += 3) {
            int iW = w(i4);
            int iV = v(iW);
            if (iV <= 50 || iV >= 69) {
                long j2 = iW & 1048575;
                int iHashCode2 = 37;
                switch (iV) {
                    case 0:
                        i = iHashCode * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(wtb.c.a(zzgpVar, j2));
                        byte[] bArr = zzgv.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 1:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = Float.floatToIntBits(wtb.c.c(zzgpVar, j2));
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 2:
                        i = iHashCode * 53;
                        jDoubleToLongBits = wtb.b(zzgpVar, j2);
                        byte[] bArr2 = zzgv.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 3:
                        i = iHashCode * 53;
                        jDoubleToLongBits = wtb.b(zzgpVar, j2);
                        byte[] bArr3 = zzgv.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 4:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.a(zzgpVar, j2);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 5:
                        i = iHashCode * 53;
                        jDoubleToLongBits = wtb.b(zzgpVar, j2);
                        byte[] bArr4 = zzgv.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 6:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.a(zzgpVar, j2);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 7:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = zzgv.zza(wtb.c.m(zzgpVar, j2));
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 8:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = ((String) wtb.c(zzgpVar, j2)).hashCode();
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 9:
                        i3 = iHashCode * 53;
                        Object objC = wtb.c(zzgpVar, j2);
                        if (objC != null) {
                            iHashCode2 = objC.hashCode();
                        }
                        iHashCode = i3 + iHashCode2;
                        break;
                    case 10:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.c(zzgpVar, j2).hashCode();
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 11:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.a(zzgpVar, j2);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 12:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.a(zzgpVar, j2);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 13:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.a(zzgpVar, j2);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 14:
                        i = iHashCode * 53;
                        jDoubleToLongBits = wtb.b(zzgpVar, j2);
                        byte[] bArr5 = zzgv.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 15:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.a(zzgpVar, j2);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 16:
                        i = iHashCode * 53;
                        jDoubleToLongBits = wtb.b(zzgpVar, j2);
                        byte[] bArr6 = zzgv.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 17:
                        i3 = iHashCode * 53;
                        Object objC2 = wtb.c(zzgpVar, j2);
                        if (objC2 != null) {
                            iHashCode2 = objC2.hashCode();
                        }
                        iHashCode = i3 + iHashCode2;
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.c(zzgpVar, j2).hashCode();
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 50:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = wtb.c(zzgpVar, j2).hashCode();
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                }
            }
        }
        int i5 = this.i;
        while (true) {
            int[] iArr = this.g;
            if (i5 >= iArr.length) {
                int iHashCode3 = zzgpVar.zzc.hashCode() + (iHashCode * 53);
                if (!this.f) {
                    return iHashCode3;
                }
                return ((zzgm) zzgpVar).zzb.a.hashCode() + (iHashCode3 * 53);
            }
            int i6 = iArr[i5];
            if (!p(0, i6, zzgpVar)) {
                iHashCode = wtb.c(zzgpVar, w(i6) & 1048575).hashCode() + (iHashCode * 53);
            }
            i5++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:138:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:175:0x01d1 A[SYNTHETIC] */
    @Override // defpackage.kqb
    public final boolean g(zzgp zzgpVar, zzgp zzgpVar2) {
        boolean zE;
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i < iArr.length) {
                int iW = w(i);
                int iV = v(iW);
                if (iV <= 50 || iV >= 69) {
                    long j2 = iW & 1048575;
                    switch (iV) {
                        case 0:
                            if (l(zzgpVar, zzgpVar2, i)) {
                                dta dtaVar = wtb.c;
                                if (Double.doubleToLongBits(dtaVar.a(zzgpVar, j2)) != Double.doubleToLongBits(dtaVar.a(zzgpVar2, j2))) {
                                }
                            }
                            break;
                        case 1:
                            if (l(zzgpVar, zzgpVar2, i)) {
                                dta dtaVar2 = wtb.c;
                                if (Float.floatToIntBits(dtaVar2.c(zzgpVar, j2)) != Float.floatToIntBits(dtaVar2.c(zzgpVar2, j2))) {
                                }
                            }
                            break;
                        case 2:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.b(zzgpVar, j2) != wtb.b(zzgpVar2, j2)) {
                            }
                            break;
                        case 3:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.b(zzgpVar, j2) != wtb.b(zzgpVar2, j2)) {
                            }
                            break;
                        case 4:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.a(zzgpVar, j2) != wtb.a(zzgpVar2, j2)) {
                            }
                            break;
                        case 5:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.b(zzgpVar, j2) != wtb.b(zzgpVar2, j2)) {
                            }
                            break;
                        case 6:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.a(zzgpVar, j2) != wtb.a(zzgpVar2, j2)) {
                            }
                            break;
                        case 7:
                            if (l(zzgpVar, zzgpVar2, i)) {
                                dta dtaVar3 = wtb.c;
                                if (dtaVar3.m(zzgpVar, j2) != dtaVar3.m(zzgpVar2, j2)) {
                                }
                            }
                            break;
                        case 8:
                            if (!l(zzgpVar, zzgpVar2, i) || !r.e(wtb.c(zzgpVar, j2), wtb.c(zzgpVar2, j2))) {
                            }
                            break;
                        case 9:
                            if (!l(zzgpVar, zzgpVar2, i) || !r.e(wtb.c(zzgpVar, j2), wtb.c(zzgpVar2, j2))) {
                            }
                            break;
                        case 10:
                            if (!l(zzgpVar, zzgpVar2, i) || !r.e(wtb.c(zzgpVar, j2), wtb.c(zzgpVar2, j2))) {
                            }
                            break;
                        case 11:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.a(zzgpVar, j2) != wtb.a(zzgpVar2, j2)) {
                            }
                            break;
                        case 12:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.a(zzgpVar, j2) != wtb.a(zzgpVar2, j2)) {
                            }
                            break;
                        case 13:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.a(zzgpVar, j2) != wtb.a(zzgpVar2, j2)) {
                            }
                            break;
                        case 14:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.b(zzgpVar, j2) != wtb.b(zzgpVar2, j2)) {
                            }
                            break;
                        case 15:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.a(zzgpVar, j2) != wtb.a(zzgpVar2, j2)) {
                            }
                            break;
                        case 16:
                            if (!l(zzgpVar, zzgpVar2, i) || wtb.b(zzgpVar, j2) != wtb.b(zzgpVar2, j2)) {
                            }
                            break;
                        case 17:
                            if (!l(zzgpVar, zzgpVar2, i) || !r.e(wtb.c(zzgpVar, j2), wtb.c(zzgpVar2, j2))) {
                            }
                            break;
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            zE = r.e(wtb.c(zzgpVar, j2), wtb.c(zzgpVar2, j2));
                            if (zE) {
                            }
                            break;
                        case 50:
                            zE = r.e(wtb.c(zzgpVar, j2), wtb.c(zzgpVar2, j2));
                            if (zE) {
                            }
                            break;
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                        case 52:
                        case 53:
                        case 54:
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                        case 60:
                        case RectListKt.BitOffsetForFocusable /* 61 */:
                        case RectListKt.BitOffsetForGesturable /* 62 */:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                        case 68:
                            long j3 = iArr[i + 2] & 1048575;
                            if (wtb.a(zzgpVar, j3) == wtb.a(zzgpVar2, j3) && r.e(wtb.c(zzgpVar, j2), wtb.c(zzgpVar2, j2))) {
                            }
                            break;
                        default:
                            continue;
                    }
                }
                i += 3;
            } else {
                int i2 = this.i;
                while (true) {
                    int[] iArr2 = this.g;
                    if (i2 < iArr2.length) {
                        int i3 = iArr2[i2];
                        long j4 = iArr[i3 + 2] & 1048575;
                        if (wtb.a(zzgpVar, j4) != wtb.a(zzgpVar2, j4)) {
                            return false;
                        }
                        if (!p(0, i3, zzgpVar)) {
                            long jW = w(i3) & 1048575;
                            if (!r.e(wtb.c(zzgpVar, jW), wtb.c(zzgpVar2, jW))) {
                            }
                        }
                        i2++;
                    } else if (zzgpVar.zzc.equals(zzgpVar2.zzc)) {
                        if (this.f) {
                            return ((zzgm) zzgpVar).zzb.equals(((zzgm) zzgpVar2).zzb);
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    @Override // defpackage.kqb
    public final void h(Object obj, bhb bhbVar) {
        Map.Entry entry;
        boolean z;
        int i;
        int i2;
        boolean z2;
        p<T> pVar = this;
        zzfx zzfxVar = bhbVar.a;
        if (pVar.f) {
            xib xibVar = ((zzgm) obj).zzb;
            if (xibVar.a.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) xibVar.d().next();
            }
        } else {
            entry = null;
        }
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = pVar.a;
            if (i5 >= iArr.length) {
                if (entry == null) {
                    ((zzgp) obj).zzc.zzl(bhbVar);
                    return;
                } else {
                    throw null;
                }
            }
            int iW = pVar.w(i5);
            int iV = v(iW);
            int i7 = iArr[i5];
            Unsafe unsafe = k;
            if (iV <= 17) {
                int i8 = iArr[i5 + 2];
                z = true;
                int i9 = i8 & i3;
                if (i9 != i4) {
                    i6 = i9 == i3 ? 0 : unsafe.getInt(obj, i9);
                    i4 = i9;
                }
                i = 1 << (i8 >>> 20);
            } else {
                z = true;
                i = 0;
            }
            if (entry != null) {
                throw null;
            }
            long j2 = iW & i3;
            switch (iV) {
                case 0:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzj(i7, Double.doubleToRawLongBits(wtb.c.a(obj, j2)));
                    }
                    break;
                case 1:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzh(i7, Float.floatToRawIntBits(wtb.c.c(obj, j2)));
                    }
                    break;
                case 2:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzv(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 3:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzv(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 4:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzl(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 5:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzj(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 6:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzh(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 7:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzd(i7, wtb.c.m(obj, j2));
                    }
                    break;
                case 8:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        Object object = unsafe.getObject(obj, j2);
                        if (object instanceof String) {
                            zzfxVar.zzq(i7, (String) object);
                        } else {
                            zzfxVar.zzf(i7, (zzfp) object);
                        }
                    }
                    break;
                case 9:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        bhbVar.b(i7, unsafe.getObject(obj, j2), pVar.z(i5));
                    }
                    break;
                case 10:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzf(i7, (zzfp) unsafe.getObject(obj, j2));
                    }
                    break;
                case 11:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzt(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 12:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzl(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 13:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzh(i7, unsafe.getInt(obj, j2));
                    }
                    break;
                case 14:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        zzfxVar.zzj(i7, unsafe.getLong(obj, j2));
                    }
                    break;
                case 15:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        int i10 = unsafe.getInt(obj, j2);
                        zzfxVar.zzt(i7, (i10 >> 31) ^ (i10 + i10));
                    }
                    break;
                case 16:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        long j3 = unsafe.getLong(obj, j2);
                        zzfxVar.zzv(i7, (j3 + j3) ^ (j3 >> 63));
                    }
                    break;
                case 17:
                    if (pVar.n(obj, i5, i4, i6, i)) {
                        bhbVar.a(i7, unsafe.getObject(obj, j2), pVar.z(i5));
                    }
                    break;
                case 18:
                    i4 = i4;
                    r.q(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 19:
                    i4 = i4;
                    r.u(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 20:
                    i4 = i4;
                    r.w(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 21:
                    i4 = i4;
                    r.d(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 22:
                    i4 = i4;
                    r.v(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 23:
                    i4 = i4;
                    r.t(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 24:
                    i4 = i4;
                    r.s(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 25:
                    i4 = i4;
                    r.p(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 26:
                    i2 = i4;
                    int i11 = iArr[i5];
                    List list = (List) unsafe.getObject(obj, j2);
                    defpackage.g gVar = r.a;
                    if (list != null && !list.isEmpty()) {
                        if (list instanceof zzhd) {
                            zzhd zzhdVar = (zzhd) list;
                            for (int i12 = 0; i12 < list.size(); i12++) {
                                Object objZza = zzhdVar.zza();
                                if (objZza instanceof String) {
                                    zzfxVar.zzq(i11, (String) objZza);
                                } else {
                                    zzfxVar.zzf(i11, (zzfp) objZza);
                                }
                            }
                        } else {
                            for (int i13 = 0; i13 < list.size(); i13++) {
                                zzfxVar.zzq(i11, (String) list.get(i13));
                            }
                        }
                    }
                    i4 = i2;
                    break;
                case 27:
                    i2 = i4;
                    int i14 = iArr[i5];
                    List list2 = (List) unsafe.getObject(obj, j2);
                    kqb kqbVarZ = pVar.z(i5);
                    defpackage.g gVar2 = r.a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i15 = 0; i15 < list2.size(); i15++) {
                            bhbVar.b(i14, list2.get(i15), kqbVarZ);
                        }
                    }
                    i4 = i2;
                    break;
                case 28:
                    i2 = i4;
                    int i16 = iArr[i5];
                    List list3 = (List) unsafe.getObject(obj, j2);
                    defpackage.g gVar3 = r.a;
                    if (list3 != null && !list3.isEmpty()) {
                        for (int i17 = 0; i17 < list3.size(); i17++) {
                            zzfxVar.zzf(i16, (zzfp) list3.get(i17));
                        }
                    }
                    i4 = i2;
                    break;
                case 29:
                    z2 = false;
                    r.c(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 30:
                    z2 = false;
                    r.r(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 31:
                    z2 = false;
                    r.x(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 32:
                    z2 = false;
                    r.y(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 33:
                    z2 = false;
                    r.a(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 34:
                    z2 = false;
                    r.b(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, false);
                    i4 = i4;
                    break;
                case 35:
                    i2 = i4;
                    r.q(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 36:
                    i2 = i4;
                    r.u(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 37:
                    i2 = i4;
                    r.w(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 38:
                    i2 = i4;
                    r.d(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 39:
                    i2 = i4;
                    r.v(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 40:
                    i2 = i4;
                    r.t(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 41:
                    i2 = i4;
                    r.s(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 42:
                    i2 = i4;
                    r.p(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 43:
                    i2 = i4;
                    r.c(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 44:
                    i2 = i4;
                    r.r(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 45:
                    i2 = i4;
                    r.x(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 46:
                    i2 = i4;
                    r.y(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 47:
                    i2 = i4;
                    r.a(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, z);
                    i4 = i2;
                    break;
                case 48:
                    i2 = i4;
                    r.b(iArr[i5], (List) unsafe.getObject(obj, j2), bhbVar, true);
                    i4 = i2;
                    break;
                case 49:
                    i2 = i4;
                    int i18 = iArr[i5];
                    List list4 = (List) unsafe.getObject(obj, j2);
                    kqb kqbVarZ2 = pVar.z(i5);
                    defpackage.g gVar4 = r.a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i19 = 0; i19 < list4.size(); i19++) {
                            bhbVar.a(i18, list4.get(i19), kqbVarZ2);
                        }
                    }
                    i4 = i2;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j2);
                    if (object2 != null) {
                        int i20 = i5 / 3;
                        l62 l62Var = ((zzhl) pVar.b[i20 + i20]).a;
                        zzjg zzjgVar = (zzjg) l62Var.b;
                        zzjg zzjgVar2 = (zzjg) l62Var.a;
                        Iterator it = ((zzhm) object2).entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry2 = (Map.Entry) it.next();
                            zzfxVar.zzs(i7, 2);
                            int i21 = i4;
                            boolean z3 = z;
                            zzfxVar.zzu(xib.a(zzjgVar, 2, entry2.getValue()) + xib.a(zzjgVar2, z3 ? 1 : 0, entry2.getKey()));
                            Object key = entry2.getKey();
                            Object value = entry2.getValue();
                            xib.g(zzfxVar, zzjgVar2, z3 ? 1 : 0, key);
                            xib.g(zzfxVar, zzjgVar, 2, value);
                            i4 = i21;
                            z = true;
                        }
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzj(i7, Double.doubleToRawLongBits(((Double) wtb.c(obj, j2)).doubleValue()));
                    }
                    break;
                case 52:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzh(i7, Float.floatToRawIntBits(((Float) wtb.c(obj, j2)).floatValue()));
                    }
                    break;
                case 53:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzv(i7, x(obj, j2));
                    }
                    break;
                case 54:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzv(i7, x(obj, j2));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzl(i7, t(obj, j2));
                    }
                    break;
                case 56:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzj(i7, x(obj, j2));
                    }
                    break;
                case 57:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzh(i7, t(obj, j2));
                    }
                    break;
                case 58:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzd(i7, ((Boolean) wtb.c(obj, j2)).booleanValue());
                    }
                    break;
                case 59:
                    if (pVar.p(i7, i5, obj)) {
                        Object object3 = unsafe.getObject(obj, j2);
                        if (object3 instanceof String) {
                            zzfxVar.zzq(i7, (String) object3);
                        } else {
                            zzfxVar.zzf(i7, (zzfp) object3);
                        }
                    }
                    break;
                case 60:
                    if (pVar.p(i7, i5, obj)) {
                        bhbVar.b(i7, unsafe.getObject(obj, j2), pVar.z(i5));
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzf(i7, (zzfp) unsafe.getObject(obj, j2));
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzt(i7, t(obj, j2));
                    }
                    break;
                case 63:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzl(i7, t(obj, j2));
                    }
                    break;
                case 64:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzh(i7, t(obj, j2));
                    }
                    break;
                case 65:
                    if (pVar.p(i7, i5, obj)) {
                        zzfxVar.zzj(i7, x(obj, j2));
                    }
                    break;
                case 66:
                    if (pVar.p(i7, i5, obj)) {
                        int iT = t(obj, j2);
                        zzfxVar.zzt(i7, (iT >> 31) ^ (iT + iT));
                    }
                    break;
                case 67:
                    if (pVar.p(i7, i5, obj)) {
                        long jX = x(obj, j2);
                        zzfxVar.zzv(i7, (jX + jX) ^ (jX >> 63));
                    }
                    break;
                case 68:
                    if (pVar.p(i7, i5, obj)) {
                        bhbVar.a(i7, unsafe.getObject(obj, j2), pVar.z(i5));
                    }
                    break;
                default:
                    break;
            }
            i5 += 3;
            i3 = 1048575;
            pVar = this;
        }
    }

    public final void i(int i, Object obj, Object obj2) {
        if (m(i, obj2)) {
            long jW = w(i) & 1048575;
            Unsafe unsafe = k;
            Object object = unsafe.getObject(obj2, jW);
            if (object == null) {
                zc5.c(this.a[i], obj2);
                return;
            }
            kqb kqbVarZ = z(i);
            if (!m(i, obj)) {
                if (o(object)) {
                    Object objZze = kqbVarZ.zze();
                    kqbVarZ.c(objZze, object);
                    unsafe.putObject(obj, jW, objZze);
                } else {
                    unsafe.putObject(obj, jW, object);
                }
                k(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jW);
            if (!o(object2)) {
                Object objZze2 = kqbVarZ.zze();
                kqbVarZ.c(objZze2, object2);
                unsafe.putObject(obj, jW, objZze2);
                object2 = objZze2;
            }
            kqbVarZ.c(object2, object);
        }
    }

    public final void j(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (p(i2, i, obj2)) {
            long jW = w(i) & 1048575;
            Unsafe unsafe = k;
            Object object = unsafe.getObject(obj2, jW);
            if (object == null) {
                zc5.c(iArr[i], obj2);
                return;
            }
            kqb kqbVarZ = z(i);
            if (!p(i2, i, obj)) {
                if (o(object)) {
                    Object objZze = kqbVarZ.zze();
                    kqbVarZ.c(objZze, object);
                    unsafe.putObject(obj, jW, objZze);
                } else {
                    unsafe.putObject(obj, jW, object);
                }
                wtb.g(i2, iArr[i + 2] & 1048575, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jW);
            if (!o(object2)) {
                Object objZze2 = kqbVarZ.zze();
                kqbVarZ.c(objZze2, object2);
                unsafe.putObject(obj, jW, objZze2);
                object2 = objZze2;
            }
            kqbVarZ.c(object2, object);
        }
    }

    public final void k(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j2 = 1048575 & i2;
        if (j2 == 1048575) {
            return;
        }
        wtb.g((1 << (i2 >>> 20)) | wtb.a(obj, j2), j2, obj);
    }

    public final boolean l(zzgp zzgpVar, zzgp zzgpVar2, int i) {
        return m(i, zzgpVar) == m(i, zzgpVar2);
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f6 A[RETURN] */
    public final boolean m(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j2 = i2 & 1048575;
        if (j2 != 1048575) {
            if (((1 << (i2 >>> 20)) & wtb.a(obj, j2)) != 0) {
                return true;
            }
            return false;
        }
        int iW = w(i);
        long j3 = iW & 1048575;
        switch (v(iW)) {
            case 0:
                if (Double.doubleToRawLongBits(wtb.c.a(obj, j3)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(wtb.c.c(obj, j3)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (wtb.b(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (wtb.b(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (wtb.a(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (wtb.b(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (wtb.a(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 7:
                return wtb.c.m(obj, j3);
            case 8:
                Object objC = wtb.c(obj, j3);
                if (objC instanceof String) {
                    if (((String) objC).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objC instanceof zzfp)) {
                    mi2.b();
                    return false;
                }
                if (zzfp.zza.equals(objC)) {
                    return false;
                }
                return true;
            case 9:
                if (wtb.c(obj, j3) != null) {
                    return true;
                }
                return false;
            case 10:
                if (zzfp.zza.equals(wtb.c(obj, j3))) {
                    return false;
                }
                return true;
            case 11:
                if (wtb.a(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (wtb.a(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (wtb.a(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (wtb.b(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (wtb.a(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (wtb.b(obj, j3) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (wtb.c(obj, j3) != null) {
                    return true;
                }
                return false;
            default:
                mi2.b();
                return false;
        }
    }

    public final boolean n(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return m(i, obj);
        }
        return (i3 & i4) != 0;
    }

    public final boolean p(int i, int i2, Object obj) {
        return wtb.a(obj, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 45581. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int r(java.lang.Object r36, byte[] r37, int r38, int r39, int r40, defpackage.ceb r41) {
        /*
            Method dump skipped, instruction units count: 4558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.p.r(java.lang.Object, byte[], int, int, int, ceb):int");
    }

    public final int u(int i, int i2) {
        int[] iArr = this.a;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final int w(int i) {
        return this.a[i + 1];
    }

    public final zzgs y(int i) {
        int i2 = i / 3;
        return (zzgs) this.b[i2 + i2 + 1];
    }

    public final kqb z(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        kqb kqbVar = (kqb) objArr[i3];
        if (kqbVar != null) {
            return kqbVar;
        }
        kqb kqbVarA = kpb.b.a((Class) objArr[i3 + 1]);
        objArr[i3] = kqbVarA;
        return kqbVarA;
    }

    @Override // defpackage.kqb
    public final Object zze() {
        return (zzgp) ((zzgp) this.e).g(4);
    }
}
