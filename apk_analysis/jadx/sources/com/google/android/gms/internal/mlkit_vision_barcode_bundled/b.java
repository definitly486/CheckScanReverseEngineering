package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import androidx.compose.ui.spatial.RectListKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a2b;
import defpackage.ad2;
import defpackage.ah;
import defpackage.ajb;
import defpackage.b8b;
import defpackage.c2b;
import defpackage.d6b;
import defpackage.dta;
import defpackage.f7b;
import defpackage.fg;
import defpackage.gnb;
import defpackage.h2b;
import defpackage.hab;
import defpackage.hn1;
import defpackage.i8;
import defpackage.j6b;
import defpackage.jib;
import defpackage.k8b;
import defpackage.l7b;
import defpackage.lgb;
import defpackage.mi2;
import defpackage.nz0;
import defpackage.pmb;
import defpackage.qlb;
import defpackage.s9b;
import defpackage.tdb;
import defpackage.vib;
import defpackage.vkb;
import defpackage.wmb;
import defpackage.zc5;
import defpackage.zd3;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class b<T> implements jib<T> {
    public static final int[] l = new int[0];
    public static final Unsafe m;
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final zzfm e;
    public final boolean f;
    public final int[] g;
    public final int h;
    public final int i;
    public final zd3 j;
    public final f7b k;

    static {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new vkb());
        } catch (Throwable unused) {
            unsafe = null;
        }
        m = unsafe;
    }

    public b(int[] iArr, Object[] objArr, int i, int i2, zzfm zzfmVar, int[] iArr2, int i3, int i4, zd3 zd3Var, l7b l7bVar) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        boolean z = false;
        if (l7bVar != null && (zzfmVar instanceof zzed)) {
            z = true;
        }
        this.f = z;
        this.g = iArr2;
        this.h = i3;
        this.i = i4;
        this.j = zd3Var;
        this.k = l7bVar;
        this.e = zzfmVar;
    }

    public static Field B(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
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
            throw new RuntimeException(sbD.toString());
        }
    }

    public static boolean o(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzeh) {
            return ((zzeh) obj).i();
        }
        return true;
    }

    public static zzgt r(Object obj) {
        zzeh zzehVar = (zzeh) obj;
        zzgt zzgtVar = zzehVar.zzc;
        if (zzgtVar != zzgt.zzc()) {
            return zzgtVar;
        }
        zzgt zzgtVarA = zzgt.a();
        zzehVar.zzc = zzgtVarA;
        return zzgtVarA;
    }

    public static int s(Object obj, long j) {
        return ((Integer) qlb.g(obj, j)).intValue();
    }

    public static int u(int i) {
        return (i >>> 20) & 255;
    }

    public static long w(Object obj, long j) {
        return ((Long) qlb.g(obj, j)).longValue();
    }

    public final Object A(int i, int i2, Object obj) {
        jib jibVarY = y(i2);
        if (!p(i, i2, obj)) {
            return jibVarY.zze();
        }
        Object object = m.getObject(obj, v(i2) & 1048575);
        if (o(object)) {
            return object;
        }
        Object objZze = jibVarY.zze();
        if (object != null) {
            jibVarY.c(objZze, object);
        }
        return objZze;
    }

    @Override // defpackage.jib
    public final boolean a(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i4 < this.h) {
            int i6 = this.g[i4];
            int[] iArr = this.a;
            int i7 = iArr[i6];
            int iV = v(i6);
            int i8 = iArr[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i5) {
                if (i9 != 1048575) {
                    i3 = m.getInt(obj, i9);
                }
                i2 = i3;
                i = i9;
            } else {
                int i11 = i3;
                i = i5;
                i2 = i11;
            }
            if ((268435456 & iV) == 0 || n(obj, i6, i, i2, i10)) {
                int iU = u(iV);
                if (iU != 9 && iU != 17) {
                    if (iU != 27) {
                        if (iU == 60 || iU == 68) {
                            if (!p(i7, i6, obj) || y(i6).a(qlb.g(obj, iV & 1048575))) {
                            }
                        } else if (iU != 49) {
                            if (iU == 50 && !((zzfg) qlb.g(obj, iV & 1048575)).isEmpty()) {
                                int i12 = i6 / 3;
                                throw null;
                            }
                        }
                        i4++;
                        i5 = i;
                        i3 = i2;
                    }
                    List list = (List) qlb.g(obj, iV & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        jib jibVarY = y(i6);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (jibVarY.a(list.get(i13))) {
                            }
                        }
                    }
                    i4++;
                    i5 = i;
                    i3 = i2;
                } else if (!n(obj, i6, i, i2, i10) || y(i6).a(qlb.g(obj, iV & 1048575))) {
                    i4++;
                    i5 = i;
                    i3 = i2;
                }
            }
        }
        return !this.f || ((zzed) obj).zzb.f();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0070  */
    /* JADX WARN: Code duplicated, block: B:40:0x007b A[SYNTHETIC] */
    @Override // defpackage.jib
    public final void b(Object obj) {
        if (!o(obj)) {
            return;
        }
        int i = 0;
        if (obj instanceof zzeh) {
            zzeh zzehVar = (zzeh) obj;
            zzehVar.g();
            zzehVar.zza = 0;
            zzehVar.e();
        }
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                this.j.getClass();
                ((zzeh) obj).zzc.zzh();
                if (this.f) {
                    ((l7b) this.k).getClass();
                    ((zzed) obj).zzb.d();
                    return;
                }
                return;
            }
            int iV = v(i);
            int i2 = 1048575 & iV;
            int iU = u(iV);
            long j = i2;
            Unsafe unsafe = m;
            if (iU != 9) {
                if (iU != 60 && iU != 68) {
                    switch (iU) {
                        case 17:
                            if (m(i, obj)) {
                                y(i).b(unsafe.getObject(obj, j));
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
                            ((zzeo) qlb.g(obj, j)).zzb();
                            break;
                        case 50:
                            Object object = unsafe.getObject(obj, j);
                            if (object != null) {
                                ((zzfg) object).zzc();
                                unsafe.putObject(obj, j, object);
                            }
                            break;
                    }
                } else if (p(iArr[i], i, obj)) {
                    y(i).b(unsafe.getObject(obj, j));
                }
            } else if (m(i, obj)) {
                y(i).b(unsafe.getObject(obj, j));
            }
            i += 3;
        }
    }

    @Override // defpackage.jib
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
                e.r(obj4, obj2);
                if (this.f) {
                    e.q(obj4, obj2);
                    return;
                }
                return;
            }
            int iV = v(i);
            int i2 = iV & 1048575;
            int iU = u(iV);
            int i3 = iArr[i];
            long j = i2;
            switch (iU) {
                case 0:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        dta dtaVar = qlb.c;
                        dtaVar.i(obj3, j, dtaVar.a(obj2, j));
                        k(i, obj3);
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 1:
                    obj3 = obj;
                    if (m(i, obj2)) {
                        dta dtaVar2 = qlb.c;
                        dtaVar2.l(obj3, j, dtaVar2.c(obj2, j));
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
                        qlb.c.a.putLong(obj3, j, qlb.f(obj2, j));
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
                        qlb.c.a.putLong(obj3, j, qlb.f(obj2, j));
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
                        qlb.h(qlb.e(obj2, j), j, obj3);
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
                        qlb.c.a.putLong(obj3, j, qlb.f(obj2, j));
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
                        qlb.h(qlb.e(obj2, j), j, obj3);
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
                        dta dtaVar3 = qlb.c;
                        dtaVar3.e(obj3, j, dtaVar3.o(obj2, j));
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
                        qlb.i(j, obj3, qlb.g(obj2, j));
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
                        qlb.i(j, obj3, qlb.g(obj2, j));
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
                        qlb.h(qlb.e(obj2, j), j, obj3);
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
                        qlb.h(qlb.e(obj2, j), j, obj3);
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
                        qlb.h(qlb.e(obj2, j), j, obj3);
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
                        qlb.c.a.putLong(obj3, j, qlb.f(obj2, j));
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
                        qlb.h(qlb.e(obj2, j), j, obj3);
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
                        qlb.c.a.putLong(obj3, j, qlb.f(obj2, j));
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
                    zzeo zzeoVarZzd = (zzeo) qlb.g(obj, j);
                    zzeo zzeoVar = (zzeo) qlb.g(obj2, j);
                    int size = zzeoVarZzd.size();
                    int size2 = zzeoVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzeoVarZzd.zzc()) {
                            zzeoVarZzd = zzeoVarZzd.zzd(size2 + size);
                        }
                        zzeoVarZzd.addAll(zzeoVar);
                    }
                    if (size > 0) {
                        zzeoVar = zzeoVarZzd;
                    }
                    qlb.i(j, obj, zzeoVar);
                    break;
                case 50:
                    zd3 zd3Var = e.a;
                    zzfg zzfgVarZzb = (zzfg) qlb.g(obj, j);
                    zzfg zzfgVar = (zzfg) qlb.g(obj2, j);
                    if (!zzfgVar.isEmpty()) {
                        if (!zzfgVarZzb.zze()) {
                            zzfgVarZzb = zzfgVarZzb.zzb();
                        }
                        zzfgVarZzb.zzd(zzfgVar);
                    }
                    qlb.i(j, obj, zzfgVarZzb);
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
                        qlb.i(j, obj, qlb.g(obj2, j));
                        qlb.h(i3, iArr[i + 2] & 1048575, obj);
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
                        qlb.i(j, obj, qlb.g(obj2, j));
                        qlb.h(i3, iArr[i + 2] & 1048575, obj);
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

    @Override // defpackage.jib
    public final void d(Object obj, byte[] bArr, int i, int i2, a2b a2bVar) throws zzer {
        q(obj, bArr, i, i2, 0, a2bVar);
    }

    @Override // defpackage.jib
    public final boolean e(zzeh zzehVar, zzeh zzehVar2) {
        boolean zE;
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i < iArr.length) {
                int iV = v(i);
                long j = iV & 1048575;
                switch (u(iV)) {
                    case 0:
                        if (l(zzehVar, zzehVar2, i)) {
                            dta dtaVar = qlb.c;
                            if (Double.doubleToLongBits(dtaVar.a(zzehVar, j)) == Double.doubleToLongBits(dtaVar.a(zzehVar2, j))) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 1:
                        if (l(zzehVar, zzehVar2, i)) {
                            dta dtaVar2 = qlb.c;
                            if (Float.floatToIntBits(dtaVar2.c(zzehVar, j)) == Float.floatToIntBits(dtaVar2.c(zzehVar2, j))) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 2:
                        if (l(zzehVar, zzehVar2, i) && qlb.f(zzehVar, j) == qlb.f(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 3:
                        if (l(zzehVar, zzehVar2, i) && qlb.f(zzehVar, j) == qlb.f(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 4:
                        if (l(zzehVar, zzehVar2, i) && qlb.e(zzehVar, j) == qlb.e(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 5:
                        if (l(zzehVar, zzehVar2, i) && qlb.f(zzehVar, j) == qlb.f(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 6:
                        if (l(zzehVar, zzehVar2, i) && qlb.e(zzehVar, j) == qlb.e(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 7:
                        if (l(zzehVar, zzehVar2, i)) {
                            dta dtaVar3 = qlb.c;
                            if (dtaVar3.o(zzehVar, j) == dtaVar3.o(zzehVar2, j)) {
                                continue;
                                i += 3;
                            }
                        }
                        break;
                    case 8:
                        if (l(zzehVar, zzehVar2, i) && e.e(qlb.g(zzehVar, j), qlb.g(zzehVar2, j))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 9:
                        if (l(zzehVar, zzehVar2, i) && e.e(qlb.g(zzehVar, j), qlb.g(zzehVar2, j))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 10:
                        if (l(zzehVar, zzehVar2, i) && e.e(qlb.g(zzehVar, j), qlb.g(zzehVar2, j))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 11:
                        if (l(zzehVar, zzehVar2, i) && qlb.e(zzehVar, j) == qlb.e(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 12:
                        if (l(zzehVar, zzehVar2, i) && qlb.e(zzehVar, j) == qlb.e(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 13:
                        if (l(zzehVar, zzehVar2, i) && qlb.e(zzehVar, j) == qlb.e(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 14:
                        if (l(zzehVar, zzehVar2, i) && qlb.f(zzehVar, j) == qlb.f(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 15:
                        if (l(zzehVar, zzehVar2, i) && qlb.e(zzehVar, j) == qlb.e(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 16:
                        if (l(zzehVar, zzehVar2, i) && qlb.f(zzehVar, j) == qlb.f(zzehVar2, j)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 17:
                        if (l(zzehVar, zzehVar2, i) && e.e(qlb.g(zzehVar, j), qlb.g(zzehVar2, j))) {
                            continue;
                            i += 3;
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
                        zE = e.e(qlb.g(zzehVar, j), qlb.g(zzehVar2, j));
                        break;
                    case 50:
                        zE = e.e(qlb.g(zzehVar, j), qlb.g(zzehVar2, j));
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
                        long j2 = iArr[i + 2] & 1048575;
                        if (qlb.e(zzehVar, j2) == qlb.e(zzehVar2, j2) && e.e(qlb.g(zzehVar, j), qlb.g(zzehVar2, j))) {
                            continue;
                            i += 3;
                        }
                        break;
                    default:
                        continue;
                        i += 3;
                        break;
                }
                if (zE) {
                    i += 3;
                }
            } else if (zzehVar.zzc.equals(zzehVar2.zzc)) {
                if (this.f) {
                    return ((zzed) zzehVar).zzb.equals(((zzed) zzehVar2).zzb);
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.jib
    public final int f(zzeh zzehVar) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int i3;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = this.a;
            if (i4 >= iArr.length) {
                int iHashCode = zzehVar.zzc.hashCode() + (i5 * 53);
                if (!this.f) {
                    return iHashCode;
                }
                return ((zzed) zzehVar).zzb.a.hashCode() + (iHashCode * 53);
            }
            int iV = v(i4);
            int i6 = 1048575 & iV;
            int iU = u(iV);
            int i7 = iArr[i4];
            long j = i6;
            int iHashCode2 = 37;
            switch (iU) {
                case 0:
                    i = i5 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(qlb.c.a(zzehVar, j));
                    Charset charset = zzep.a;
                    i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i5 * 53;
                    iFloatToIntBits = Float.floatToIntBits(qlb.c.c(zzehVar, j));
                    i5 = iFloatToIntBits + i2;
                    break;
                case 2:
                    i = i5 * 53;
                    jDoubleToLongBits = qlb.f(zzehVar, j);
                    Charset charset2 = zzep.a;
                    i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i5 * 53;
                    jDoubleToLongBits = qlb.f(zzehVar, j);
                    Charset charset3 = zzep.a;
                    i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.e(zzehVar, j);
                    i5 = iFloatToIntBits + i2;
                    break;
                case 5:
                    i = i5 * 53;
                    jDoubleToLongBits = qlb.f(zzehVar, j);
                    Charset charset4 = zzep.a;
                    i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.e(zzehVar, j);
                    i5 = iFloatToIntBits + i2;
                    break;
                case 7:
                    i2 = i5 * 53;
                    iFloatToIntBits = zzep.zza(qlb.c.o(zzehVar, j));
                    i5 = iFloatToIntBits + i2;
                    break;
                case 8:
                    i2 = i5 * 53;
                    iFloatToIntBits = ((String) qlb.g(zzehVar, j)).hashCode();
                    i5 = iFloatToIntBits + i2;
                    break;
                case 9:
                    i3 = i5 * 53;
                    Object objG = qlb.g(zzehVar, j);
                    if (objG != null) {
                        iHashCode2 = objG.hashCode();
                    }
                    i5 = i3 + iHashCode2;
                    break;
                case 10:
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.g(zzehVar, j).hashCode();
                    i5 = iFloatToIntBits + i2;
                    break;
                case 11:
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.e(zzehVar, j);
                    i5 = iFloatToIntBits + i2;
                    break;
                case 12:
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.e(zzehVar, j);
                    i5 = iFloatToIntBits + i2;
                    break;
                case 13:
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.e(zzehVar, j);
                    i5 = iFloatToIntBits + i2;
                    break;
                case 14:
                    i = i5 * 53;
                    jDoubleToLongBits = qlb.f(zzehVar, j);
                    Charset charset5 = zzep.a;
                    i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.e(zzehVar, j);
                    i5 = iFloatToIntBits + i2;
                    break;
                case 16:
                    i = i5 * 53;
                    jDoubleToLongBits = qlb.f(zzehVar, j);
                    Charset charset6 = zzep.a;
                    i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    i3 = i5 * 53;
                    Object objG2 = qlb.g(zzehVar, j);
                    if (objG2 != null) {
                        iHashCode2 = objG2.hashCode();
                    }
                    i5 = i3 + iHashCode2;
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
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.g(zzehVar, j).hashCode();
                    i5 = iFloatToIntBits + i2;
                    break;
                case 50:
                    i2 = i5 * 53;
                    iFloatToIntBits = qlb.g(zzehVar, j).hashCode();
                    i5 = iFloatToIntBits + i2;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (p(i7, i4, zzehVar)) {
                        i = i5 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(((Double) qlb.g(zzehVar, j)).doubleValue());
                        Charset charset7 = zzep.a;
                        i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = Float.floatToIntBits(((Float) qlb.g(zzehVar, j)).floatValue());
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 53:
                    if (p(i7, i4, zzehVar)) {
                        i = i5 * 53;
                        jDoubleToLongBits = w(zzehVar, j);
                        Charset charset8 = zzep.a;
                        i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (p(i7, i4, zzehVar)) {
                        i = i5 * 53;
                        jDoubleToLongBits = w(zzehVar, j);
                        Charset charset9 = zzep.a;
                        i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = s(zzehVar, j);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 56:
                    if (p(i7, i4, zzehVar)) {
                        i = i5 * 53;
                        jDoubleToLongBits = w(zzehVar, j);
                        Charset charset10 = zzep.a;
                        i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = s(zzehVar, j);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 58:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = zzep.zza(((Boolean) qlb.g(zzehVar, j)).booleanValue());
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 59:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = ((String) qlb.g(zzehVar, j)).hashCode();
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 60:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = qlb.g(zzehVar, j).hashCode();
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = qlb.g(zzehVar, j).hashCode();
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = s(zzehVar, j);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 63:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = s(zzehVar, j);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 64:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = s(zzehVar, j);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 65:
                    if (p(i7, i4, zzehVar)) {
                        i = i5 * 53;
                        jDoubleToLongBits = w(zzehVar, j);
                        Charset charset11 = zzep.a;
                        i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = s(zzehVar, j);
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
                case 67:
                    if (p(i7, i4, zzehVar)) {
                        i = i5 * 53;
                        jDoubleToLongBits = w(zzehVar, j);
                        Charset charset12 = zzep.a;
                        i5 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (p(i7, i4, zzehVar)) {
                        i2 = i5 * 53;
                        iFloatToIntBits = qlb.g(zzehVar, j).hashCode();
                        i5 = iFloatToIntBits + i2;
                    }
                    break;
            }
            i4 += 3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    @Override // defpackage.jib
    public final void g(Object obj, gnb gnbVar) {
        Map.Entry entry;
        Iterator it;
        int i;
        int i2;
        Map.Entry entry2;
        int i3;
        int i4;
        b<T> bVar = this;
        if (bVar.f) {
            b8b b8bVar = ((zzed) obj).zzb;
            if (b8bVar.a.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itC = b8bVar.c();
                entry = (Map.Entry) itC.next();
                it = itC;
            }
        } else {
            entry = null;
            it = null;
        }
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int[] iArr = bVar.a;
            int length = iArr.length;
            f7b f7bVar = bVar.k;
            if (i7 >= length) {
                while (entry != null) {
                    f7bVar.a(gnbVar, entry);
                    entry = it.hasNext() ? (Map.Entry) it.next() : null;
                }
                ((zzeh) obj).zzc.zzl(gnbVar);
                return;
            }
            int iV = bVar.v(i7);
            int iU = u(iV);
            int i9 = iArr[i7];
            Unsafe unsafe = m;
            if (iU <= 17) {
                int i10 = iArr[i7 + 2];
                Map.Entry entry3 = entry;
                int i11 = i10 & i5;
                if (i11 != i6) {
                    i8 = i11 == i5 ? 0 : unsafe.getInt(obj, i11);
                    i6 = i11;
                }
                int i12 = 1 << (i10 >>> 20);
                int i13 = i8;
                i3 = i12;
                i = i6;
                i2 = i13;
                entry2 = entry3;
            } else {
                Map.Entry entry4 = entry;
                i = i6;
                i2 = i8;
                entry2 = entry4;
                i3 = 0;
            }
            while (true) {
                if (entry2 != null) {
                    i4 = i5;
                    if (((s9b) entry2.getKey()).b <= i9) {
                        f7bVar.a(gnbVar, entry2);
                        entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
                        i5 = i4;
                    }
                } else {
                    i4 = i5;
                }
            }
            long j = iV & i4;
            switch (iU) {
                case 0:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzh(i9, Double.doubleToRawLongBits(qlb.c.a(obj, j)));
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 1:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzf(i9, Float.floatToRawIntBits(qlb.c.c(obj, j)));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 2:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzu(i9, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 3:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzu(i9, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 4:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzj(i9, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 5:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzh(i9, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 6:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzf(i9, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 7:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzd(i9, qlb.c.o(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 8:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            ((d6b) gnbVar).a.zzp(i9, (String) object);
                        } else {
                            ((d6b) gnbVar).a.zze(i9, (zzdf) object);
                        }
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 9:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        Object object2 = unsafe.getObject(obj, j);
                        jib jibVarY = bVar.y(i7);
                        d6b d6bVar = (d6b) gnbVar;
                        d6bVar.getClass();
                        d6bVar.a.a(i9, (zzfm) object2, jibVarY);
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 10:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zze(i9, (zzdf) unsafe.getObject(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 11:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzs(i9, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 12:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzj(i9, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 13:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzf(i9, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 14:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a.zzh(i9, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 15:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        int i14 = unsafe.getInt(obj, j);
                        ((d6b) gnbVar).a.zzs(i9, (i14 >> 31) ^ (i14 + i14));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 16:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        long j2 = unsafe.getLong(obj, j);
                        ((d6b) gnbVar).a.zzu(i9, (j2 >> 63) ^ (j2 + j2));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 17:
                    if (bVar.n(obj, i7, i, i2, i3)) {
                        ((d6b) gnbVar).a(i9, unsafe.getObject(obj, j), bVar.y(i7));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 18:
                    e.t(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 19:
                    e.x(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 20:
                    e.z(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 21:
                    e.d(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 22:
                    e.y(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 23:
                    e.w(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 24:
                    e.v(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 25:
                    e.s(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 26:
                    int i15 = iArr[i7];
                    List list = (List) unsafe.getObject(obj, j);
                    zd3 zd3Var = e.a;
                    if (list != null && !list.isEmpty()) {
                        zzdn zzdnVar = ((d6b) gnbVar).a;
                        if (list instanceof zzey) {
                            zzey zzeyVar = (zzey) list;
                            for (int i16 = 0; i16 < list.size(); i16++) {
                                Object objZza = zzeyVar.zza();
                                if (objZza instanceof String) {
                                    zzdnVar.zzp(i15, (String) objZza);
                                } else {
                                    zzdnVar.zze(i15, (zzdf) objZza);
                                }
                            }
                        } else {
                            for (int i17 = 0; i17 < list.size(); i17++) {
                                zzdnVar.zzp(i15, (String) list.get(i17));
                            }
                        }
                    }
                    break;
                case 27:
                    int i18 = iArr[i7];
                    List list2 = (List) unsafe.getObject(obj, j);
                    jib jibVarY2 = bVar.y(i7);
                    zd3 zd3Var2 = e.a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i19 = 0; i19 < list2.size(); i19++) {
                            Object obj2 = list2.get(i19);
                            d6b d6bVar2 = (d6b) gnbVar;
                            d6bVar2.getClass();
                            d6bVar2.a.a(i18, (zzfm) obj2, jibVarY2);
                        }
                    }
                    break;
                case 28:
                    int i20 = iArr[i7];
                    List list3 = (List) unsafe.getObject(obj, j);
                    zd3 zd3Var3 = e.a;
                    if (list3 != null && !list3.isEmpty()) {
                        d6b d6bVar3 = (d6b) gnbVar;
                        d6bVar3.getClass();
                        for (int i21 = 0; i21 < list3.size(); i21++) {
                            d6bVar3.a.zze(i20, (zzdf) list3.get(i21));
                        }
                    }
                    break;
                case 29:
                    e.c(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 30:
                    e.u(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 31:
                    e.A(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 32:
                    e.B(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 33:
                    e.a(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 34:
                    e.b(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, false);
                    continue;
                    i7 += 3;
                    bVar = this;
                    i8 = i2;
                    i5 = i4;
                    i6 = i;
                    entry = entry2;
                    break;
                case 35:
                    e.t(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 36:
                    e.x(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 37:
                    e.z(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 38:
                    e.d(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 39:
                    e.y(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 40:
                    e.w(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 41:
                    e.v(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 42:
                    e.s(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 43:
                    e.c(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 44:
                    e.u(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 45:
                    e.A(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 46:
                    e.B(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 47:
                    e.a(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 48:
                    e.b(iArr[i7], (List) unsafe.getObject(obj, j), gnbVar, true);
                    break;
                case 49:
                    int i22 = iArr[i7];
                    List list4 = (List) unsafe.getObject(obj, j);
                    jib jibVarY3 = bVar.y(i7);
                    zd3 zd3Var4 = e.a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i23 = 0; i23 < list4.size(); i23++) {
                            ((d6b) gnbVar).a(i22, list4.get(i23), jibVarY3);
                        }
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        int i24 = i7 / 3;
                        throw null;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzh(i9, Double.doubleToRawLongBits(((Double) qlb.g(obj, j)).doubleValue()));
                    }
                    break;
                case 52:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzf(i9, Float.floatToRawIntBits(((Float) qlb.g(obj, j)).floatValue()));
                    }
                    break;
                case 53:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzu(i9, w(obj, j));
                    }
                    break;
                case 54:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzu(i9, w(obj, j));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzj(i9, s(obj, j));
                    }
                    break;
                case 56:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzh(i9, w(obj, j));
                    }
                    break;
                case 57:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzf(i9, s(obj, j));
                    }
                    break;
                case 58:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzd(i9, ((Boolean) qlb.g(obj, j)).booleanValue());
                    }
                    break;
                case 59:
                    if (bVar.p(i9, i7, obj)) {
                        Object object3 = unsafe.getObject(obj, j);
                        if (object3 instanceof String) {
                            ((d6b) gnbVar).a.zzp(i9, (String) object3);
                        } else {
                            ((d6b) gnbVar).a.zze(i9, (zzdf) object3);
                        }
                    }
                    break;
                case 60:
                    if (bVar.p(i9, i7, obj)) {
                        Object object4 = unsafe.getObject(obj, j);
                        jib jibVarY4 = bVar.y(i7);
                        d6b d6bVar4 = (d6b) gnbVar;
                        d6bVar4.getClass();
                        d6bVar4.a.a(i9, (zzfm) object4, jibVarY4);
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zze(i9, (zzdf) unsafe.getObject(obj, j));
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzs(i9, s(obj, j));
                    }
                    break;
                case 63:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzj(i9, s(obj, j));
                    }
                    break;
                case 64:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzf(i9, s(obj, j));
                    }
                    break;
                case 65:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a.zzh(i9, w(obj, j));
                    }
                    break;
                case 66:
                    if (bVar.p(i9, i7, obj)) {
                        int iS = s(obj, j);
                        ((d6b) gnbVar).a.zzs(i9, (iS >> 31) ^ (iS + iS));
                    }
                    break;
                case 67:
                    if (bVar.p(i9, i7, obj)) {
                        long jW = w(obj, j);
                        ((d6b) gnbVar).a.zzu(i9, (jW >> 63) ^ (jW + jW));
                    }
                    break;
                case 68:
                    if (bVar.p(i9, i7, obj)) {
                        ((d6b) gnbVar).a(i9, unsafe.getObject(obj, j), bVar.y(i7));
                    }
                    break;
            }
            i7 += 3;
            bVar = this;
            i8 = i2;
            i5 = i4;
            i6 = i;
            entry = entry2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:139:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:196:0x0509  */
    @Override // defpackage.jib
    public final int h(zzeh zzehVar) {
        int i;
        int iZzA;
        int iZzB;
        int iZzA2;
        int iZzd;
        int iZzA3;
        int iK;
        int i2;
        int iA;
        int iZzA4;
        int size;
        int iO;
        int iZzA5;
        int iZzA6;
        int iZzA7;
        int size2;
        int iZzA8;
        int iZzA9;
        int iA2;
        int iZzA10;
        int iZzB2;
        b<T> bVar = this;
        zzeh zzehVar2 = zzehVar;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int iB = 0;
        while (true) {
            int[] iArr = bVar.a;
            if (i5 < iArr.length) {
                int iV = bVar.v(i5);
                int iU = u(iV);
                int i7 = iArr[i5];
                int i8 = iArr[i5 + 2];
                int i9 = i8 & i3;
                Unsafe unsafe = m;
                if (iU <= 17) {
                    if (i9 != i4) {
                        i6 = i9 == i3 ? 0 : unsafe.getInt(zzehVar2, i9);
                        i4 = i9;
                    }
                    i = 1 << (i8 >>> 20);
                } else {
                    i = 0;
                }
                int i10 = iV & i3;
                if (iU >= zzdy.zzJ.zza()) {
                    zzdy.zzW.zza();
                }
                long j = i10;
                switch (iU) {
                    case 0:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iB = ah.b(i7 << 3, 8, iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 1:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iB = ah.b(i7 << 3, 4, iB);
                        }
                        bVar = this;
                        zzehVar2 = zzehVar;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 2:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            long j2 = unsafe.getLong(zzehVar2, j);
                            iZzA = zzdn.zzA(i7 << 3);
                            iZzB = zzdn.zzB(j2);
                            iB += iZzB + iZzA;
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 3:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            long j3 = unsafe.getLong(zzehVar2, j);
                            iZzA = zzdn.zzA(i7 << 3);
                            iZzB = zzdn.zzB(j3);
                            iB += iZzB + iZzA;
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 4:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            long j4 = unsafe.getInt(zzehVar2, j);
                            iZzA = zzdn.zzA(i7 << 3);
                            iZzB = zzdn.zzB(j4);
                            iB += iZzB + iZzA;
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 5:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iB = ah.b(i7 << 3, 8, iB);
                        }
                        bVar = this;
                        zzehVar2 = zzehVar;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 6:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iB = ah.b(i7 << 3, 4, iB);
                        }
                        bVar = this;
                        zzehVar2 = zzehVar;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 7:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iB = ah.b(i7 << 3, 1, iB);
                        }
                        bVar = this;
                        zzehVar2 = zzehVar;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 8:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            int i11 = i7 << 3;
                            Object object = unsafe.getObject(zzehVar2, j);
                            if (object instanceof zzdf) {
                                iZzA2 = zzdn.zzA(i11);
                                iZzd = ((zzdf) object).zzd();
                                iZzA3 = zzdn.zzA(iZzd);
                                iB += iZzA3 + iZzd + iZzA2;
                            } else {
                                iZzA = zzdn.zzA(i11);
                                iZzB = zzdn.zzz((String) object);
                                iB += iZzB + iZzA;
                            }
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 9:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iK = e.k(i7, unsafe.getObject(zzehVar2, j), bVar.y(i5));
                            iB += iK;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 10:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            zzdf zzdfVar = (zzdf) unsafe.getObject(zzehVar2, j);
                            iZzA2 = zzdn.zzA(i7 << 3);
                            iZzd = zzdfVar.zzd();
                            iZzA3 = zzdn.zzA(iZzd);
                            iB += iZzA3 + iZzd + iZzA2;
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 11:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iB = ah.b(unsafe.getInt(zzehVar2, j), zzdn.zzA(i7 << 3), iB);
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 12:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            long j5 = unsafe.getInt(zzehVar2, j);
                            iZzA = zzdn.zzA(i7 << 3);
                            iZzB = zzdn.zzB(j5);
                            iB += iZzB + iZzA;
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 13:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iB = ah.b(i7 << 3, 4, iB);
                        }
                        bVar = this;
                        zzehVar2 = zzehVar;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 14:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            iB = ah.b(i7 << 3, 8, iB);
                        }
                        bVar = this;
                        zzehVar2 = zzehVar;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 15:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            int i12 = unsafe.getInt(zzehVar2, j);
                            iB = ah.b((i12 >> 31) ^ (i12 + i12), zzdn.zzA(i7 << 3), iB);
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 16:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            long j6 = unsafe.getLong(zzehVar2, j);
                            iZzA = zzdn.zzA(i7 << 3);
                            iZzB = zzdn.zzB((j6 >> 63) ^ (j6 + j6));
                            iB += iZzB + iZzA;
                        }
                        bVar = this;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 17:
                        if (bVar.n(zzehVar2, i5, i4, i6, i)) {
                            zzfm zzfmVar = (zzfm) unsafe.getObject(zzehVar2, j);
                            jib jibVarY = bVar.y(i5);
                            int iZzA11 = zzdn.zzA(i7 << 3);
                            i2 = iZzA11 + iZzA11;
                            iA = ((zzcq) zzfmVar).a(jibVarY);
                            iK = iA + i2;
                            iB += iK;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 18:
                        iK = e.h(i7, (List) unsafe.getObject(zzehVar2, j));
                        iB += iK;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 19:
                        iK = e.g(i7, (List) unsafe.getObject(zzehVar2, j));
                        iB += iK;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 20:
                        List list = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var = e.a;
                        if (list.size() == 0) {
                            iZzA4 = 0;
                        } else {
                            iZzA4 = (zzdn.zzA(i7 << 3) * list.size()) + e.j(list);
                        }
                        iB += iZzA4;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 21:
                        List list2 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var2 = e.a;
                        size = list2.size();
                        if (size == 0) {
                            iZzA6 = 0;
                        } else {
                            iO = e.o(list2);
                            iZzA5 = zzdn.zzA(i7 << 3);
                            iZzA6 = (iZzA5 * size) + iO;
                        }
                        iB += iZzA6;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 22:
                        List list3 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var3 = e.a;
                        size = list3.size();
                        if (size == 0) {
                            iZzA6 = 0;
                        } else {
                            iO = e.i(list3);
                            iZzA5 = zzdn.zzA(i7 << 3);
                            iZzA6 = (iZzA5 * size) + iO;
                        }
                        iB += iZzA6;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 23:
                        iK = e.h(i7, (List) unsafe.getObject(zzehVar2, j));
                        iB += iK;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 24:
                        iK = e.g(i7, (List) unsafe.getObject(zzehVar2, j));
                        iB += iK;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 25:
                        List list4 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var4 = e.a;
                        int size3 = list4.size();
                        if (size3 == 0) {
                            iZzA4 = 0;
                        } else {
                            iZzA4 = (zzdn.zzA(i7 << 3) + 1) * size3;
                        }
                        iB += iZzA4;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 26:
                        List list5 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var5 = e.a;
                        int size4 = list5.size();
                        if (size4 == 0) {
                            iZzA6 = 0;
                        } else {
                            iZzA6 = zzdn.zzA(i7 << 3) * size4;
                            if (list5 instanceof zzey) {
                                zzey zzeyVar = (zzey) list5;
                                for (int i13 = 0; i13 < size4; i13++) {
                                    Object objZza = zzeyVar.zza();
                                    if (objZza instanceof zzdf) {
                                        int iZzd2 = ((zzdf) objZza).zzd();
                                        iZzA6 = ah.b(iZzd2, iZzd2, iZzA6);
                                    } else {
                                        iZzA6 = zzdn.zzz((String) objZza) + iZzA6;
                                    }
                                }
                            } else {
                                for (int i14 = 0; i14 < size4; i14++) {
                                    Object obj = list5.get(i14);
                                    if (obj instanceof zzdf) {
                                        int iZzd3 = ((zzdf) obj).zzd();
                                        iZzA6 = ah.b(iZzd3, iZzd3, iZzA6);
                                    } else {
                                        iZzA6 = zzdn.zzz((String) obj) + iZzA6;
                                    }
                                }
                            }
                        }
                        iB += iZzA6;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 27:
                        List list6 = (List) unsafe.getObject(zzehVar2, j);
                        jib jibVarY2 = bVar.y(i5);
                        zd3 zd3Var6 = e.a;
                        int size5 = list6.size();
                        if (size5 == 0) {
                            iZzA7 = 0;
                        } else {
                            iZzA7 = zzdn.zzA(i7 << 3) * size5;
                            for (int i15 = 0; i15 < size5; i15++) {
                                Object obj2 = list6.get(i15);
                                if (obj2 instanceof zzex) {
                                    int iZza = ((zzex) obj2).zza();
                                    iZzA7 = ah.b(iZza, iZza, iZzA7);
                                } else {
                                    int iA3 = ((zzcq) ((zzfm) obj2)).a(jibVarY2);
                                    iZzA7 = ah.b(iA3, iA3, iZzA7);
                                }
                            }
                        }
                        iB += iZzA7;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 28:
                        List list7 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var7 = e.a;
                        int size6 = list7.size();
                        if (size6 == 0) {
                            iZzA6 = 0;
                        } else {
                            iZzA6 = zzdn.zzA(i7 << 3) * size6;
                            for (int i16 = 0; i16 < list7.size(); i16++) {
                                int iZzd4 = ((zzdf) list7.get(i16)).zzd();
                                iZzA6 = ah.b(iZzd4, iZzd4, iZzA6);
                            }
                        }
                        iB += iZzA6;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 29:
                        List list8 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var8 = e.a;
                        size = list8.size();
                        if (size == 0) {
                            iZzA6 = 0;
                        } else {
                            iO = e.n(list8);
                            iZzA5 = zzdn.zzA(i7 << 3);
                            iZzA6 = (iZzA5 * size) + iO;
                        }
                        iB += iZzA6;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 30:
                        List list9 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var9 = e.a;
                        size = list9.size();
                        if (size == 0) {
                            iZzA6 = 0;
                        } else {
                            iO = e.f(list9);
                            iZzA5 = zzdn.zzA(i7 << 3);
                            iZzA6 = (iZzA5 * size) + iO;
                        }
                        iB += iZzA6;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 31:
                        iK = e.g(i7, (List) unsafe.getObject(zzehVar2, j));
                        iB += iK;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 32:
                        iK = e.h(i7, (List) unsafe.getObject(zzehVar2, j));
                        iB += iK;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 33:
                        List list10 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var10 = e.a;
                        size = list10.size();
                        if (size == 0) {
                            iZzA6 = 0;
                        } else {
                            iO = e.l(list10);
                            iZzA5 = zzdn.zzA(i7 << 3);
                            iZzA6 = (iZzA5 * size) + iO;
                        }
                        iB += iZzA6;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 34:
                        List list11 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var11 = e.a;
                        size = list11.size();
                        if (size == 0) {
                            iZzA6 = 0;
                        } else {
                            iO = e.m(list11);
                            iZzA5 = zzdn.zzA(i7 << 3);
                            iZzA6 = (iZzA5 * size) + iO;
                        }
                        iB += iZzA6;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 35:
                        List list12 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var12 = e.a;
                        size2 = list12.size() * 8;
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 36:
                        List list13 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var13 = e.a;
                        size2 = list13.size() * 4;
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 37:
                        size2 = e.j((List) unsafe.getObject(zzehVar2, j));
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 38:
                        size2 = e.o((List) unsafe.getObject(zzehVar2, j));
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 39:
                        size2 = e.i((List) unsafe.getObject(zzehVar2, j));
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 40:
                        List list14 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var14 = e.a;
                        size2 = list14.size() * 8;
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 41:
                        List list15 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var15 = e.a;
                        size2 = list15.size() * 4;
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 42:
                        List list16 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var16 = e.a;
                        size2 = list16.size();
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 43:
                        size2 = e.n((List) unsafe.getObject(zzehVar2, j));
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 44:
                        size2 = e.f((List) unsafe.getObject(zzehVar2, j));
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 45:
                        List list17 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var17 = e.a;
                        size2 = list17.size() * 4;
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 46:
                        List list18 = (List) unsafe.getObject(zzehVar2, j);
                        zd3 zd3Var18 = e.a;
                        size2 = list18.size() * 8;
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 47:
                        size2 = e.l((List) unsafe.getObject(zzehVar2, j));
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 48:
                        size2 = e.m((List) unsafe.getObject(zzehVar2, j));
                        if (size2 > 0) {
                            iZzA8 = zzdn.zzA(i7 << 3);
                            iZzA9 = zzdn.zzA(size2);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 49:
                        List list19 = (List) unsafe.getObject(zzehVar2, j);
                        jib jibVarY3 = bVar.y(i5);
                        zd3 zd3Var19 = e.a;
                        int size7 = list19.size();
                        if (size7 == 0) {
                            iA2 = 0;
                        } else {
                            iA2 = 0;
                            for (int i17 = 0; i17 < size7; i17++) {
                                zzfm zzfmVar2 = (zzfm) list19.get(i17);
                                int iZzA12 = zzdn.zzA(i7 << 3);
                                iA2 += ((zzcq) zzfmVar2).a(jibVarY3) + iZzA12 + iZzA12;
                            }
                        }
                        iB += iA2;
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 50:
                        Object object2 = unsafe.getObject(zzehVar2, j);
                        int i18 = i5 / 3;
                        zzfg zzfgVar = (zzfg) object2;
                        if (zzfgVar.isEmpty()) {
                            continue;
                        } else {
                            Iterator it = zzfgVar.entrySet().iterator();
                            if (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                entry.getKey();
                                entry.getValue();
                                throw null;
                            }
                        }
                        i5 += 3;
                        i3 = 1048575;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iB = ah.b(i7 << 3, 8, iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 52:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iB = ah.b(i7 << 3, 4, iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 53:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            long jW = w(zzehVar2, j);
                            iZzA10 = zzdn.zzA(i7 << 3);
                            iZzB2 = zzdn.zzB(jW);
                            iB += iZzB2 + iZzA10;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 54:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            long jW2 = w(zzehVar2, j);
                            iZzA10 = zzdn.zzA(i7 << 3);
                            iZzB2 = zzdn.zzB(jW2);
                            iB += iZzB2 + iZzA10;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            long jS = s(zzehVar2, j);
                            iZzA10 = zzdn.zzA(i7 << 3);
                            iZzB2 = zzdn.zzB(jS);
                            iB += iZzB2 + iZzA10;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 56:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iB = ah.b(i7 << 3, 8, iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 57:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iB = ah.b(i7 << 3, 4, iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 58:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iB = ah.b(i7 << 3, 1, iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 59:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            int i19 = i7 << 3;
                            Object object3 = unsafe.getObject(zzehVar2, j);
                            if (object3 instanceof zzdf) {
                                size2 = zzdn.zzA(i19);
                                iZzA8 = ((zzdf) object3).zzd();
                                iZzA9 = zzdn.zzA(iZzA8);
                                iB += iZzA9 + iZzA8 + size2;
                            } else {
                                iZzA10 = zzdn.zzA(i19);
                                iZzB2 = zzdn.zzz((String) object3);
                                iB += iZzB2 + iZzA10;
                            }
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 60:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iK = e.k(i7, unsafe.getObject(zzehVar2, j), bVar.y(i5));
                            iB += iK;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case RectListKt.BitOffsetForFocusable /* 61 */:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            zzdf zzdfVar2 = (zzdf) unsafe.getObject(zzehVar2, j);
                            size2 = zzdn.zzA(i7 << 3);
                            iZzA8 = zzdfVar2.zzd();
                            iZzA9 = zzdn.zzA(iZzA8);
                            iB += iZzA9 + iZzA8 + size2;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case RectListKt.BitOffsetForGesturable /* 62 */:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iB = ah.b(s(zzehVar2, j), zzdn.zzA(i7 << 3), iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 63:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            long jS2 = s(zzehVar2, j);
                            iZzA10 = zzdn.zzA(i7 << 3);
                            iZzB2 = zzdn.zzB(jS2);
                            iB += iZzB2 + iZzA10;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 64:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iB = ah.b(i7 << 3, 4, iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 65:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            iB = ah.b(i7 << 3, 8, iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 66:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            int iS = s(zzehVar2, j);
                            iB = ah.b((iS >> 31) ^ (iS + iS), zzdn.zzA(i7 << 3), iB);
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 67:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            long jW3 = w(zzehVar2, j);
                            iZzA10 = zzdn.zzA(i7 << 3);
                            iZzB2 = zzdn.zzB((jW3 >> 63) ^ (jW3 + jW3));
                            iB += iZzB2 + iZzA10;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    case 68:
                        if (bVar.p(i7, i5, zzehVar2)) {
                            zzfm zzfmVar3 = (zzfm) unsafe.getObject(zzehVar2, j);
                            jib jibVarY4 = bVar.y(i5);
                            int iZzA13 = zzdn.zzA(i7 << 3);
                            i2 = iZzA13 + iZzA13;
                            iA = ((zzcq) zzfmVar3).a(jibVarY4);
                            iK = iA + i2;
                            iB += iK;
                        }
                        i5 += 3;
                        i3 = 1048575;
                        break;
                    default:
                        i5 += 3;
                        i3 = 1048575;
                        break;
                }
            } else {
                int iZza2 = zzehVar2.zzc.zza() + iB;
                if (!bVar.f) {
                    return iZza2;
                }
                b8b b8bVar = ((zzed) zzehVar2).zzb;
                int i20 = b8bVar.a.c;
                int i21 = 0;
                int iA4 = 0;
                while (true) {
                    vib vibVar = b8bVar.a;
                    if (i21 >= i20) {
                        for (Map.Entry entry2 : vibVar.b()) {
                            iA4 = b8b.a((zzdw) entry2.getKey(), entry2.getValue()) + iA4;
                        }
                        return iZza2 + iA4;
                    }
                    ajb ajbVarD = vibVar.d(i21);
                    iA4 = b8b.a((zzdw) ajbVarD.b, ajbVarD.c) + iA4;
                    i21++;
                }
            }
        }
    }

    public final void i(int i, Object obj, Object obj2) {
        if (m(i, obj2)) {
            long jV = v(i) & 1048575;
            Unsafe unsafe = m;
            Object object = unsafe.getObject(obj2, jV);
            if (object == null) {
                zc5.c(this.a[i], obj2);
                return;
            }
            jib jibVarY = y(i);
            if (!m(i, obj)) {
                if (o(object)) {
                    Object objZze = jibVarY.zze();
                    jibVarY.c(objZze, object);
                    unsafe.putObject(obj, jV, objZze);
                } else {
                    unsafe.putObject(obj, jV, object);
                }
                k(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jV);
            if (!o(object2)) {
                Object objZze2 = jibVarY.zze();
                jibVarY.c(objZze2, object2);
                unsafe.putObject(obj, jV, objZze2);
                object2 = objZze2;
            }
            jibVarY.c(object2, object);
        }
    }

    public final void j(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (p(i2, i, obj2)) {
            long jV = v(i) & 1048575;
            Unsafe unsafe = m;
            Object object = unsafe.getObject(obj2, jV);
            if (object == null) {
                zc5.c(iArr[i], obj2);
                return;
            }
            jib jibVarY = y(i);
            if (!p(i2, i, obj)) {
                if (o(object)) {
                    Object objZze = jibVarY.zze();
                    jibVarY.c(objZze, object);
                    unsafe.putObject(obj, jV, objZze);
                } else {
                    unsafe.putObject(obj, jV, object);
                }
                qlb.h(i2, iArr[i + 2] & 1048575, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jV);
            if (!o(object2)) {
                Object objZze2 = jibVarY.zze();
                jibVarY.c(objZze2, object2);
                unsafe.putObject(obj, jV, objZze2);
                object2 = objZze2;
            }
            jibVarY.c(object2, object);
        }
    }

    public final void k(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        qlb.h((1 << (i2 >>> 20)) | qlb.e(obj, j), j, obj);
    }

    public final boolean l(zzeh zzehVar, zzeh zzehVar2, int i) {
        return m(i, zzehVar) == m(i, zzehVar2);
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f6 A[RETURN] */
    public final boolean m(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            if (((1 << (i2 >>> 20)) & qlb.e(obj, j)) != 0) {
                return true;
            }
            return false;
        }
        int iV = v(i);
        long j2 = iV & 1048575;
        switch (u(iV)) {
            case 0:
                if (Double.doubleToRawLongBits(qlb.c.a(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(qlb.c.c(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (qlb.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (qlb.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (qlb.e(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (qlb.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (qlb.e(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 7:
                return qlb.c.o(obj, j2);
            case 8:
                Object objG = qlb.g(obj, j2);
                if (objG instanceof String) {
                    if (((String) objG).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objG instanceof zzdf)) {
                    mi2.b();
                    return false;
                }
                if (zzdf.zzb.equals(objG)) {
                    return false;
                }
                return true;
            case 9:
                if (qlb.g(obj, j2) != null) {
                    return true;
                }
                return false;
            case 10:
                if (zzdf.zzb.equals(qlb.g(obj, j2))) {
                    return false;
                }
                return true;
            case 11:
                if (qlb.e(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (qlb.e(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (qlb.e(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (qlb.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (qlb.e(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (qlb.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (qlb.g(obj, j2) != null) {
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
        return qlb.e(obj, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    /* JADX WARN: Code duplicated, block: B:128:0x0305 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x0307  */
    /* JADX WARN: Code duplicated, block: B:130:0x0308 A[PHI: r7
      0x0308: PHI (r7v39 byte) = (r7v38 byte), (r7v42 byte) binds: [B:127:0x0303, B:129:0x0307] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:132:0x030e  */
    /* JADX WARN: Code duplicated, block: B:495:0x0bc9 A[PHI: r1 r2 r5 r8 r12 r15 r24 r28
      0x0bc9: PHI (r1v164 a2b) = (r1v112 a2b), (r1v114 a2b), (r1v115 a2b), (r1v146 a2b), (r1v168 a2b) binds: [B:489:0x0ba0, B:472:0x0b3f, B:456:0x0ae7, B:252:0x06e2, B:229:0x0650] A[DONT_GENERATE, DONT_INLINE]
      0x0bc9: PHI (r2v189 int) = (r2v141 int), (r2v143 int), (r2v144 int), (r2v177 int), (r2v194 int) binds: [B:489:0x0ba0, B:472:0x0b3f, B:456:0x0ae7, B:252:0x06e2, B:229:0x0650] A[DONT_GENERATE, DONT_INLINE]
      0x0bc9: PHI (r5v176 byte[]) = (r5v146 byte[]), (r5v148 byte[]), (r5v149 byte[]), (r5v169 byte[]), (r5v181 byte[]) binds: [B:489:0x0ba0, B:472:0x0b3f, B:456:0x0ae7, B:252:0x06e2, B:229:0x0650] A[DONT_GENERATE, DONT_INLINE]
      0x0bc9: PHI (r8v121 int) = (r8v84 int), (r8v86 int), (r8v87 int), (r8v114 int), (r8v126 int) binds: [B:489:0x0ba0, B:472:0x0b3f, B:456:0x0ae7, B:252:0x06e2, B:229:0x0650] A[DONT_GENERATE, DONT_INLINE]
      0x0bc9: PHI (r12v66 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.b<T>) = 
      (r12v37 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.b<T>)
      (r12v39 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.b<T>)
      (r12v40 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.b<T>)
      (r12v59 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.b<T>)
      (r12v69 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.b<T>)
     binds: [B:489:0x0ba0, B:472:0x0b3f, B:456:0x0ae7, B:252:0x06e2, B:229:0x0650] A[DONT_GENERATE, DONT_INLINE]
      0x0bc9: PHI (r15v70 int) = (r15v46 int), (r15v48 int), (r15v49 int), (r15v66 int), (r15v74 int) binds: [B:489:0x0ba0, B:472:0x0b3f, B:456:0x0ae7, B:252:0x06e2, B:229:0x0650] A[DONT_GENERATE, DONT_INLINE]
      0x0bc9: PHI (r24v63 java.lang.Object[]) = 
      (r24v35 java.lang.Object[])
      (r24v37 java.lang.Object[])
      (r24v38 java.lang.Object[])
      (r24v56 java.lang.Object[])
      (r24v66 java.lang.Object[])
     binds: [B:489:0x0ba0, B:472:0x0b3f, B:456:0x0ae7, B:252:0x06e2, B:229:0x0650] A[DONT_GENERATE, DONT_INLINE]
      0x0bc9: PHI (r28v31 sun.misc.Unsafe) = 
      (r28v2 sun.misc.Unsafe)
      (r28v4 sun.misc.Unsafe)
      (r28v5 sun.misc.Unsafe)
      (r28v24 sun.misc.Unsafe)
      (r28v34 sun.misc.Unsafe)
     binds: [B:489:0x0ba0, B:472:0x0b3f, B:456:0x0ae7, B:252:0x06e2, B:229:0x0650] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:593:0x0e8a A[PHI: r2 r5 r6 r8 r15 r23
      0x0e8a: PHI (r2v139 byte[]) = (r2v112 byte[]), (r2v116 byte[]), (r2v132 byte[]), (r2v140 byte[]) binds: [B:591:0x0e72, B:579:0x0dff, B:525:0x0ca5, B:519:0x0c58] A[DONT_GENERATE, DONT_INLINE]
      0x0e8a: PHI (r5v144 a2b) = (r5v113 a2b), (r5v117 a2b), (r5v137 a2b), (r5v145 a2b) binds: [B:591:0x0e72, B:579:0x0dff, B:525:0x0ca5, B:519:0x0c58] A[DONT_GENERATE, DONT_INLINE]
      0x0e8a: PHI (r6v110 boolean) = (r6v84 boolean), (r6v89 boolean), (r6v104 boolean), (r6v111 boolean) binds: [B:591:0x0e72, B:579:0x0dff, B:525:0x0ca5, B:519:0x0c58] A[DONT_GENERATE, DONT_INLINE]
      0x0e8a: PHI (r8v81 int) = (r8v50 int), (r8v54 int), (r8v74 int), (r8v82 int) binds: [B:591:0x0e72, B:579:0x0dff, B:525:0x0ca5, B:519:0x0c58] A[DONT_GENERATE, DONT_INLINE]
      0x0e8a: PHI (r15v44 int) = (r15v20 int), (r15v24 int), (r15v39 int), (r15v45 int) binds: [B:591:0x0e72, B:579:0x0dff, B:525:0x0ca5, B:519:0x0c58] A[DONT_GENERATE, DONT_INLINE]
      0x0e8a: PHI (r23v44 int) = (r23v22 int), (r23v26 int), (r23v39 int), (r23v45 int) binds: [B:591:0x0e72, B:579:0x0dff, B:525:0x0ca5, B:519:0x0c58] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:650:0x1006  */
    /* JADX WARN: Code duplicated, block: B:716:0x0bcc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:719:0x0e8d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:750:0x0e9c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:758:0x0326 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:759:0x0326 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:777:0x0bdb A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final int q(Object obj, byte[] bArr, int i, int i2, int i3, a2b a2bVar) throws zzer {
        int[] iArr;
        int i4;
        Unsafe unsafe;
        Object[] objArr;
        b<T> bVar;
        a2b a2bVar2;
        int i5;
        boolean z;
        int i6;
        int i7;
        Object obj2;
        byte[] bArr2;
        int i8;
        int iF;
        Object obj3;
        int i9;
        byte[] bArr3;
        Object obj4;
        boolean z2;
        int i10;
        int i11;
        Unsafe unsafe2;
        int i12;
        a2b a2bVar3;
        Unsafe unsafe3;
        Unsafe unsafe4;
        byte[] bArr4;
        a2b a2bVar4;
        Object obj5;
        Unsafe unsafe5;
        int i13;
        int iE;
        int i14;
        int i15;
        byte b;
        byte b2;
        int i16;
        int i17;
        int i18;
        int iA;
        int i19;
        int i20;
        int i21;
        byte[] bArr5;
        int i22;
        int iJ;
        a2b a2bVar5;
        int i23;
        int iA2;
        int i24;
        Unsafe unsafe6;
        int i25;
        byte[] bArr6;
        a2b a2bVar6;
        int i26;
        int i27;
        int iG;
        byte[] bArr7;
        a2b a2bVar7;
        int i28;
        int i29;
        int i30;
        a2b a2bVar8;
        int i31;
        int i32;
        int i33;
        int i34;
        zzeo zzeoVar;
        int i35;
        int i36;
        int iG2;
        b<T> bVar2 = this;
        Object obj6 = obj;
        byte[] bArr8 = bArr;
        i2 = i2;
        a2b a2bVar9 = a2bVar;
        if (!o(obj6)) {
            fg.c("Mutating immutable message: ".concat(String.valueOf(obj6)));
            return 0;
        }
        int iG3 = i;
        int i37 = -1;
        int iT = 0;
        int i38 = 1048575;
        int i39 = 0;
        int i40 = 0;
        while (true) {
            Object[] objArr2 = bVar2.b;
            iArr = bVar2.a;
            Unsafe unsafe7 = m;
            Object objValueOf = null;
            if (iG3 < i2) {
                int iH = iG3 + 1;
                int i41 = bArr8[iG3];
                if (i41 < 0) {
                    iH = c2b.h(i41, bArr8, iH, a2bVar9);
                    i41 = a2bVar9.a;
                }
                int i42 = iH;
                i40 = i41;
                int i43 = (i40 == true ? 1 : 0) >>> 3;
                int i44 = bVar2.d;
                int i45 = bVar2.c;
                iT = i43 > i37 ? (i43 < i45 || i43 > i44) ? -1 : bVar2.t(i43, iT / 3) : (i43 < i45 || i43 > i44) ? -1 : bVar2.t(i43, 0);
                if (iT != -1) {
                    boolean z3 = (i40 == true ? 1 : 0) & 7;
                    int i46 = iArr[iT + 1];
                    int iU = u(i46);
                    long j = i46 & 1048575;
                    Unsafe unsafe8 = m;
                    if (iU <= 17) {
                        int i47 = iArr[iT + 2];
                        int i48 = 1 << (i47 >>> 20);
                        int i49 = i47 & 1048575;
                        if (i49 != i38) {
                            if (i38 != 1048575) {
                                unsafe7.putInt(obj6, i38, i39);
                            }
                            i39 = i49 == 1048575 ? 0 : unsafe7.getInt(obj6, i49);
                            i9 = i49;
                        } else {
                            i9 = i38;
                        }
                        switch (iU) {
                            case 0:
                                bArr3 = bArr;
                                obj4 = obj6;
                                z2 = true;
                                i10 = i42;
                                i11 = i9;
                                unsafe2 = unsafe7;
                                i6 = i43;
                                i12 = i39;
                                a2bVar3 = a2bVar;
                                if (z3 == 1) {
                                    int i50 = i10 + 8;
                                    double dLongBitsToDouble = Double.longBitsToDouble(c2b.n(i10, bArr3));
                                    obj6 = obj;
                                    qlb.c.i(obj6, j, dLongBitsToDouble);
                                    iG3 = i50;
                                    bArr8 = bArr3;
                                    a2bVar9 = a2bVar3;
                                    i39 = i12 | i48;
                                    i37 = i6;
                                    i38 = i11;
                                } else {
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 1:
                                bArr3 = bArr;
                                obj4 = obj6;
                                i10 = i42;
                                i11 = i9;
                                unsafe2 = unsafe7;
                                i6 = i43;
                                i12 = i39;
                                a2bVar3 = a2bVar;
                                if (z3 == 5) {
                                    int i51 = i10 + 4;
                                    qlb.c.l(obj4, j, Float.intBitsToFloat(c2b.b(i10, bArr3)));
                                    i39 = i12 | i48;
                                    a2bVar9 = a2bVar3;
                                    obj6 = obj4;
                                    iG3 = i51;
                                    bArr8 = bArr3;
                                    iT = iT;
                                    i37 = i6;
                                    i38 = i11;
                                    i2 = i2;
                                } else {
                                    z2 = true;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 2:
                            case 3:
                                bArr3 = bArr;
                                obj4 = obj6;
                                unsafe3 = unsafe7;
                                i6 = i43;
                                i10 = i42;
                                i12 = i39;
                                i11 = i9;
                                a2bVar3 = a2bVar;
                                if (z3 == 0) {
                                    int iJ2 = c2b.j(bArr3, i10, a2bVar3);
                                    obj6 = obj4;
                                    unsafe3.putLong(obj6, j, a2bVar3.b);
                                    i2 = i2;
                                    bArr8 = bArr3;
                                    a2bVar9 = a2bVar3;
                                    iG3 = iJ2;
                                    i37 = i6;
                                    i38 = i11;
                                    i39 = i12 | i48;
                                    iT = iT;
                                } else {
                                    unsafe2 = unsafe3;
                                    z2 = true;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 4:
                            case 11:
                                bArr3 = bArr;
                                obj4 = obj6;
                                unsafe3 = unsafe7;
                                i6 = i43;
                                i10 = i42;
                                i12 = i39;
                                i11 = i9;
                                a2bVar3 = a2bVar;
                                if (z3 == 0) {
                                    int iG4 = c2b.g(bArr3, i10, a2bVar3);
                                    unsafe3.putInt(obj4, j, a2bVar3.a);
                                    obj6 = obj4;
                                    iG3 = iG4;
                                    i39 = i12 | i48;
                                    a2bVar9 = a2bVar3;
                                    bArr8 = bArr3;
                                    i37 = i6;
                                    i38 = i11;
                                } else {
                                    unsafe2 = unsafe3;
                                    z2 = true;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 5:
                            case 14:
                                Object obj7 = obj6;
                                unsafe4 = unsafe7;
                                z2 = true;
                                i6 = i43;
                                i10 = i42;
                                i12 = i39;
                                i11 = i9;
                                if (z3 == 1) {
                                    int i52 = i10 + 8;
                                    long jN = c2b.n(i10, bArr);
                                    obj6 = obj7;
                                    unsafe4.putLong(obj6, j, jN);
                                    i2 = i2;
                                    iG3 = i52;
                                    bArr8 = bArr;
                                    a2bVar9 = a2bVar;
                                    i39 = i12 | i48;
                                    i37 = i6;
                                    i38 = i11;
                                } else {
                                    bArr3 = bArr;
                                    obj4 = obj7;
                                    a2bVar3 = a2bVar;
                                    unsafe2 = unsafe4;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 6:
                            case 13:
                                bArr4 = bArr;
                                a2bVar4 = a2bVar;
                                obj5 = obj6;
                                unsafe5 = unsafe7;
                                i6 = i43;
                                i10 = i42;
                                i12 = i39;
                                i11 = i9;
                                if (z3 == 5) {
                                    unsafe5.putInt(obj5, j, c2b.b(i10, bArr4));
                                    bArr8 = bArr4;
                                    iG3 = i10 + 4;
                                    i39 = i12 | i48;
                                    obj6 = obj5;
                                    i38 = i11;
                                    i2 = i2;
                                    a2bVar9 = a2bVar4;
                                    i37 = i6;
                                } else {
                                    Object obj8 = obj5;
                                    bArr3 = bArr4;
                                    obj4 = obj8;
                                    unsafe2 = unsafe5;
                                    a2bVar3 = a2bVar4;
                                    z2 = true;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 7:
                                bArr4 = bArr;
                                a2bVar4 = a2bVar;
                                obj5 = obj6;
                                unsafe5 = unsafe7;
                                i6 = i43;
                                i10 = i42;
                                i12 = i39;
                                i11 = i9;
                                if (z3 == 0) {
                                    int i53 = i12 | i48;
                                    int iJ3 = c2b.j(bArr4, i10, a2bVar4);
                                    qlb.c.e(obj5, j, a2bVar4.b != 0);
                                    i2 = i2;
                                    i39 = i53;
                                    a2bVar9 = a2bVar4;
                                    iT = iT;
                                    i37 = i6;
                                    bArr8 = bArr4;
                                    iG3 = iJ3;
                                    obj6 = obj5;
                                    i38 = i11;
                                } else {
                                    Object obj9 = obj5;
                                    bArr3 = bArr4;
                                    obj4 = obj9;
                                    unsafe2 = unsafe5;
                                    a2bVar3 = a2bVar4;
                                    z2 = true;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 8:
                                bArr4 = bArr;
                                a2bVar4 = a2bVar;
                                obj5 = obj6;
                                unsafe5 = unsafe7;
                                i6 = i43;
                                i10 = i42;
                                i12 = i39;
                                if (z3 == 2) {
                                    if ((i46 & 536870912) != 0) {
                                        iE = c2b.g(bArr4, i10, a2bVar4);
                                        int i54 = a2bVar4.a;
                                        if (i54 < 0) {
                                            nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            return 0;
                                        }
                                        int i55 = i12 | i48;
                                        if (i54 == 0) {
                                            a2bVar4.c = "";
                                            i15 = i55;
                                            i11 = i9;
                                        } else {
                                            int length = bArr4.length;
                                            pmb pmbVar = wmb.a;
                                            if ((iE | i54 | ((length - iE) - i54)) < 0) {
                                                i8.d("buffer length=%d, index=%d, size=%d", new Object[]{Integer.valueOf(length), Integer.valueOf(iE), Integer.valueOf(i54)});
                                                return 0;
                                            }
                                            int i56 = iE + i54;
                                            char[] cArr = new char[i54];
                                            int i57 = 0;
                                            while (true) {
                                                i14 = iE;
                                                if (iE < i56 && (b2 = bArr4[i14]) >= 0) {
                                                    cArr[i57] = (char) b2;
                                                    iE = i14 + 1;
                                                    i57++;
                                                }
                                            }
                                            int i58 = i14;
                                            while (i58 < i56) {
                                                int i59 = i58;
                                                i58 = i59 + 1;
                                                i55 = i55;
                                                byte b3 = bArr4[i59];
                                                if (b3 >= 0) {
                                                    int i60 = i57 + 1;
                                                    cArr[i57] = (char) b3;
                                                    while (true) {
                                                        i57 = i60;
                                                        if (i58 < i56 && (b = bArr4[i58]) >= 0) {
                                                            i58++;
                                                            i60 = i57 + 1;
                                                            cArr[i57] = (char) b;
                                                        }
                                                    }
                                                    i55 = i55;
                                                } else {
                                                    int i61 = i9;
                                                    if (b3 >= -32) {
                                                        if (b3 >= -16) {
                                                            int i62 = i56;
                                                            if (i58 >= i62 - 2) {
                                                                nz0.c("Protocol message had invalid UTF-8.");
                                                                return 0;
                                                            }
                                                            byte b4 = bArr4[i58];
                                                            int i63 = i59 + 3;
                                                            byte b5 = bArr4[i59 + 2];
                                                            int i64 = i59 + 4;
                                                            byte b6 = bArr4[i63];
                                                            if (!hn1.e(b4)) {
                                                                if ((((b4 + 112) + (b3 << 28)) >> 30) == 0 && !hn1.e(b5) && !hn1.e(b6)) {
                                                                    int i65 = ((b4 & 63) << 12) | ((b3 & 7) << 18) | ((b5 & 63) << 6) | (b6 & 63);
                                                                    cArr[i57] = (char) ((i65 >>> 10) + 55232);
                                                                    cArr[i57 + 1] = (char) ((i65 & 1023) + 56320);
                                                                    i57 += 2;
                                                                    i58 = i64;
                                                                    i56 = i62;
                                                                }
                                                            }
                                                            nz0.c("Protocol message had invalid UTF-8.");
                                                            return 0;
                                                        }
                                                        if (i58 >= i56 - 1) {
                                                            nz0.c("Protocol message had invalid UTF-8.");
                                                            return 0;
                                                        }
                                                        int i66 = i57 + 1;
                                                        int i67 = i59 + 2;
                                                        byte b7 = bArr4[i58];
                                                        int i68 = i59 + 3;
                                                        byte b8 = bArr4[i67];
                                                        if (!hn1.e(b7)) {
                                                            int i69 = i56;
                                                            if (b3 != -32) {
                                                                if (b3 != -19) {
                                                                    if (!hn1.e(b8)) {
                                                                        cArr[i57] = (char) (((b7 & 63) << 6) | ((b3 & 15) << 12) | (b8 & 63));
                                                                        i58 = i68;
                                                                        i56 = i69;
                                                                        i57 = i66;
                                                                    }
                                                                } else if (b7 < -96) {
                                                                    b3 = -19;
                                                                    if (!hn1.e(b8)) {
                                                                        cArr[i57] = (char) (((b7 & 63) << 6) | ((b3 & 15) << 12) | (b8 & 63));
                                                                        i58 = i68;
                                                                        i56 = i69;
                                                                        i57 = i66;
                                                                    }
                                                                }
                                                            } else if (b7 >= -96) {
                                                                b3 = -32;
                                                                if (b3 != -19) {
                                                                    if (!hn1.e(b8)) {
                                                                        cArr[i57] = (char) (((b7 & 63) << 6) | ((b3 & 15) << 12) | (b8 & 63));
                                                                        i58 = i68;
                                                                        i56 = i69;
                                                                        i57 = i66;
                                                                    }
                                                                } else if (b7 < -96) {
                                                                    b3 = -19;
                                                                    if (!hn1.e(b8)) {
                                                                        cArr[i57] = (char) (((b7 & 63) << 6) | ((b3 & 15) << 12) | (b8 & 63));
                                                                        i58 = i68;
                                                                        i56 = i69;
                                                                        i57 = i66;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        nz0.c("Protocol message had invalid UTF-8.");
                                                        return 0;
                                                    }
                                                    if (i58 >= i56) {
                                                        nz0.c("Protocol message had invalid UTF-8.");
                                                        return 0;
                                                    }
                                                    int i70 = i57 + 1;
                                                    int i71 = i59 + 2;
                                                    byte b9 = bArr4[i58];
                                                    if (b3 < -62 || hn1.e(b9)) {
                                                        nz0.c("Protocol message had invalid UTF-8.");
                                                        return 0;
                                                    }
                                                    cArr[i57] = (char) (((b3 & 31) << 6) | (b9 & 63));
                                                    i57 = i70;
                                                    i58 = i71;
                                                    i9 = i61;
                                                }
                                            }
                                            i15 = i55;
                                            i11 = i9;
                                            a2bVar4.c = new String(cArr, 0, i57);
                                            iE = i56;
                                        }
                                        i13 = i15;
                                    } else {
                                        i11 = i9;
                                        i13 = i12 | i48;
                                        iE = c2b.e(bArr4, i10, a2bVar4);
                                    }
                                    unsafe5.putObject(obj5, j, a2bVar4.c);
                                    bArr8 = bArr4;
                                    iG3 = iE;
                                    a2bVar9 = a2bVar4;
                                    i39 = i13;
                                    obj6 = obj5;
                                    iT = iT;
                                    i37 = i6;
                                    i38 = i11;
                                    i2 = i2;
                                } else {
                                    i11 = i9;
                                    Object obj10 = obj5;
                                    bArr3 = bArr4;
                                    obj4 = obj10;
                                    unsafe2 = unsafe5;
                                    a2bVar3 = a2bVar4;
                                    z2 = true;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 9:
                                a2bVar9 = a2bVar;
                                i16 = i39;
                                unsafe4 = unsafe7;
                                i6 = i43;
                                if (z3 == 2) {
                                    i39 = i16 | i48;
                                    Object objZ = bVar2.z(iT, obj6);
                                    int iL = c2b.l(objZ, bVar2.y(iT), bArr, i42, i2, a2bVar9);
                                    unsafe8.putObject(obj, bVar2.v(iT) & 1048575, objZ);
                                    bVar2.k(iT, obj);
                                    i2 = i2;
                                    bArr8 = bArr;
                                    iG3 = iL;
                                    a2bVar9 = a2bVar9;
                                    obj6 = obj;
                                    i38 = i9;
                                    i37 = i6;
                                } else {
                                    Object obj11 = obj6;
                                    i10 = i42;
                                    bArr3 = bArr;
                                    obj4 = obj11;
                                    i12 = i16;
                                    a2bVar3 = a2bVar9;
                                    i11 = i9;
                                    z2 = true;
                                    unsafe2 = unsafe4;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 10:
                                bArr3 = bArr;
                                a2bVar9 = a2bVar;
                                i16 = i39;
                                unsafe4 = unsafe7;
                                i6 = i43;
                                i17 = i42;
                                if (z3 == 2) {
                                    i18 = i16 | i48;
                                    iA = c2b.a(bArr3, i17, a2bVar9);
                                    unsafe4.putObject(obj6, j, a2bVar9.c);
                                    i39 = i18;
                                    iG3 = iA;
                                    bArr8 = bArr3;
                                    i38 = i9;
                                    i37 = i6;
                                } else {
                                    obj4 = obj6;
                                    i10 = i17;
                                    i12 = i16;
                                    a2bVar3 = a2bVar9;
                                    i11 = i9;
                                    z2 = true;
                                    unsafe2 = unsafe4;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 12:
                                bArr3 = bArr;
                                a2bVar9 = a2bVar;
                                i16 = i39;
                                unsafe4 = unsafe7;
                                i6 = i43;
                                i17 = i42;
                                if (z3 == 0) {
                                    iG3 = c2b.g(bArr3, i17, a2bVar9);
                                    int i72 = a2bVar9.a;
                                    zzel zzelVarX = bVar2.x(iT);
                                    if ((i46 & Integer.MIN_VALUE) == 0 || zzelVarX == null || zzelVarX.zza(i72)) {
                                        i16 |= i48;
                                        unsafe4.putInt(obj6, j, i72);
                                    } else {
                                        r(obj6).b(i40 == true ? 1 : 0, Long.valueOf(i72));
                                    }
                                    i39 = i16;
                                    bArr8 = bArr3;
                                    iT = iT;
                                    i38 = i9;
                                    i37 = i6;
                                    i2 = i2;
                                } else {
                                    obj4 = obj6;
                                    i10 = i17;
                                    i12 = i16;
                                    a2bVar3 = a2bVar9;
                                    i11 = i9;
                                    z2 = true;
                                    unsafe2 = unsafe4;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 15:
                                bArr3 = bArr;
                                a2bVar9 = a2bVar;
                                i16 = i39;
                                unsafe4 = unsafe7;
                                i6 = i43;
                                i17 = i42;
                                if (z3 == 0) {
                                    i18 = i16 | i48;
                                    iA = c2b.g(bArr3, i17, a2bVar9);
                                    unsafe4.putInt(obj6, j, zzdj.zzb(a2bVar9.a));
                                    i39 = i18;
                                    iG3 = iA;
                                    bArr8 = bArr3;
                                    i38 = i9;
                                    i37 = i6;
                                } else {
                                    obj4 = obj6;
                                    i10 = i17;
                                    i12 = i16;
                                    a2bVar3 = a2bVar9;
                                    i11 = i9;
                                    z2 = true;
                                    unsafe2 = unsafe4;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            case 16:
                                bArr3 = bArr;
                                if (z3 == 0) {
                                    i39 |= i48;
                                    int iJ4 = c2b.j(bArr3, i42, a2bVar);
                                    i6 = i43;
                                    unsafe7.putLong(obj6, j, zzdj.zzc(a2bVar.b));
                                    a2bVar9 = a2bVar;
                                    iG3 = iJ4;
                                    bArr8 = bArr3;
                                    i38 = i9;
                                    i37 = i6;
                                } else {
                                    i6 = i43;
                                    obj4 = obj6;
                                    i10 = i42;
                                    i12 = i39;
                                    i11 = i9;
                                    z2 = true;
                                    unsafe2 = unsafe7;
                                    a2bVar3 = a2bVar;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                            default:
                                if (z3 == 3) {
                                    Object objZ2 = bVar2.z(iT, obj6);
                                    int iK = c2b.k(objZ2, bVar2.y(iT), bArr, i42, i2, (i43 << 3) | 4, a2bVar);
                                    unsafe8.putObject(obj6, bVar2.v(iT) & 1048575, objZ2);
                                    bVar2.k(iT, obj6);
                                    i2 = i2;
                                    a2bVar9 = a2bVar;
                                    iG3 = iK;
                                    bArr8 = bArr;
                                    iT = iT;
                                    i38 = i9;
                                    i39 |= i48;
                                    i37 = i43;
                                } else {
                                    bArr3 = bArr;
                                    obj4 = obj6;
                                    z2 = true;
                                    i10 = i42;
                                    i11 = i9;
                                    unsafe2 = unsafe7;
                                    i6 = i43;
                                    i12 = i39;
                                    a2bVar3 = a2bVar;
                                    i5 = i10;
                                    z = z2;
                                    bArr2 = bArr3;
                                    a2bVar2 = a2bVar3;
                                    unsafe = unsafe2;
                                    i4 = i12;
                                    i38 = i11;
                                    objArr = objArr2;
                                    i7 = i40 == true ? 1 : 0;
                                    obj2 = obj4;
                                }
                                break;
                        }
                    } else {
                        Object obj12 = obj6;
                        iArr = iArr;
                        Unsafe unsafe9 = unsafe7;
                        i6 = i43;
                        if (iU != 27) {
                            obj2 = obj12;
                            if (iU <= 49) {
                                int i73 = i38;
                                i4 = i39;
                                long j2 = i46;
                                zzeo zzeoVarZzd = (zzeo) unsafe9.getObject(obj2, j);
                                if (!zzeoVarZzd.zzc()) {
                                    int size = zzeoVarZzd.size();
                                    zzeoVarZzd = zzeoVarZzd.zzd(size != 0 ? size + size : 10);
                                    unsafe9.putObject(obj2, j, zzeoVarZzd);
                                }
                                zzeo zzeoVar2 = zzeoVarZzd;
                                String str = "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.";
                                switch (iU) {
                                    case 18:
                                    case 35:
                                        i24 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i25 = i42;
                                        bArr6 = bArr;
                                        a2bVar6 = a2bVar;
                                        this = bVar2;
                                        objArr = objArr2;
                                        i26 = i2;
                                        if (z3 == 2) {
                                            j6b j6bVar = (j6b) zzeoVar2;
                                            iG = c2b.g(bArr6, i25, a2bVar6);
                                            int i74 = a2bVar6.a + iG;
                                            while (iG < i74) {
                                                j6bVar.b(Double.longBitsToDouble(c2b.n(iG, bArr6)));
                                                iG += 8;
                                            }
                                            if (iG != i74) {
                                                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                return 0;
                                            }
                                        } else if (z3 == 1) {
                                            i27 = i25 + 8;
                                            j6b j6bVar2 = (j6b) zzeoVar2;
                                            j6bVar2.b(Double.longBitsToDouble(c2b.n(i25, bArr6)));
                                            while (i27 < i26) {
                                                int iG5 = c2b.g(bArr6, i27, a2bVar6);
                                                if (i24 == a2bVar6.a) {
                                                    j6bVar2.b(Double.longBitsToDouble(c2b.n(iG5, bArr6)));
                                                    i27 = iG5 + 8;
                                                } else {
                                                    iG = i27;
                                                }
                                            }
                                            iG = i27;
                                        } else {
                                            iG = i25;
                                        }
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 19:
                                    case 36:
                                        i24 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i25 = i42;
                                        bArr6 = bArr;
                                        a2bVar6 = a2bVar;
                                        this = bVar2;
                                        objArr = objArr2;
                                        i26 = i2;
                                        if (z3 == 2) {
                                            k8b k8bVar = (k8b) zzeoVar2;
                                            iG = c2b.g(bArr6, i25, a2bVar6);
                                            int i75 = a2bVar6.a + iG;
                                            while (iG < i75) {
                                                k8bVar.zzh(Float.intBitsToFloat(c2b.b(iG, bArr6)));
                                                iG += 4;
                                            }
                                            if (iG != i75) {
                                                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                return 0;
                                            }
                                        } else if (z3 == 5) {
                                            i27 = i25 + 4;
                                            k8b k8bVar2 = (k8b) zzeoVar2;
                                            k8bVar2.zzh(Float.intBitsToFloat(c2b.b(i25, bArr6)));
                                            while (i27 < i26) {
                                                int iG6 = c2b.g(bArr6, i27, a2bVar6);
                                                if (i24 == a2bVar6.a) {
                                                    k8bVar2.zzh(Float.intBitsToFloat(c2b.b(iG6, bArr6)));
                                                    i27 = iG6 + 4;
                                                } else {
                                                    iG = i27;
                                                }
                                            }
                                            iG = i27;
                                        } else {
                                            iG = i25;
                                        }
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i24 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i25 = i42;
                                        bArr6 = bArr;
                                        a2bVar6 = a2bVar;
                                        this = bVar2;
                                        objArr = objArr2;
                                        i26 = i2;
                                        if (z3 == 2) {
                                            tdb tdbVar = (tdb) zzeoVar2;
                                            iG = c2b.g(bArr6, i25, a2bVar6);
                                            int i76 = a2bVar6.a + iG;
                                            while (iG < i76) {
                                                iG = c2b.j(bArr6, iG, a2bVar6);
                                                tdbVar.c(a2bVar6.b);
                                            }
                                            if (iG != i76) {
                                                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                return 0;
                                            }
                                        } else if (z3 == 0) {
                                            tdb tdbVar2 = (tdb) zzeoVar2;
                                            iG = c2b.j(bArr6, i25, a2bVar6);
                                            tdbVar2.c(a2bVar6.b);
                                            while (iG < i26) {
                                                int iG7 = c2b.g(bArr6, iG, a2bVar6);
                                                if (i24 == a2bVar6.a) {
                                                    iG = c2b.j(bArr6, iG7, a2bVar6);
                                                    tdbVar2.c(a2bVar6.b);
                                                }
                                            }
                                        } else {
                                            iG = i25;
                                        }
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        bArr7 = bArr;
                                        a2bVar7 = a2bVar;
                                        i28 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i25 = i42;
                                        i29 = i2;
                                        this = bVar2;
                                        objArr = objArr2;
                                        if (z3 == 2) {
                                            iG = c2b.d(bArr7, i25, zzeoVar2, a2bVar7);
                                            i24 = i28;
                                            a2bVar6 = a2bVar7;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                        } else if (z3 == 0) {
                                            iG = c2b.i(i28 == true ? 1 : 0, bArr7, i25, i29, zzeoVar2, a2bVar7);
                                            i24 = i28 == true ? 1 : 0;
                                            bArr6 = bArr7;
                                            i26 = i29;
                                            a2bVar6 = a2bVar7;
                                        } else {
                                            i24 = i28;
                                            a2bVar6 = a2bVar7;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            iG = i25;
                                        }
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        bArr7 = bArr;
                                        a2bVar7 = a2bVar;
                                        i28 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i25 = i42;
                                        i29 = i2;
                                        this = bVar2;
                                        objArr = objArr2;
                                        if (z3 != 2) {
                                            if (z3 == 1) {
                                                i30 = i25 + 8;
                                                tdb tdbVar3 = (tdb) zzeoVar2;
                                                tdbVar3.c(c2b.n(i25, bArr7));
                                                while (i30 < i29) {
                                                    int iG8 = c2b.g(bArr7, i30, a2bVar7);
                                                    if (i28 != a2bVar7.a) {
                                                        i24 = i28;
                                                        a2bVar6 = a2bVar7;
                                                        i26 = i29;
                                                        iG = i30;
                                                        bArr6 = bArr7;
                                                        if (iG != i25) {
                                                            i25 = i25;
                                                            a2bVar9 = a2bVar6;
                                                            bArr8 = bArr6;
                                                            iT = iT;
                                                            i37 = i6;
                                                            obj6 = obj2;
                                                            i2 = i26;
                                                            i39 = i4;
                                                            iG3 = iG;
                                                            i40 = i24;
                                                            bVar2 = this;
                                                            i38 = i73;
                                                        } else {
                                                            i25 = i25;
                                                            i5 = iG;
                                                            bArr2 = bArr6;
                                                            i7 = i24;
                                                            i38 = i73;
                                                            unsafe = unsafe6;
                                                            z = true;
                                                            a2bVar2 = a2bVar6;
                                                        }
                                                    } else {
                                                        tdbVar3.c(c2b.n(iG8, bArr7));
                                                        i30 = iG8 + 8;
                                                    }
                                                    break;
                                                }
                                                i24 = i28;
                                                a2bVar6 = a2bVar7;
                                                i26 = i29;
                                                iG = i30;
                                                bArr6 = bArr7;
                                                if (iG != i25) {
                                                    i25 = i25;
                                                    a2bVar9 = a2bVar6;
                                                    bArr8 = bArr6;
                                                    iT = iT;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i2 = i26;
                                                    i39 = i4;
                                                    iG3 = iG;
                                                    i40 = i24;
                                                    bVar2 = this;
                                                    i38 = i73;
                                                } else {
                                                    i25 = i25;
                                                    i5 = iG;
                                                    bArr2 = bArr6;
                                                    i7 = i24;
                                                    i38 = i73;
                                                    unsafe = unsafe6;
                                                    z = true;
                                                    a2bVar2 = a2bVar6;
                                                }
                                            }
                                            i24 = i28;
                                            a2bVar6 = a2bVar7;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            iG = i25;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                            break;
                                        } else {
                                            tdb tdbVar4 = (tdb) zzeoVar2;
                                            iG = c2b.g(bArr7, i25, a2bVar7);
                                            int i77 = a2bVar7.a + iG;
                                            while (iG < i77) {
                                                tdbVar4.c(c2b.n(iG, bArr7));
                                                iG += 8;
                                            }
                                            if (iG != i77) {
                                                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                return 0;
                                            }
                                            i24 = i28;
                                            a2bVar6 = a2bVar7;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        bArr7 = bArr;
                                        a2bVar7 = a2bVar;
                                        i28 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i25 = i42;
                                        i29 = i2;
                                        this = bVar2;
                                        objArr = objArr2;
                                        if (z3 != 2) {
                                            if (z3 == 5) {
                                                i30 = i25 + 4;
                                                hab habVar = (hab) zzeoVar2;
                                                habVar.c(c2b.b(i25, bArr7));
                                                while (i30 < i29) {
                                                    int iG9 = c2b.g(bArr7, i30, a2bVar7);
                                                    if (i28 != a2bVar7.a) {
                                                        i24 = i28;
                                                        a2bVar6 = a2bVar7;
                                                        i26 = i29;
                                                        iG = i30;
                                                        bArr6 = bArr7;
                                                        if (iG != i25) {
                                                            i25 = i25;
                                                            a2bVar9 = a2bVar6;
                                                            bArr8 = bArr6;
                                                            iT = iT;
                                                            i37 = i6;
                                                            obj6 = obj2;
                                                            i2 = i26;
                                                            i39 = i4;
                                                            iG3 = iG;
                                                            i40 = i24;
                                                            bVar2 = this;
                                                            i38 = i73;
                                                        } else {
                                                            i25 = i25;
                                                            i5 = iG;
                                                            bArr2 = bArr6;
                                                            i7 = i24;
                                                            i38 = i73;
                                                            unsafe = unsafe6;
                                                            z = true;
                                                            a2bVar2 = a2bVar6;
                                                        }
                                                    } else {
                                                        habVar.c(c2b.b(iG9, bArr7));
                                                        i30 = iG9 + 4;
                                                    }
                                                    break;
                                                }
                                                i24 = i28;
                                                a2bVar6 = a2bVar7;
                                                i26 = i29;
                                                iG = i30;
                                                bArr6 = bArr7;
                                                if (iG != i25) {
                                                    i25 = i25;
                                                    a2bVar9 = a2bVar6;
                                                    bArr8 = bArr6;
                                                    iT = iT;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i2 = i26;
                                                    i39 = i4;
                                                    iG3 = iG;
                                                    i40 = i24;
                                                    bVar2 = this;
                                                    i38 = i73;
                                                } else {
                                                    i25 = i25;
                                                    i5 = iG;
                                                    bArr2 = bArr6;
                                                    i7 = i24;
                                                    i38 = i73;
                                                    unsafe = unsafe6;
                                                    z = true;
                                                    a2bVar2 = a2bVar6;
                                                }
                                            }
                                            i24 = i28;
                                            a2bVar6 = a2bVar7;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            iG = i25;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                            break;
                                        } else {
                                            hab habVar2 = (hab) zzeoVar2;
                                            iG = c2b.g(bArr7, i25, a2bVar7);
                                            int i78 = a2bVar7.a + iG;
                                            while (iG < i78) {
                                                habVar2.c(c2b.b(iG, bArr7));
                                                iG += 4;
                                            }
                                            if (iG != i78) {
                                                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                return 0;
                                            }
                                            i24 = i28;
                                            a2bVar6 = a2bVar7;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        bArr7 = bArr;
                                        a2bVar7 = a2bVar;
                                        i28 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i25 = i42;
                                        i29 = i2;
                                        this = bVar2;
                                        objArr = objArr2;
                                        if (z3 != 2) {
                                            if (z3 == 0) {
                                                h2b h2bVar = (h2b) zzeoVar2;
                                                iG = c2b.j(bArr7, i25, a2bVar7);
                                                h2bVar.b(a2bVar7.b != 0);
                                                while (iG < i29) {
                                                    int iG10 = c2b.g(bArr7, iG, a2bVar7);
                                                    if (i28 == a2bVar7.a) {
                                                        iG = c2b.j(bArr7, iG10, a2bVar7);
                                                        h2bVar.b(a2bVar7.b != 0);
                                                    }
                                                }
                                            }
                                            i24 = i28;
                                            a2bVar6 = a2bVar7;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            iG = i25;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        } else {
                                            h2b h2bVar2 = (h2b) zzeoVar2;
                                            iG = c2b.g(bArr7, i25, a2bVar7);
                                            int i79 = a2bVar7.a + iG;
                                            while (iG < i79) {
                                                iG = c2b.j(bArr7, iG, a2bVar7);
                                                h2bVar2.b(a2bVar7.b != 0);
                                            }
                                            if (iG != i79) {
                                                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                return 0;
                                            }
                                        }
                                        i24 = i28;
                                        a2bVar6 = a2bVar7;
                                        i26 = i29;
                                        bArr6 = bArr7;
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 26:
                                        bArr7 = bArr;
                                        a2bVar7 = a2bVar;
                                        i28 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i25 = i42;
                                        i29 = i2;
                                        this = bVar2;
                                        objArr = objArr2;
                                        if (z3 == 2) {
                                            if ((j2 & 536870912) == 0) {
                                                iG = c2b.g(bArr7, i25, a2bVar7);
                                                int i80 = a2bVar7.a;
                                                if (i80 < 0) {
                                                    nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    return 0;
                                                }
                                                if (i80 == 0) {
                                                    zzeoVar2.add("");
                                                } else {
                                                    zzeoVar2.add(new String(bArr7, iG, i80, zzep.a));
                                                    iG += i80;
                                                }
                                                while (iG < i29) {
                                                    int iG11 = c2b.g(bArr7, iG, a2bVar7);
                                                    if (i28 == a2bVar7.a) {
                                                        iG = c2b.g(bArr7, iG11, a2bVar7);
                                                        int i81 = a2bVar7.a;
                                                        if (i81 < 0) {
                                                            nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                            return 0;
                                                        }
                                                        if (i81 == 0) {
                                                            zzeoVar2.add("");
                                                        } else {
                                                            zzeoVar2.add(new String(bArr7, iG, i81, zzep.a));
                                                            iG += i81;
                                                        }
                                                    }
                                                }
                                            } else {
                                                iG = c2b.g(bArr7, i25, a2bVar7);
                                                int i82 = a2bVar7.a;
                                                if (i82 < 0) {
                                                    nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    return 0;
                                                }
                                                if (i82 == 0) {
                                                    zzeoVar2.add("");
                                                } else {
                                                    int i83 = iG + i82;
                                                    if (wmb.a.a(0, iG, i83, bArr7) != 0) {
                                                        nz0.c("Protocol message had invalid UTF-8.");
                                                        return 0;
                                                    }
                                                    zzeoVar2.add(new String(bArr7, iG, i82, zzep.a));
                                                    iG = i83;
                                                }
                                                while (iG < i29) {
                                                    int iG12 = c2b.g(bArr7, iG, a2bVar7);
                                                    if (i28 == a2bVar7.a) {
                                                        iG = c2b.g(bArr7, iG12, a2bVar7);
                                                        int i84 = a2bVar7.a;
                                                        if (i84 < 0) {
                                                            nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                            return 0;
                                                        }
                                                        if (i84 == 0) {
                                                            zzeoVar2.add("");
                                                        } else {
                                                            int i85 = iG + i84;
                                                            if (wmb.a.a(0, iG, i85, bArr7) != 0) {
                                                                nz0.c("Protocol message had invalid UTF-8.");
                                                                return 0;
                                                            }
                                                            zzeoVar2.add(new String(bArr7, iG, i84, zzep.a));
                                                            iG = i85;
                                                        }
                                                    }
                                                }
                                            }
                                            i24 = i28;
                                            a2bVar6 = a2bVar7;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        }
                                        i24 = i28;
                                        a2bVar6 = a2bVar7;
                                        i26 = i29;
                                        bArr6 = bArr7;
                                        iG = i25;
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 27:
                                        bArr7 = bArr;
                                        a2bVar8 = a2bVar;
                                        i31 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i32 = i42;
                                        i29 = i2;
                                        objArr = objArr2;
                                        if (z3 == 2) {
                                            this = this;
                                            iG = c2b.c(this.y(iT), i31 == true ? 1 : 0, bArr7, i32, i29, zzeoVar2, a2bVar8);
                                            i24 = i31 == true ? 1 : 0;
                                            i25 = i32;
                                            i26 = i29;
                                            a2bVar6 = a2bVar8;
                                            bArr6 = bArr7;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        }
                                        i24 = i31;
                                        i25 = i32;
                                        i26 = i29;
                                        a2bVar6 = a2bVar8;
                                        bArr6 = bArr7;
                                        iG = i25;
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 28:
                                        bArr7 = bArr;
                                        a2bVar8 = a2bVar;
                                        i31 = i40 == true ? 1 : 0;
                                        unsafe6 = unsafe9;
                                        i32 = i42;
                                        i29 = i2;
                                        objArr = objArr2;
                                        if (z3 == 2) {
                                            iG = c2b.g(bArr7, i32, a2bVar8);
                                            int i86 = a2bVar8.a;
                                            if (i86 < 0) {
                                                nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                return 0;
                                            }
                                            if (i86 > bArr7.length - iG) {
                                                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                return 0;
                                            }
                                            if (i86 == 0) {
                                                zzeoVar2.add(zzdf.zzb);
                                            } else {
                                                zzeoVar2.add(zzdf.zzr(bArr7, iG, i86));
                                                iG += i86;
                                            }
                                            while (iG < i29) {
                                                int iG13 = c2b.g(bArr7, iG, a2bVar8);
                                                if (i31 != a2bVar8.a) {
                                                    this = this;
                                                    i24 = i31 == true ? 1 : 0;
                                                    i25 = i32;
                                                    i26 = i29;
                                                    a2bVar6 = a2bVar8;
                                                    bArr6 = bArr7;
                                                    if (iG != i25) {
                                                        i25 = i25;
                                                        a2bVar9 = a2bVar6;
                                                        bArr8 = bArr6;
                                                        iT = iT;
                                                        i37 = i6;
                                                        obj6 = obj2;
                                                        i2 = i26;
                                                        i39 = i4;
                                                        iG3 = iG;
                                                        i40 = i24;
                                                        bVar2 = this;
                                                        i38 = i73;
                                                    } else {
                                                        i25 = i25;
                                                        i5 = iG;
                                                        bArr2 = bArr6;
                                                        i7 = i24;
                                                        i38 = i73;
                                                        unsafe = unsafe6;
                                                        z = true;
                                                        a2bVar2 = a2bVar6;
                                                    }
                                                    break;
                                                } else {
                                                    iG = c2b.g(bArr7, iG13, a2bVar8);
                                                    int i87 = a2bVar8.a;
                                                    if (i87 < 0) {
                                                        nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        return 0;
                                                    }
                                                    if (i87 > bArr7.length - iG) {
                                                        nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                        return 0;
                                                    }
                                                    if (i87 == 0) {
                                                        zzeoVar2.add(zzdf.zzb);
                                                    } else {
                                                        zzeoVar2.add(zzdf.zzr(bArr7, iG, i87));
                                                        iG += i87;
                                                    }
                                                }
                                            }
                                            this = this;
                                            i24 = i31 == true ? 1 : 0;
                                            i25 = i32;
                                            i26 = i29;
                                            a2bVar6 = a2bVar8;
                                            bArr6 = bArr7;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        }
                                        i24 = i31;
                                        i25 = i32;
                                        i26 = i29;
                                        a2bVar6 = a2bVar8;
                                        bArr6 = bArr7;
                                        iG = i25;
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        bArr7 = bArr;
                                        a2bVar8 = a2bVar;
                                        i24 = i40 == true ? 1 : 0;
                                        i32 = i42;
                                        i29 = i2;
                                        if (z3 == 2) {
                                            i34 = c2b.d(bArr7, i32, zzeoVar2, a2bVar8);
                                            i33 = i24 == true ? 1 : 0;
                                            zzeoVar = zzeoVar2;
                                        } else if (z3 != 0) {
                                            unsafe6 = unsafe9;
                                            objArr = objArr2;
                                            i25 = i32;
                                            i26 = i29;
                                            a2bVar6 = a2bVar8;
                                            bArr6 = bArr7;
                                            iG = i25;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        } else {
                                            i33 = i24 == true ? 1 : 0;
                                            i34 = c2b.i(i33 == true ? 1 : 0, bArr7, i32, i29, zzeoVar2, a2bVar8);
                                            bArr7 = bArr7;
                                            zzeoVar = zzeoVar2;
                                            i29 = i29;
                                            i32 = i32;
                                        }
                                        zzel zzelVarX2 = bVar2.x(iT);
                                        zd3 zd3Var = e.a;
                                        if (zzelVarX2 == null) {
                                            i35 = i34;
                                            unsafe6 = unsafe9;
                                            objArr = objArr2;
                                        } else if (zzeoVar != null) {
                                            int size2 = zzeoVar.size();
                                            i35 = i34;
                                            objArr = objArr2;
                                            Object objP = null;
                                            int i88 = 0;
                                            int i89 = 0;
                                            while (i89 < size2) {
                                                Unsafe unsafe10 = unsafe9;
                                                Integer num = (Integer) zzeoVar.get(i89);
                                                int iIntValue = num.intValue();
                                                if (zzelVarX2.zza(iIntValue)) {
                                                    if (i89 != i88) {
                                                        zzeoVar.set(i88, num);
                                                    }
                                                    i88++;
                                                } else {
                                                    objP = e.p(i6, iIntValue, obj2, objP);
                                                }
                                                i89++;
                                                unsafe9 = unsafe10;
                                            }
                                            unsafe6 = unsafe9;
                                            if (i88 != size2) {
                                                zzeoVar.subList(i88, size2).clear();
                                            }
                                        } else {
                                            i35 = i34;
                                            unsafe6 = unsafe9;
                                            objArr = objArr2;
                                            Iterator it = zzeoVar.iterator();
                                            Object objP2 = null;
                                            while (it.hasNext()) {
                                                int iIntValue2 = ((Integer) it.next()).intValue();
                                                if (!zzelVarX2.zza(iIntValue2)) {
                                                    objP2 = e.p(i6, iIntValue2, obj2, objP2);
                                                    it.remove();
                                                }
                                            }
                                        }
                                        this = this;
                                        i24 = i33;
                                        i25 = i32;
                                        i26 = i29;
                                        a2bVar6 = a2bVar8;
                                        iG = i35;
                                        bArr6 = bArr7;
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        bArr7 = bArr;
                                        a2bVar8 = a2bVar;
                                        i24 = i40 == true ? 1 : 0;
                                        i36 = i42;
                                        i29 = i2;
                                        if (z3 != 2) {
                                            if (z3 == 0) {
                                                hab habVar3 = (hab) zzeoVar2;
                                                iG2 = c2b.g(bArr7, i36, a2bVar8);
                                                habVar3.c(zzdj.zzb(a2bVar8.a));
                                                while (iG2 < i29) {
                                                    int iG14 = c2b.g(bArr7, iG2, a2bVar8);
                                                    if (i24 == a2bVar8.a) {
                                                        iG2 = c2b.g(bArr7, iG14, a2bVar8);
                                                        habVar3.c(zzdj.zzb(a2bVar8.a));
                                                    }
                                                }
                                            }
                                            i25 = i36;
                                            a2bVar6 = a2bVar8;
                                            unsafe6 = unsafe9;
                                            objArr = objArr2;
                                            this = bVar2;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            iG = i25;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        } else {
                                            hab habVar4 = (hab) zzeoVar2;
                                            iG2 = c2b.g(bArr7, i36, a2bVar8);
                                            int i90 = a2bVar8.a + iG2;
                                            while (iG2 < i90) {
                                                iG2 = c2b.g(bArr7, iG2, a2bVar8);
                                                habVar4.c(zzdj.zzb(a2bVar8.a));
                                            }
                                            if (iG2 != i90) {
                                                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                return 0;
                                            }
                                        }
                                        i25 = i36;
                                        unsafe6 = unsafe9;
                                        objArr = objArr2;
                                        this = bVar2;
                                        iG = iG2;
                                        i26 = i29;
                                        a2bVar6 = a2bVar8;
                                        bArr6 = bArr7;
                                        if (iG != i25) {
                                            i25 = i25;
                                            a2bVar9 = a2bVar6;
                                            bArr8 = bArr6;
                                            iT = iT;
                                            i37 = i6;
                                            obj6 = obj2;
                                            i2 = i26;
                                            i39 = i4;
                                            iG3 = iG;
                                            i40 = i24;
                                            bVar2 = this;
                                            i38 = i73;
                                        } else {
                                            i25 = i25;
                                            i5 = iG;
                                            bArr2 = bArr6;
                                            i7 = i24;
                                            i38 = i73;
                                            unsafe = unsafe6;
                                            z = true;
                                            a2bVar2 = a2bVar6;
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        bArr7 = bArr;
                                        a2bVar8 = a2bVar;
                                        i24 = i40 == true ? 1 : 0;
                                        i36 = i42;
                                        i29 = i2;
                                        if (z3 != 2) {
                                            if (z3 == 0) {
                                                tdb tdbVar5 = (tdb) zzeoVar2;
                                                int iJ5 = c2b.j(bArr7, i36, a2bVar8);
                                                tdbVar5.c(zzdj.zzc(a2bVar8.b));
                                                while (true) {
                                                    iG2 = iJ5;
                                                    if (iG2 < i29) {
                                                        int iG15 = c2b.g(bArr7, iG2, a2bVar8);
                                                        if (i24 == a2bVar8.a) {
                                                            iJ5 = c2b.j(bArr7, iG15, a2bVar8);
                                                            tdbVar5.c(zzdj.zzc(a2bVar8.b));
                                                        }
                                                    }
                                                }
                                                i25 = i36;
                                                unsafe6 = unsafe9;
                                                objArr = objArr2;
                                                this = bVar2;
                                                iG = iG2;
                                                i26 = i29;
                                                a2bVar6 = a2bVar8;
                                                bArr6 = bArr7;
                                                if (iG != i25) {
                                                    i25 = i25;
                                                    a2bVar9 = a2bVar6;
                                                    bArr8 = bArr6;
                                                    iT = iT;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i2 = i26;
                                                    i39 = i4;
                                                    iG3 = iG;
                                                    i40 = i24;
                                                    bVar2 = this;
                                                    i38 = i73;
                                                } else {
                                                    i25 = i25;
                                                    i5 = iG;
                                                    bArr2 = bArr6;
                                                    i7 = i24;
                                                    i38 = i73;
                                                    unsafe = unsafe6;
                                                    z = true;
                                                    a2bVar2 = a2bVar6;
                                                }
                                            }
                                            i25 = i36;
                                            a2bVar6 = a2bVar8;
                                            unsafe6 = unsafe9;
                                            objArr = objArr2;
                                            this = bVar2;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            iG = i25;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                            break;
                                        } else {
                                            tdb tdbVar6 = (tdb) zzeoVar2;
                                            int iG16 = c2b.g(bArr7, i36, a2bVar8);
                                            int i91 = a2bVar8.a + iG16;
                                            while (iG16 < i91) {
                                                int iJ6 = c2b.j(bArr7, iG16, a2bVar8);
                                                tdbVar6.c(zzdj.zzc(a2bVar8.b));
                                                iG16 = iJ6;
                                                str = str;
                                            }
                                            String str2 = str;
                                            if (iG16 != i91) {
                                                nz0.c(str2);
                                                return 0;
                                            }
                                            a2bVar6 = a2bVar8;
                                            unsafe6 = unsafe9;
                                            objArr = objArr2;
                                            this = bVar2;
                                            iG = iG16;
                                            i25 = i36;
                                            i26 = i29;
                                            bArr6 = bArr7;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        }
                                        break;
                                    default:
                                        if (z3 == 3) {
                                            int i92 = ((i40 == true ? 1 : 0) & (-8)) | 4;
                                            jib jibVarY = bVar2.y(iT);
                                            Object objZze = jibVarY.zze();
                                            bArr7 = bArr;
                                            i24 = i40 == true ? 1 : 0;
                                            int i93 = i42;
                                            int iK2 = c2b.k(objZze, jibVarY, bArr7, i93, i2, i92, a2bVar);
                                            int i94 = i92;
                                            a2b a2bVar10 = a2bVar;
                                            jibVarY.b(objZze);
                                            a2bVar10.c = objZze;
                                            zzeoVar2.add(objZze);
                                            while (iK2 < i2) {
                                                int i95 = i93;
                                                int iG17 = c2b.g(bArr7, iK2, a2bVar10);
                                                if (i24 != a2bVar10.a) {
                                                    i93 = i95;
                                                    i25 = i93;
                                                    a2bVar6 = a2bVar10;
                                                    unsafe6 = unsafe9;
                                                    objArr = objArr2;
                                                    this = bVar2;
                                                    i26 = i2;
                                                    iG = iK2;
                                                    bArr6 = bArr7;
                                                    if (iG != i25) {
                                                        i25 = i25;
                                                        a2bVar9 = a2bVar6;
                                                        bArr8 = bArr6;
                                                        iT = iT;
                                                        i37 = i6;
                                                        obj6 = obj2;
                                                        i2 = i26;
                                                        i39 = i4;
                                                        iG3 = iG;
                                                        i40 = i24;
                                                        bVar2 = this;
                                                        i38 = i73;
                                                    } else {
                                                        i25 = i25;
                                                        i5 = iG;
                                                        bArr2 = bArr6;
                                                        i7 = i24;
                                                        i38 = i73;
                                                        unsafe = unsafe6;
                                                        z = true;
                                                        a2bVar2 = a2bVar6;
                                                    }
                                                } else {
                                                    int i96 = i94;
                                                    Object objZze2 = jibVarY.zze();
                                                    iK2 = c2b.k(objZze2, jibVarY, bArr7, iG17, i2, i96, a2bVar);
                                                    i94 = i96;
                                                    a2bVar10 = a2bVar;
                                                    jibVarY.b(objZze2);
                                                    a2bVar10.c = objZze2;
                                                    zzeoVar2.add(objZze2);
                                                    i93 = i95;
                                                }
                                                break;
                                            }
                                            i25 = i93;
                                            a2bVar6 = a2bVar10;
                                            unsafe6 = unsafe9;
                                            objArr = objArr2;
                                            this = bVar2;
                                            i26 = i2;
                                            iG = iK2;
                                            bArr6 = bArr7;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        } else {
                                            i24 = i40 == true ? 1 : 0;
                                            bArr6 = bArr;
                                            a2bVar6 = a2bVar;
                                            unsafe6 = unsafe9;
                                            i25 = i42;
                                            this = bVar2;
                                            objArr = objArr2;
                                            i26 = i2;
                                            iG = i25;
                                            if (iG != i25) {
                                                i25 = i25;
                                                a2bVar9 = a2bVar6;
                                                bArr8 = bArr6;
                                                iT = iT;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i2 = i26;
                                                i39 = i4;
                                                iG3 = iG;
                                                i40 = i24;
                                                bVar2 = this;
                                                i38 = i73;
                                            } else {
                                                i25 = i25;
                                                i5 = iG;
                                                bArr2 = bArr6;
                                                i7 = i24;
                                                i38 = i73;
                                                unsafe = unsafe6;
                                                z = true;
                                                a2bVar2 = a2bVar6;
                                            }
                                        }
                                        break;
                                }
                            } else {
                                i19 = i38;
                                i4 = i39;
                                b<T> bVar3 = bVar2;
                                i20 = i40 == true ? 1 : 0;
                                i21 = i42;
                                bArr5 = bArr;
                                objArr = objArr2;
                                if (iU != 50) {
                                    unsafe = unsafe9;
                                    int i97 = iT + 2;
                                    long j3 = iArr[i97] & 1048575;
                                    switch (iU) {
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            iT = iT;
                                            i22 = i21;
                                            z = true;
                                            a2bVar2 = a2bVar;
                                            if (z3 == 1) {
                                                unsafe.putObject(obj2, j, Double.valueOf(Double.longBitsToDouble(c2b.n(i22, bArr2))));
                                                unsafe.putInt(obj2, j3, i6);
                                                iG3 = i22 + 8;
                                            } else {
                                                iG3 = i22;
                                            }
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 52:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            iT = iT;
                                            i22 = i21;
                                            a2bVar2 = a2bVar;
                                            if (z3 == 5) {
                                                iJ = i22 + 4;
                                                unsafe.putObject(obj2, j, Float.valueOf(Float.intBitsToFloat(c2b.b(i22, bArr2))));
                                                unsafe.putInt(obj2, j3, i6);
                                                iG3 = iJ;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            iT = iT;
                                            i22 = i21;
                                            a2bVar2 = a2bVar;
                                            if (z3 == 0) {
                                                iJ = c2b.j(bArr2, i22, a2bVar2);
                                                unsafe.putObject(obj2, j, Long.valueOf(a2bVar2.b));
                                                unsafe.putInt(obj2, j3, i6);
                                                iG3 = iJ;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                                        case RectListKt.BitOffsetForGesturable /* 62 */:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            iT = iT;
                                            i22 = i21;
                                            a2bVar2 = a2bVar;
                                            if (z3 == 0) {
                                                iJ = c2b.g(bArr2, i22, a2bVar2);
                                                unsafe.putObject(obj2, j, Integer.valueOf(a2bVar2.a));
                                                unsafe.putInt(obj2, j3, i6);
                                                iG3 = iJ;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            iT = iT;
                                            i22 = i21;
                                            z = true;
                                            a2bVar2 = a2bVar;
                                            if (z3 == 1) {
                                                iJ = i22 + 8;
                                                unsafe.putObject(obj2, j, Long.valueOf(c2b.n(i22, bArr2)));
                                                unsafe.putInt(obj2, j3, i6);
                                                iG3 = iJ;
                                                z = true;
                                            } else {
                                                iG3 = i22;
                                            }
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            iT = iT;
                                            i22 = i21;
                                            a2bVar2 = a2bVar;
                                            if (z3 == 5) {
                                                iJ = i22 + 4;
                                                unsafe.putObject(obj2, j, Integer.valueOf(c2b.b(i22, bArr2)));
                                                unsafe.putInt(obj2, j3, i6);
                                                iG3 = iJ;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 58:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            iT = iT;
                                            i22 = i21;
                                            a2bVar2 = a2bVar;
                                            if (z3 == 0) {
                                                iJ = c2b.j(bArr2, i22, a2bVar2);
                                                unsafe.putObject(obj2, j, Boolean.valueOf(a2bVar2.b != 0));
                                                unsafe.putInt(obj2, j3, i6);
                                                iG3 = iJ;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 59:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            i22 = i21;
                                            a2bVar2 = a2bVar;
                                            if (z3 == 2) {
                                                int iG18 = c2b.g(bArr2, i22, a2bVar2);
                                                int i98 = a2bVar2.a;
                                                if (i98 == 0) {
                                                    unsafe.putObject(obj2, j, "");
                                                    iT = iT;
                                                } else {
                                                    int i99 = iG18 + i98;
                                                    if ((i46 & 536870912) != 0 && wmb.a.a(0, iG18, i99, bArr2) != 0) {
                                                        nz0.c("Protocol message had invalid UTF-8.");
                                                        return 0;
                                                    }
                                                    unsafe.putObject(obj2, j, new String(bArr2, iG18, i98, zzep.a));
                                                    iG18 = i99;
                                                }
                                                unsafe.putInt(obj2, j3, i6);
                                                iG3 = iG18;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            iT = iT;
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 60:
                                            a2bVar5 = a2bVar;
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            i23 = i21;
                                            if (z3 == 2) {
                                                Object objA = bVar3.A(i6, iT, obj2);
                                                int iL2 = c2b.l(objA, bVar3.y(iT), bArr, i23, i2, a2bVar5);
                                                bArr2 = bArr;
                                                i22 = i23;
                                                a2bVar2 = a2bVar5;
                                                unsafe8.putObject(obj2, bVar3.v(iT) & 1048575, objA);
                                                qlb.h(i6, iArr[i97] & 1048575, obj2);
                                                iG3 = iL2;
                                                iT = iT;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            i22 = i23;
                                            a2bVar2 = a2bVar5;
                                            iT = iT;
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case RectListKt.BitOffsetForFocusable /* 61 */:
                                            a2bVar5 = a2bVar;
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            i23 = i21;
                                            if (z3 == 2) {
                                                iA2 = c2b.a(bArr2, i23, a2bVar5);
                                                unsafe.putObject(obj2, j, a2bVar5.c);
                                                unsafe.putInt(obj2, j3, i6);
                                                i22 = i23;
                                                a2bVar2 = a2bVar5;
                                                iG3 = iA2;
                                                iT = iT;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            i22 = i23;
                                            a2bVar2 = a2bVar5;
                                            iT = iT;
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 63:
                                            a2bVar5 = a2bVar;
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            i23 = i21;
                                            if (z3 == 0) {
                                                iA2 = c2b.g(bArr2, i23, a2bVar5);
                                                int i100 = a2bVar5.a;
                                                zzel zzelVarX3 = bVar3.x(iT);
                                                if (zzelVarX3 == null || zzelVarX3.zza(i100)) {
                                                    unsafe.putObject(obj2, j, Integer.valueOf(i100));
                                                    unsafe.putInt(obj2, j3, i6);
                                                } else {
                                                    r(obj2).b(i7 == true ? 1 : 0, Long.valueOf(i100));
                                                }
                                                i22 = i23;
                                                a2bVar2 = a2bVar5;
                                                iG3 = iA2;
                                                iT = iT;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            i22 = i23;
                                            a2bVar2 = a2bVar5;
                                            iT = iT;
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 66:
                                            a2bVar5 = a2bVar;
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            i23 = i21;
                                            if (z3 == 0) {
                                                iA2 = c2b.g(bArr2, i23, a2bVar5);
                                                unsafe.putObject(obj2, j, Integer.valueOf(zzdj.zzb(a2bVar5.a)));
                                                unsafe.putInt(obj2, j3, i6);
                                                i22 = i23;
                                                a2bVar2 = a2bVar5;
                                                iG3 = iA2;
                                                iT = iT;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            i22 = i23;
                                            a2bVar2 = a2bVar5;
                                            iT = iT;
                                            z = true;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                        case 67:
                                            bArr2 = bArr5;
                                            if (z3 == 0) {
                                                int iJ7 = c2b.j(bArr2, i21, a2bVar);
                                                i7 = i20 == true ? 1 : 0;
                                                unsafe.putObject(obj2, j, Long.valueOf(zzdj.zzc(a2bVar.b)));
                                                unsafe.putInt(obj2, j3, i6);
                                                i22 = i21;
                                                a2bVar2 = a2bVar;
                                                iG3 = iJ7;
                                                iT = iT;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            } else {
                                                i7 = i20 == true ? 1 : 0;
                                                iT = iT;
                                                i22 = i21;
                                                a2bVar2 = a2bVar;
                                                z = true;
                                                iG3 = i22;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            break;
                                        case 68:
                                            if (z3 == 3) {
                                                int i101 = ((i20 == true ? 1 : 0) & (-8)) | 4;
                                                Object objA2 = bVar3.A(i6, iT, obj2);
                                                int iK3 = c2b.k(objA2, bVar3.y(iT), bArr5, i21, i2, i101, a2bVar);
                                                bArr2 = bArr5;
                                                unsafe8.putObject(obj2, bVar3.v(iT) & 1048575, objA2);
                                                qlb.h(i6, iArr[i97] & 1048575, obj2);
                                                iG3 = iK3;
                                                i7 = i20 == true ? 1 : 0;
                                                iT = iT;
                                                i22 = i21;
                                                a2bVar2 = a2bVar;
                                                z = true;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            } else {
                                                bArr2 = bArr5;
                                                a2bVar2 = a2bVar;
                                                i7 = i20 == true ? 1 : 0;
                                                iT = iT;
                                                i22 = i21;
                                                z = true;
                                                iG3 = i22;
                                                if (iG3 != i22) {
                                                    bVar2 = this;
                                                    bArr8 = bArr2;
                                                    a2bVar9 = a2bVar2;
                                                    i37 = i6;
                                                    obj6 = obj2;
                                                    i40 = i7 == true ? 1 : 0;
                                                    iT = iT;
                                                    i38 = i19;
                                                    i39 = i4;
                                                    i2 = i2;
                                                } else {
                                                    i5 = iG3;
                                                    iT = iT;
                                                    i38 = i19;
                                                }
                                            }
                                            break;
                                        default:
                                            bArr2 = bArr5;
                                            i7 = i20 == true ? 1 : 0;
                                            iT = iT;
                                            i22 = i21;
                                            z = true;
                                            a2bVar2 = a2bVar;
                                            iG3 = i22;
                                            if (iG3 != i22) {
                                                bVar2 = this;
                                                bArr8 = bArr2;
                                                a2bVar9 = a2bVar2;
                                                i37 = i6;
                                                obj6 = obj2;
                                                i40 = i7 == true ? 1 : 0;
                                                iT = iT;
                                                i38 = i19;
                                                i39 = i4;
                                                i2 = i2;
                                            } else {
                                                i5 = iG3;
                                                iT = iT;
                                                i38 = i19;
                                            }
                                            break;
                                    }
                                } else {
                                    if (z3 == 2) {
                                        int i102 = iT / 3;
                                        Object obj13 = objArr[i102 + i102];
                                        zzfg zzfgVar = (zzfg) unsafe9.getObject(obj2, j);
                                        if (!zzfgVar.zze()) {
                                            zzfg zzfgVarZzb = zzfg.zza().zzb();
                                            if (!zzfgVar.isEmpty()) {
                                                (!zzfgVarZzb.zze() ? zzfgVarZzb.zzb() : zzfgVarZzb).zzd(zzfgVar);
                                            }
                                            unsafe9.putObject(obj2, j, zzfgVarZzb);
                                        }
                                        throw null;
                                    }
                                    unsafe = unsafe9;
                                    i5 = i21;
                                    bArr2 = bArr5;
                                    i7 = i20;
                                    i38 = i19;
                                    z = true;
                                    a2bVar2 = a2bVar;
                                }
                            }
                        } else if (z3 == 2) {
                            zzeo zzeoVarZzd2 = (zzeo) unsafe9.getObject(obj12, j);
                            if (!zzeoVarZzd2.zzc()) {
                                int size3 = zzeoVarZzd2.size();
                                zzeoVarZzd2 = zzeoVarZzd2.zzd(size3 != 0 ? size3 + size3 : 10);
                                unsafe9.putObject(obj12, j, zzeoVarZzd2);
                            }
                            bArr8 = bArr;
                            iG3 = c2b.c(bVar2.y(iT), i40 == true ? 1 : 0, bArr8, i42, i2, zzeoVarZzd2, a2bVar);
                            a2bVar9 = a2bVar;
                            iT = iT;
                            i37 = i6;
                            obj6 = obj;
                            i40 = i40 == true ? 1 : 0;
                            i2 = i2;
                        } else {
                            obj2 = obj12;
                            i19 = i38;
                            i4 = i39;
                            unsafe = unsafe9;
                            i20 = i40 == true ? 1 : 0;
                            i21 = i42;
                            bArr5 = bArr;
                            objArr = objArr2;
                            i5 = i21;
                            bArr2 = bArr5;
                            i7 = i20;
                            i38 = i19;
                            z = true;
                            a2bVar2 = a2bVar;
                        }
                    }
                } else {
                    a2bVar2 = a2bVar;
                    i5 = i42;
                    i4 = i39;
                    iArr = iArr;
                    unsafe = unsafe7;
                    objArr = objArr2;
                    z = true;
                    iT = 0;
                    i6 = i43;
                    i7 = i40 == true ? 1 : 0;
                    obj2 = obj6;
                    bArr2 = bArr;
                }
                if (i7 != i3 || i3 == 0) {
                    if (this.f) {
                        zzds zzdsVar = a2bVar2.d;
                        zzds zzdsVar2 = zzds.b;
                        lgb lgbVar = lgb.c;
                        if (zzdsVar != zzds.b) {
                            zzef zzefVarZzb = zzdsVar.zzb(this.e, i6);
                            if (zzefVarZzb != null) {
                                int i103 = i5;
                                a2b a2bVar11 = a2bVar2;
                                byte[] bArr9 = bArr2;
                                zzed zzedVar = (zzed) obj2;
                                b8b b8bVarClone = zzedVar.zzb;
                                if (b8bVarClone.b) {
                                    b8bVarClone = b8bVarClone.clone();
                                    zzedVar.zzb = b8bVarClone;
                                }
                                s9b s9bVar = zzefVarZzb.b;
                                zzfm zzfmVar = zzefVarZzb.a;
                                zzhf zzhfVar = s9bVar.c;
                                if (zzhfVar == zzhf.zzn) {
                                    c2b.g(bArr9, i103, a2bVar11);
                                    throw null;
                                }
                                switch (zzhfVar.ordinal()) {
                                    case 0:
                                        iF = i103 + 8;
                                        objValueOf = Double.valueOf(Double.longBitsToDouble(c2b.n(i103, bArr9)));
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 1:
                                        iF = i103 + 4;
                                        objValueOf = Float.valueOf(Float.intBitsToFloat(c2b.b(i103, bArr9)));
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 2:
                                    case 3:
                                        iF = c2b.j(bArr9, i103, a2bVar11);
                                        objValueOf = Long.valueOf(a2bVar11.b);
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 4:
                                    case 12:
                                        iF = c2b.g(bArr9, i103, a2bVar11);
                                        objValueOf = Integer.valueOf(a2bVar11.a);
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 5:
                                    case 15:
                                        iF = i103 + 8;
                                        objValueOf = Long.valueOf(c2b.n(i103, bArr9));
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 6:
                                    case 14:
                                        iF = i103 + 4;
                                        objValueOf = Integer.valueOf(c2b.b(i103, bArr9));
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 7:
                                        iF = c2b.j(bArr9, i103, a2bVar11);
                                        if (a2bVar11.b == 0) {
                                            z = false;
                                        }
                                        objValueOf = Boolean.valueOf(z);
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 8:
                                        iF = c2b.e(bArr9, i103, a2bVar11);
                                        obj3 = a2bVar11.c;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 9:
                                        int i104 = (i6 << 3) | 4;
                                        jib jibVarA = lgb.c.a(zzfmVar.getClass());
                                        Object objZze3 = b8bVarClone.a.get(s9bVar);
                                        if (objZze3 instanceof zzew) {
                                            throw null;
                                        }
                                        if (objZze3 == null) {
                                            objZze3 = jibVarA.zze();
                                            b8bVarClone.e(s9bVar, objZze3);
                                        }
                                        iF = c2b.k(objZze3, jibVarA, bArr, i103, i2, i104, a2bVar);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                        break;
                                    case 10:
                                        jib jibVarA2 = lgb.c.a(zzfmVar.getClass());
                                        Object objZze4 = b8bVarClone.a.get(s9bVar);
                                        if (objZze4 instanceof zzew) {
                                            throw null;
                                        }
                                        if (objZze4 == null) {
                                            objZze4 = jibVarA2.zze();
                                            b8bVarClone.e(s9bVar, objZze4);
                                        }
                                        iF = c2b.l(objZze4, jibVarA2, bArr9, i103, i2, a2bVar11);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                        break;
                                    case 11:
                                        iF = c2b.a(bArr9, i103, a2bVar11);
                                        obj3 = a2bVar11.c;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 13:
                                        ah.f("Shouldn't reach here.");
                                        return 0;
                                    case 16:
                                        iF = c2b.g(bArr9, i103, a2bVar11);
                                        objValueOf = Integer.valueOf(zzdj.zzb(a2bVar11.a));
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    case 17:
                                        iF = c2b.j(bArr9, i103, a2bVar11);
                                        objValueOf = Long.valueOf(zzdj.zzc(a2bVar11.b));
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                    default:
                                        iF = i103;
                                        obj3 = objValueOf;
                                        b8bVarClone.e(s9bVar, obj3);
                                        i2 = i2;
                                        i8 = i7;
                                        break;
                                }
                            } else {
                                i8 = i7;
                                iF = c2b.f(i8 == true ? 1 : 0, bArr2, i5, i2, r(obj2), a2bVar);
                                i2 = i2;
                            }
                        } else {
                            i8 = i7;
                            iF = c2b.f(i8 == true ? 1 : 0, bArr2, i5, i2, r(obj2), a2bVar2);
                            i2 = i2;
                        }
                    } else {
                        i8 = i7;
                        iF = c2b.f(i8 == true ? 1 : 0, bArr2, i5, i2, r(obj2), a2bVar2);
                        i2 = i2;
                    }
                    bArr8 = bArr;
                    a2bVar9 = a2bVar;
                    iT = iT;
                    i37 = i6;
                    obj6 = obj2;
                    i39 = i4;
                    i40 = i8;
                    iG3 = iF;
                    bVar2 = this;
                } else {
                    bVar = this;
                    i2 = i2;
                    iG3 = i5;
                    obj6 = obj2;
                    i40 = i7;
                }
            } else {
                i3 = i3;
                i4 = i39;
                iArr = iArr;
                unsafe = unsafe7;
                objArr = objArr2;
                bVar = bVar2;
            }
        }
        int i105 = i4;
        if (i38 != 1048575) {
            unsafe.putInt(obj6, i38, i105);
        }
        for (int i106 = bVar.h; i106 < bVar.i; i106++) {
            int i107 = bVar.g[i106];
            int i108 = iArr[i107];
            Object objG = qlb.g(obj6, bVar.v(i107) & 1048575);
            if (objG != null && bVar.x(i107) != null) {
                int i109 = i107 / 3;
                throw null;
            }
        }
        if (i3 == 0) {
            if (iG3 != i2) {
                nz0.c("Failed to parse the message.");
                return 0;
            }
        } else if (iG3 > i2 || i40 != i3) {
            nz0.c("Failed to parse the message.");
            return 0;
        }
        return iG3;
    }

    public final int t(int i, int i2) {
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

    public final int v(int i) {
        return this.a[i + 1];
    }

    public final zzel x(int i) {
        int i2 = i / 3;
        return (zzel) this.b[i2 + i2 + 1];
    }

    public final jib y(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        jib jibVar = (jib) objArr[i3];
        if (jibVar != null) {
            return jibVar;
        }
        jib jibVarA = lgb.c.a((Class) objArr[i3 + 1]);
        objArr[i3] = jibVarA;
        return jibVarA;
    }

    public final Object z(int i, Object obj) {
        jib jibVarY = y(i);
        int iV = v(i) & 1048575;
        if (!m(i, obj)) {
            return jibVarY.zze();
        }
        Object object = m.getObject(obj, iV);
        if (o(object)) {
            return object;
        }
        Object objZze = jibVarY.zze();
        if (object != null) {
            jibVarY.c(objZze, object);
        }
        return objZze;
    }

    @Override // defpackage.jib
    public final Object zze() {
        return (zzeh) ((zzeh) this.e).j(4, null);
    }
}
