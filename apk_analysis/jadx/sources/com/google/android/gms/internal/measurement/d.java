package com.google.android.gms.internal.measurement;

import androidx.compose.ui.spatial.RectListKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.bra;
import defpackage.dq;
import defpackage.dta;
import defpackage.era;
import defpackage.eta;
import defpackage.fe0;
import defpackage.fg;
import defpackage.gqa;
import defpackage.gra;
import defpackage.gta;
import defpackage.hqa;
import defpackage.ksa;
import defpackage.kv2;
import defpackage.me0;
import defpackage.mg;
import defpackage.mi2;
import defpackage.mqa;
import defpackage.n7;
import defpackage.nsa;
import defpackage.osa;
import defpackage.pqa;
import defpackage.psa;
import defpackage.qqa;
import defpackage.ti0;
import defpackage.wra;
import defpackage.xra;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class d<T> implements nsa<T> {
    public static final int[] m = new int[0];
    public static final Unsafe n = eta.k();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final zzafc e;
    public final boolean f;
    public final boolean g;
    public final int[] h;
    public final int i;
    public final int j;
    public final g k;
    public final era l;

    public d(int[] iArr, Object[] objArr, int i, int i2, zzafc zzafcVar, int[] iArr2, int i3, int i4, g gVar, b bVar) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = zzafcVar instanceof zzadu;
        boolean z = false;
        if (bVar != null && (zzafcVar instanceof zzadr)) {
            z = true;
        }
        this.f = z;
        this.h = iArr2;
        this.i = i3;
        this.j = i4;
        this.k = gVar;
        this.l = bVar;
        this.e = zzafcVar;
    }

    public static int k(int i) {
        return (i >>> 20) & 255;
    }

    public static boolean l(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzadu) {
            return ((zzadu) obj).c();
        }
        return true;
    }

    public static void m(Object obj) {
        if (l(obj)) {
            return;
        }
        fg.c("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    public static int n(Object obj, long j) {
        return ((Integer) eta.h(obj, j)).intValue();
    }

    public static long o(Object obj, long j) {
        return ((Long) eta.h(obj, j)).longValue();
    }

    public static final int w(byte[] bArr, int i, int i2, zzagm zzagmVar, Class cls, gqa gqaVar) {
        zzagm zzagmVar2 = zzagm.zza;
        switch (zzagmVar.ordinal()) {
            case 0:
                int i3 = i + 8;
                gqaVar.c = Double.valueOf(Double.longBitsToDouble(hqa.e(i, bArr)));
                return i3;
            case 1:
                int i4 = i + 4;
                gqaVar.c = Float.valueOf(Float.intBitsToFloat(hqa.d(i, bArr)));
                return i4;
            case 2:
            case 3:
                int iC = hqa.c(bArr, i, gqaVar);
                gqaVar.c = Long.valueOf(gqaVar.b);
                return iC;
            case 4:
            case 12:
            case 13:
                int iA = hqa.a(bArr, i, gqaVar);
                gqaVar.c = Integer.valueOf(gqaVar.a);
                return iA;
            case 5:
            case 15:
                int i5 = i + 8;
                gqaVar.c = Long.valueOf(hqa.e(i, bArr));
                return i5;
            case 6:
            case 14:
                int i6 = i + 4;
                gqaVar.c = Integer.valueOf(hqa.d(i, bArr));
                return i6;
            case 7:
                int iC2 = hqa.c(bArr, i, gqaVar);
                gqaVar.c = Boolean.valueOf(gqaVar.b != 0);
                return iC2;
            case 8:
                return hqa.f(bArr, i, gqaVar);
            case 9:
            default:
                n7.g("unsupported field type.");
                return 0;
            case 10:
                return hqa.h(ksa.c.a(cls), bArr, i, i2, gqaVar);
            case 11:
                return hqa.g(bArr, i, gqaVar);
            case 16:
                int iA2 = hqa.a(bArr, i, gqaVar);
                gqaVar.c = Integer.valueOf(zzacv.zzR(gqaVar.a));
                return iA2;
            case 17:
                int iC3 = hqa.c(bArr, i, gqaVar);
                gqaVar.c = Long.valueOf(zzacv.zzS(gqaVar.b));
                return iC3;
        }
    }

    public static zzaga x(Object obj) {
        zzadu zzaduVar = (zzadu) obj;
        zzaga zzagaVar = zzaduVar.zzc;
        if (zzagaVar != zzaga.zza()) {
            return zzagaVar;
        }
        zzaga zzagaVarA = zzaga.a();
        zzaduVar.zzc = zzagaVarA;
        return zzagaVarA;
    }

    public static Field z(Class cls, String str) {
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
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + name.length() + 29 + String.valueOf(string).length());
            kv2.c(sb, "Field ", str, " for ", name);
            mg.e(me0.d(sb, " not found. Known fields are ", string), e);
            return null;
        }
    }

    public final void A(int i, Object obj, Object obj2) {
        if (r(i, obj2)) {
            long j = j(i) & 1048575;
            Unsafe unsafe = n;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                int i2 = this.a[i];
                String string = obj2.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 38 + string.length());
                sb.append("Source subfield ");
                sb.append(i2);
                sb.append(" is present but null: ");
                sb.append(string);
                throw new IllegalStateException(sb.toString());
            }
            nsa nsaVarC = C(i);
            if (!r(i, obj)) {
                if (l(object)) {
                    Object objZza = nsaVarC.zza();
                    nsaVarC.f(objZza, object);
                    unsafe.putObject(obj, j, objZza);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                s(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!l(object2)) {
                Object objZza2 = nsaVarC.zza();
                nsaVarC.f(objZza2, object2);
                unsafe.putObject(obj, j, objZza2);
                object2 = objZza2;
            }
            nsaVarC.f(object2, object);
        }
    }

    public final void B(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (t(i2, i, obj2)) {
            long j = j(i) & 1048575;
            Unsafe unsafe = n;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                int i3 = iArr[i];
                String string = obj2.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 38 + string.length());
                sb.append("Source subfield ");
                sb.append(i3);
                sb.append(" is present but null: ");
                sb.append(string);
                throw new IllegalStateException(sb.toString());
            }
            nsa nsaVarC = C(i);
            if (!t(i2, i, obj)) {
                if (l(object)) {
                    Object objZza = nsaVarC.zza();
                    nsaVarC.f(objZza, object);
                    unsafe.putObject(obj, j, objZza);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                u(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!l(object2)) {
                Object objZza2 = nsaVarC.zza();
                nsaVarC.f(objZza2, object2);
                unsafe.putObject(obj, j, objZza2);
                object2 = objZza2;
            }
            nsaVarC.f(object2, object);
        }
    }

    public final nsa C(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        nsa nsaVar = (nsa) objArr[i3];
        if (nsaVar != null) {
            return nsaVar;
        }
        nsa nsaVarA = ksa.c.a((Class) objArr[i3 + 1]);
        objArr[i3] = nsaVarA;
        return nsaVarA;
    }

    public final Object D(int i) {
        int i2 = i / 3;
        return this.b[i2 + i2];
    }

    public final zzadz E(int i) {
        int i2 = i / 3;
        return (zzadz) this.b[i2 + i2 + 1];
    }

    public final Object F(int i, Object obj) {
        nsa nsaVarC = C(i);
        int iJ = j(i) & 1048575;
        if (!r(i, obj)) {
            return nsaVarC.zza();
        }
        Object object = n.getObject(obj, iJ);
        if (l(object)) {
            return object;
        }
        Object objZza = nsaVarC.zza();
        if (object != null) {
            nsaVarC.f(objZza, object);
        }
        return objZza;
    }

    public final void G(int i, Object obj, Object obj2) {
        n.putObject(obj, j(i) & 1048575, obj2);
        s(i, obj);
    }

    public final Object H(int i, int i2, Object obj) {
        nsa nsaVarC = C(i2);
        if (!t(i, i2, obj)) {
            return nsaVarC.zza();
        }
        Object object = n.getObject(obj, j(i2) & 1048575);
        if (l(object)) {
            return object;
        }
        Object objZza = nsaVarC.zza();
        if (object != null) {
            nsaVarC.f(objZza, object);
        }
        return objZza;
    }

    public final void I(int i, int i2, Object obj, Object obj2) {
        n.putObject(obj, j(i2) & 1048575, obj2);
        u(i, i2, obj);
    }

    public final Object J(Object obj, int i, Object obj2, g gVar, Object obj3) {
        zzadz zzadzVarE;
        int i2 = this.a[i];
        Object objH = eta.h(obj, j(i) & 1048575);
        if (objH == null || (zzadzVarE = E(i)) == null) {
            return obj2;
        }
        wra wraVar = ((zzaev) D(i)).a;
        zzagm zzagmVar = wraVar.b;
        zzagm zzagmVar2 = wraVar.a;
        Iterator it = ((zzaew) objH).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!zzadzVarE.zza(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    gVar.getClass();
                    obj2 = g.a(obj3);
                }
                int iF = gra.f(zzagmVar, 2, entry.getValue()) + gra.f(zzagmVar2, 1, entry.getKey());
                zzacr zzacrVar = zzacr.zza;
                byte[] bArr = new byte[iF];
                boolean z = zzada.b;
                qqa qqaVar = new qqa(bArr, iF);
                try {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    gra.e(qqaVar, zzagmVar2, 1, key);
                    gra.e(qqaVar, zzagmVar, 2, value);
                    qqaVar.zzH();
                    mqa mqaVar = new mqa(bArr);
                    gVar.getClass();
                    ((zzaga) obj2).b((i2 << 3) | 2, mqaVar);
                    it.remove();
                } catch (IOException e) {
                    ti0.f(e);
                    return null;
                }
            }
        }
        return obj2;
    }

    public final void K(int i, Object obj, pqa pqaVar) throws zzaeg {
        zzacv zzacvVar = pqaVar.a;
        long j = i & 1048575;
        if ((536870912 & i) != 0) {
            pqaVar.q(2);
            eta.i(j, obj, zzacvVar.zzm());
        } else if (!this.g) {
            eta.i(j, obj, pqaVar.y());
        } else {
            pqaVar.q(2);
            eta.i(j, obj, zzacvVar.zzl());
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0070  */
    /* JADX WARN: Code duplicated, block: B:40:0x007b A[SYNTHETIC] */
    @Override // defpackage.nsa
    public final void a(Object obj) {
        if (!l(obj)) {
            return;
        }
        int i = 0;
        if (obj instanceof zzadu) {
            zzadu zzaduVar = (zzadu) obj;
            zzaduVar.g();
            zzaduVar.zza = 0;
            zzaduVar.d();
        }
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                this.k.getClass();
                ((zzadu) obj).zzc.zzd();
                if (this.f) {
                    this.l.a(obj);
                    return;
                }
                return;
            }
            int iJ = j(i);
            int i2 = 1048575 & iJ;
            int iK = k(iJ);
            long j = i2;
            Unsafe unsafe = n;
            if (iK != 9) {
                if (iK != 60 && iK != 68) {
                    switch (iK) {
                        case 17:
                            if (r(i, obj)) {
                                C(i).a(unsafe.getObject(obj, j));
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
                            ((zzaef) eta.h(obj, j)).zzb();
                            break;
                        case 50:
                            Object object = unsafe.getObject(obj, j);
                            if (object != null) {
                                ((zzaew) object).zzd();
                                unsafe.putObject(obj, j, object);
                            }
                            break;
                    }
                } else if (t(iArr[i], i, obj)) {
                    C(i).a(unsafe.getObject(obj, j));
                }
            } else if (r(i, obj)) {
                C(i).a(unsafe.getObject(obj, j));
            }
            i += 3;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 22161. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // defpackage.nsa
    public final void b(java.lang.Object r22, defpackage.pqa r23, com.google.android.gms.internal.measurement.zzadf r24) {
        /*
            Method dump skipped, instruction units count: 2216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.d.b(java.lang.Object, pqa, com.google.android.gms.internal.measurement.zzadf):void");
    }

    @Override // defpackage.nsa
    public final void c(Object obj, byte[] bArr, int i, int i2, gqa gqaVar) {
        y(obj, bArr, i, i2, 0, gqaVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    @Override // defpackage.nsa
    public final void d(Object obj, bra braVar) {
        Map.Entry entry;
        boolean z;
        int i;
        boolean z2;
        int i2;
        d<T> dVar = this;
        zzada zzadaVar = braVar.a;
        if (dVar.f) {
            gra graVar = ((zzadr) obj).zzb;
            if (graVar.a.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) graVar.b().next();
            }
        } else {
            entry = null;
        }
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = dVar.a;
            if (i5 >= iArr.length) {
                if (entry == null) {
                    ((zzadu) obj).zzc.zzg(braVar);
                    return;
                } else {
                    throw null;
                }
            }
            int iJ = dVar.j(i5);
            int iK = k(iJ);
            int i7 = iArr[i5];
            Unsafe unsafe = n;
            if (iK <= 17) {
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
            long j = iJ & i3;
            switch (iK) {
                case 0:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzg(i7, Double.doubleToRawLongBits(eta.c.k(obj, j)));
                    }
                    break;
                case 1:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zze(i7, Float.floatToRawIntBits(eta.c.f(obj, j)));
                    }
                    break;
                case 2:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzf(i7, unsafe.getLong(obj, j));
                    }
                    break;
                case 3:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzf(i7, unsafe.getLong(obj, j));
                    }
                    break;
                case 4:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzc(i7, unsafe.getInt(obj, j));
                    }
                    break;
                case 5:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzg(i7, unsafe.getLong(obj, j));
                    }
                    break;
                case 6:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zze(i7, unsafe.getInt(obj, j));
                    }
                    break;
                case 7:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzh(i7, eta.c.d(obj, j));
                    }
                    break;
                case 8:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            zzadaVar.zzi(i7, (String) object);
                        } else {
                            zzadaVar.zzj(i7, (zzacr) object);
                        }
                    }
                    break;
                case 9:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        braVar.a(i7, unsafe.getObject(obj, j), dVar.C(i5));
                    }
                    break;
                case 10:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzj(i7, (zzacr) unsafe.getObject(obj, j));
                    }
                    break;
                case 11:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzd(i7, unsafe.getInt(obj, j));
                    }
                    break;
                case 12:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzc(i7, unsafe.getInt(obj, j));
                    }
                    break;
                case 13:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zze(i7, unsafe.getInt(obj, j));
                    }
                    break;
                case 14:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        zzadaVar.zzg(i7, unsafe.getLong(obj, j));
                    }
                    break;
                case 15:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        int i10 = unsafe.getInt(obj, j);
                        zzadaVar.zzd(i7, (i10 >> 31) ^ (i10 + i10));
                    }
                    break;
                case 16:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        long j2 = unsafe.getLong(obj, j);
                        zzadaVar.zzf(i7, (j2 >> 63) ^ (j2 + j2));
                    }
                    break;
                case 17:
                    if (dVar.q(obj, i5, i4, i6, i)) {
                        Object object2 = unsafe.getObject(obj, j);
                        zzadaVar.zzb(i7, 3);
                        dVar.C(i5).d((zzacb) object2, braVar);
                        zzadaVar.zzb(i7, 4);
                    }
                    break;
                case 18:
                    z2 = false;
                    f.d(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 19:
                    z2 = false;
                    f.e(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 20:
                    z2 = false;
                    f.f(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 21:
                    z2 = false;
                    f.g(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 22:
                    z2 = false;
                    f.k(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 23:
                    z2 = false;
                    f.i(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 24:
                    z2 = false;
                    f.n(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 25:
                    z2 = false;
                    f.q(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 26:
                    i2 = i4;
                    int i11 = iArr[i5];
                    List list = (List) unsafe.getObject(obj, j);
                    g gVar = f.a;
                    if (list != null && !list.isEmpty()) {
                        if (list instanceof zzaen) {
                            zzaen zzaenVar = (zzaen) list;
                            for (int i12 = 0; i12 < list.size(); i12++) {
                                Object objZzc = zzaenVar.zzc();
                                if (objZzc instanceof String) {
                                    zzadaVar.zzi(i11, (String) objZzc);
                                } else {
                                    zzadaVar.zzj(i11, (zzacr) objZzc);
                                }
                            }
                        } else {
                            for (int i13 = 0; i13 < list.size(); i13++) {
                                zzadaVar.zzi(i11, (String) list.get(i13));
                            }
                        }
                    }
                    i4 = i2;
                    break;
                case 27:
                    i2 = i4;
                    int i14 = iArr[i5];
                    List list2 = (List) unsafe.getObject(obj, j);
                    nsa nsaVarC = dVar.C(i5);
                    g gVar2 = f.a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i15 = 0; i15 < list2.size(); i15++) {
                            braVar.a(i14, list2.get(i15), nsaVarC);
                        }
                    }
                    i4 = i2;
                    break;
                case 28:
                    i2 = i4;
                    int i16 = iArr[i5];
                    List list3 = (List) unsafe.getObject(obj, j);
                    g gVar3 = f.a;
                    if (list3 != null && !list3.isEmpty()) {
                        for (int i17 = 0; i17 < list3.size(); i17++) {
                            zzadaVar.zzj(i16, (zzacr) list3.get(i17));
                        }
                    }
                    i4 = i2;
                    break;
                case 29:
                    z2 = false;
                    f.l(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 30:
                    z2 = false;
                    f.p(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 31:
                    z2 = false;
                    f.o(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 32:
                    z2 = false;
                    f.j(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 33:
                    z2 = false;
                    f.m(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 34:
                    z2 = false;
                    f.h(iArr[i5], (List) unsafe.getObject(obj, j), braVar, false);
                    i4 = i4;
                    break;
                case 35:
                    i2 = i4;
                    f.d(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 36:
                    i2 = i4;
                    f.e(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 37:
                    i2 = i4;
                    f.f(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 38:
                    i2 = i4;
                    f.g(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 39:
                    i2 = i4;
                    f.k(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 40:
                    i2 = i4;
                    f.i(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 41:
                    i2 = i4;
                    f.n(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 42:
                    i2 = i4;
                    f.q(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 43:
                    i2 = i4;
                    f.l(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 44:
                    i2 = i4;
                    f.p(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 45:
                    i2 = i4;
                    f.o(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 46:
                    i2 = i4;
                    f.j(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 47:
                    i2 = i4;
                    f.m(iArr[i5], (List) unsafe.getObject(obj, j), braVar, z);
                    i4 = i2;
                    break;
                case 48:
                    i2 = i4;
                    f.h(iArr[i5], (List) unsafe.getObject(obj, j), braVar, true);
                    i4 = i2;
                    break;
                case 49:
                    i2 = i4;
                    int i18 = iArr[i5];
                    List list4 = (List) unsafe.getObject(obj, j);
                    nsa nsaVarC2 = dVar.C(i5);
                    g gVar4 = f.a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i19 = 0; i19 < list4.size(); i19++) {
                            zzacb zzacbVar = (zzacb) list4.get(i19);
                            zzadaVar.zzb(i18, 3);
                            nsaVarC2.d(zzacbVar, braVar);
                            zzadaVar.zzb(i18, 4);
                        }
                    }
                    i4 = i2;
                    break;
                case 50:
                    Object object3 = unsafe.getObject(obj, j);
                    if (object3 != null) {
                        wra wraVar = ((zzaev) dVar.D(i5)).a;
                        zzagm zzagmVar = wraVar.b;
                        zzagm zzagmVar2 = wraVar.a;
                        Iterator it = ((zzaew) object3).entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry2 = (Map.Entry) it.next();
                            zzadaVar.zzb(i7, 2);
                            int i20 = i4;
                            boolean z3 = z;
                            zzadaVar.zzr(gra.f(zzagmVar, 2, entry2.getValue()) + gra.f(zzagmVar2, z3 ? 1 : 0, entry2.getKey()));
                            Object key = entry2.getKey();
                            Object value = entry2.getValue();
                            gra.e(zzadaVar, zzagmVar2, z3 ? 1 : 0, key);
                            gra.e(zzadaVar, zzagmVar, 2, value);
                            i4 = i20;
                            z = true;
                        }
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzg(i7, Double.doubleToRawLongBits(((Double) eta.h(obj, j)).doubleValue()));
                    }
                    break;
                case 52:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zze(i7, Float.floatToRawIntBits(((Float) eta.h(obj, j)).floatValue()));
                    }
                    break;
                case 53:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzf(i7, o(obj, j));
                    }
                    break;
                case 54:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzf(i7, o(obj, j));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzc(i7, n(obj, j));
                    }
                    break;
                case 56:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzg(i7, o(obj, j));
                    }
                    break;
                case 57:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zze(i7, n(obj, j));
                    }
                    break;
                case 58:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzh(i7, ((Boolean) eta.h(obj, j)).booleanValue());
                    }
                    break;
                case 59:
                    if (dVar.t(i7, i5, obj)) {
                        Object object4 = unsafe.getObject(obj, j);
                        if (object4 instanceof String) {
                            zzadaVar.zzi(i7, (String) object4);
                        } else {
                            zzadaVar.zzj(i7, (zzacr) object4);
                        }
                    }
                    break;
                case 60:
                    if (dVar.t(i7, i5, obj)) {
                        braVar.a(i7, unsafe.getObject(obj, j), dVar.C(i5));
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzj(i7, (zzacr) unsafe.getObject(obj, j));
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzd(i7, n(obj, j));
                    }
                    break;
                case 63:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzc(i7, n(obj, j));
                    }
                    break;
                case 64:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zze(i7, n(obj, j));
                    }
                    break;
                case 65:
                    if (dVar.t(i7, i5, obj)) {
                        zzadaVar.zzg(i7, o(obj, j));
                    }
                    break;
                case 66:
                    if (dVar.t(i7, i5, obj)) {
                        int iN = n(obj, j);
                        zzadaVar.zzd(i7, (iN >> 31) ^ (iN + iN));
                    }
                    break;
                case 67:
                    if (dVar.t(i7, i5, obj)) {
                        long jO = o(obj, j);
                        zzadaVar.zzf(i7, (jO >> 63) ^ (jO + jO));
                    }
                    break;
                case 68:
                    if (dVar.t(i7, i5, obj)) {
                        Object object5 = unsafe.getObject(obj, j);
                        zzadaVar.zzb(i7, 3);
                        dVar.C(i5).d((zzacb) object5, braVar);
                        zzadaVar.zzb(i7, 4);
                    }
                    break;
                default:
                    break;
            }
            i5 += 3;
            i3 = 1048575;
            dVar = this;
        }
    }

    @Override // defpackage.nsa
    public final int e(zzadu zzaduVar) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int i3;
        int iHashCode = 0;
        for (int i4 = 0; i4 < this.a.length; i4 += 3) {
            int iJ = j(i4);
            int iK = k(iJ);
            if (iK <= 50 || iK >= 69) {
                long j = iJ & 1048575;
                int iHashCode2 = 37;
                switch (iK) {
                    case 0:
                        i = iHashCode * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(eta.c.k(zzaduVar, j));
                        byte[] bArr = zzaed.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 1:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = Float.floatToIntBits(eta.c.f(zzaduVar, j));
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 2:
                        i = iHashCode * 53;
                        jDoubleToLongBits = eta.f(zzaduVar, j);
                        byte[] bArr2 = zzaed.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 3:
                        i = iHashCode * 53;
                        jDoubleToLongBits = eta.f(zzaduVar, j);
                        byte[] bArr3 = zzaed.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 4:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = eta.d(zzaduVar, j);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 5:
                        i = iHashCode * 53;
                        jDoubleToLongBits = eta.f(zzaduVar, j);
                        byte[] bArr4 = zzaed.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 6:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = eta.d(zzaduVar, j);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 7:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = zzaed.zza(eta.c.d(zzaduVar, j));
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 8:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = ((String) eta.h(zzaduVar, j)).hashCode();
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 9:
                        i3 = iHashCode * 53;
                        Object objH = eta.h(zzaduVar, j);
                        if (objH != null) {
                            iHashCode2 = objH.hashCode();
                        }
                        iHashCode = i3 + iHashCode2;
                        break;
                    case 10:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = eta.h(zzaduVar, j).hashCode();
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 11:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = eta.d(zzaduVar, j);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 12:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = eta.d(zzaduVar, j);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 13:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = eta.d(zzaduVar, j);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 14:
                        i = iHashCode * 53;
                        jDoubleToLongBits = eta.f(zzaduVar, j);
                        byte[] bArr5 = zzaed.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 15:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = eta.d(zzaduVar, j);
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 16:
                        i = iHashCode * 53;
                        jDoubleToLongBits = eta.f(zzaduVar, j);
                        byte[] bArr6 = zzaed.zza;
                        iHashCode = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                        break;
                    case 17:
                        i3 = iHashCode * 53;
                        Object objH2 = eta.h(zzaduVar, j);
                        if (objH2 != null) {
                            iHashCode2 = objH2.hashCode();
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
                        iFloatToIntBits = eta.h(zzaduVar, j).hashCode();
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                    case 50:
                        i2 = iHashCode * 53;
                        iFloatToIntBits = eta.h(zzaduVar, j).hashCode();
                        iHashCode = i2 + iFloatToIntBits;
                        break;
                }
            }
        }
        int i5 = this.j;
        while (true) {
            int[] iArr = this.h;
            if (i5 >= iArr.length) {
                int iHashCode3 = zzaduVar.zzc.hashCode() + (iHashCode * 53);
                if (!this.f) {
                    return iHashCode3;
                }
                return ((zzadr) zzaduVar).zzb.a.hashCode() + (iHashCode3 * 53);
            }
            int i6 = iArr[i5];
            if (!t(0, i6, zzaduVar)) {
                iHashCode = eta.h(zzaduVar, j(i6) & 1048575).hashCode() + (iHashCode * 53);
            }
            i5++;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    @Override // defpackage.nsa
    public final void f(Object obj, Object obj2) {
        Object obj3;
        m(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                Object obj4 = obj;
                f.b(obj4, obj2);
                if (!this.f || ((zzadr) obj2).zzb.a.isEmpty()) {
                    return;
                }
                throw null;
            }
            int iJ = j(i);
            int i2 = 1048575 & iJ;
            int iK = k(iJ);
            int i3 = iArr[i];
            long j = i2;
            switch (iK) {
                case 0:
                    if (!r(i, obj2)) {
                        obj3 = obj;
                    } else {
                        dta dtaVar = eta.c;
                        obj3 = obj;
                        dtaVar.n(obj3, j, dtaVar.k(obj2, j));
                        s(i, obj3);
                    }
                    break;
                case 1:
                    if (r(i, obj2)) {
                        dta dtaVar2 = eta.c;
                        dtaVar2.j(obj, j, dtaVar2.f(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (r(i, obj2)) {
                        eta.g(obj, j, eta.f(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (r(i, obj2)) {
                        eta.g(obj, j, eta.f(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (r(i, obj2)) {
                        eta.e(eta.d(obj2, j), j, obj);
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (r(i, obj2)) {
                        eta.g(obj, j, eta.f(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (r(i, obj2)) {
                        eta.e(eta.d(obj2, j), j, obj);
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (r(i, obj2)) {
                        dta dtaVar3 = eta.c;
                        dtaVar3.e(obj, j, dtaVar3.d(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (r(i, obj2)) {
                        eta.i(j, obj, eta.h(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    A(i, obj, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (r(i, obj2)) {
                        eta.i(j, obj, eta.h(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (r(i, obj2)) {
                        eta.e(eta.d(obj2, j), j, obj);
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (r(i, obj2)) {
                        eta.e(eta.d(obj2, j), j, obj);
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (r(i, obj2)) {
                        eta.e(eta.d(obj2, j), j, obj);
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (r(i, obj2)) {
                        eta.g(obj, j, eta.f(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (r(i, obj2)) {
                        eta.e(eta.d(obj2, j), j, obj);
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (r(i, obj2)) {
                        eta.g(obj, j, eta.f(obj2, j));
                        s(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    A(i, obj, obj2);
                    obj3 = obj;
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
                    zzaef zzaefVarZzg = (zzaef) eta.h(obj, j);
                    zzaef zzaefVar = (zzaef) eta.h(obj2, j);
                    int size = zzaefVarZzg.size();
                    int size2 = zzaefVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzaefVarZzg.zza()) {
                            zzaefVarZzg = zzaefVarZzg.zzg(size2 + size);
                        }
                        zzaefVarZzg.addAll(zzaefVar);
                    }
                    if (size > 0) {
                        zzaefVar = zzaefVarZzg;
                    }
                    eta.i(j, obj, zzaefVar);
                    obj3 = obj;
                    break;
                case 50:
                    g gVar = f.a;
                    eta.i(j, obj, xra.a(eta.h(obj, j), eta.h(obj2, j)));
                    obj3 = obj;
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
                    if (t(i3, i, obj2)) {
                        eta.i(j, obj, eta.h(obj2, j));
                        u(i3, i, obj);
                    }
                    obj3 = obj;
                    break;
                case 60:
                    B(i, obj, obj2);
                    obj3 = obj;
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                case RectListKt.BitOffsetForGesturable /* 62 */:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (t(i3, i, obj2)) {
                        eta.i(j, obj, eta.h(obj2, j));
                        u(i3, i, obj);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    B(i, obj, obj2);
                    obj3 = obj;
                    break;
                default:
                    obj3 = obj;
                    break;
            }
            i += 3;
            obj = obj3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:195:0x0517  */
    /* JADX WARN: Code duplicated, block: B:82:0x01f0  */
    @Override // defpackage.nsa
    public final int g(zzadu zzaduVar) {
        int i;
        int iZzE;
        int iZzF;
        int iA;
        int i2;
        int iA2;
        int iZzE2;
        int size;
        int iS;
        int iZzE3;
        int iZzE4;
        int iZzE5;
        int iA3;
        int iZzE6;
        int iZzF2;
        d<T> dVar = this;
        zzadu zzaduVar2 = zzaduVar;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int iB = 0;
        while (true) {
            int[] iArr = dVar.a;
            if (i5 >= iArr.length) {
                int iZzi = zzaduVar2.zzc.zzi() + iB;
                if (!dVar.f) {
                    return iZzi;
                }
                osa osaVar = ((zzadr) zzaduVar2).zzb.a;
                int i7 = osaVar.c;
                int iH = 0;
                for (int i8 = 0; i8 < i7; i8++) {
                    psa psaVarB = osaVar.b(i8);
                    iH = gra.h((zzadj) psaVarB.b, psaVarB.c) + iH;
                }
                for (Map.Entry entry : osaVar.c()) {
                    iH = gra.h((zzadj) entry.getKey(), entry.getValue()) + iH;
                }
                return iZzi + iH;
            }
            int iJ = dVar.j(i5);
            int iK = k(iJ);
            int i9 = iArr[i5];
            int i10 = iArr[i5 + 2];
            int i11 = i10 & i3;
            Unsafe unsafe = n;
            if (iK <= 17) {
                if (i11 != i4) {
                    i6 = i11 == i3 ? 0 : unsafe.getInt(zzaduVar2, i11);
                    i4 = i11;
                }
                i = 1 << (i10 >>> 20);
            } else {
                i = 0;
            }
            int i12 = iJ & i3;
            if (iK >= zzadl.zzJ.zza()) {
                zzadl.zzW.zza();
            }
            long j = i12;
            switch (iK) {
                case 0:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iB = dq.b(i9 << 3, 8, iB);
                    }
                    break;
                case 1:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iB = dq.b(i9 << 3, 4, iB);
                    }
                    dVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 2:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        long j2 = unsafe.getLong(zzaduVar2, j);
                        iZzE = zzada.zzE(i9 << 3);
                        iZzF = zzada.zzF(j2);
                        iB += iZzF + iZzE;
                    }
                    dVar = this;
                    break;
                case 3:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        long j3 = unsafe.getLong(zzaduVar2, j);
                        iZzE = zzada.zzE(i9 << 3);
                        iZzF = zzada.zzF(j3);
                        iB += iZzF + iZzE;
                    }
                    dVar = this;
                    break;
                case 4:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        long j4 = unsafe.getInt(zzaduVar2, j);
                        iZzE = zzada.zzE(i9 << 3);
                        iZzF = zzada.zzF(j4);
                        iB += iZzF + iZzE;
                    }
                    dVar = this;
                    break;
                case 5:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iB = dq.b(i9 << 3, 8, iB);
                    }
                    dVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 6:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iB = dq.b(i9 << 3, 4, iB);
                    }
                    dVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 7:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iB = dq.b(i9 << 3, 1, iB);
                    }
                    dVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 8:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        int i13 = i9 << 3;
                        Object object = unsafe.getObject(zzaduVar2, j);
                        if (object instanceof zzacr) {
                            int iZzE7 = zzada.zzE(i13);
                            int iZzb = ((zzacr) object).zzb();
                            iB = fe0.b(iZzb, iZzb, iZzE7, iB);
                        } else {
                            int iZzE8 = zzada.zzE(i13);
                            int iB2 = gta.b((String) object);
                            iB = fe0.b(iB2, iB2, iZzE8, iB);
                        }
                    }
                    dVar = this;
                    break;
                case 9:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iA = f.A(i9, unsafe.getObject(zzaduVar2, j), dVar.C(i5));
                        iB += iA;
                    }
                    break;
                case 10:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        zzacr zzacrVar = (zzacr) unsafe.getObject(zzaduVar2, j);
                        int iZzE9 = zzada.zzE(i9 << 3);
                        int iZzb2 = zzacrVar.zzb();
                        iB = fe0.b(iZzb2, iZzb2, iZzE9, iB);
                    }
                    dVar = this;
                    break;
                case 11:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iB = dq.b(unsafe.getInt(zzaduVar2, j), zzada.zzE(i9 << 3), iB);
                    }
                    dVar = this;
                    break;
                case 12:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        long j5 = unsafe.getInt(zzaduVar2, j);
                        iZzE = zzada.zzE(i9 << 3);
                        iZzF = zzada.zzF(j5);
                        iB += iZzF + iZzE;
                    }
                    dVar = this;
                    break;
                case 13:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iB = dq.b(i9 << 3, 4, iB);
                    }
                    dVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 14:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        iB = dq.b(i9 << 3, 8, iB);
                    }
                    dVar = this;
                    zzaduVar2 = zzaduVar;
                    break;
                case 15:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        int i14 = unsafe.getInt(zzaduVar2, j);
                        iB = dq.b((i14 >> 31) ^ (i14 + i14), zzada.zzE(i9 << 3), iB);
                    }
                    dVar = this;
                    break;
                case 16:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        long j6 = unsafe.getLong(zzaduVar2, j);
                        iZzE = zzada.zzE(i9 << 3);
                        iZzF = zzada.zzF((j6 >> 63) ^ (j6 + j6));
                        iB += iZzF + iZzE;
                    }
                    dVar = this;
                    break;
                case 17:
                    if (dVar.q(zzaduVar2, i5, i4, i6, i)) {
                        zzafc zzafcVar = (zzafc) unsafe.getObject(zzaduVar2, j);
                        nsa nsaVarC = dVar.C(i5);
                        g gVar = f.a;
                        int iZzE10 = zzada.zzE(i9 << 3);
                        i2 = iZzE10 + iZzE10;
                        iA2 = ((zzacb) zzafcVar).a(nsaVarC);
                        iA = iA2 + i2;
                        iB += iA;
                    }
                    break;
                case 18:
                    iA = f.z(i9, (List) unsafe.getObject(zzaduVar2, j));
                    iB += iA;
                    break;
                case 19:
                    iA = f.y(i9, (List) unsafe.getObject(zzaduVar2, j));
                    iB += iA;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar2 = f.a;
                    if (list.size() == 0) {
                        iZzE2 = 0;
                    } else {
                        iZzE2 = (zzada.zzE(i9 << 3) * list.size()) + f.r(list);
                    }
                    iB += iZzE2;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar3 = f.a;
                    size = list2.size();
                    if (size == 0) {
                        iZzE4 = 0;
                    } else {
                        iS = f.s(list2);
                        iZzE3 = zzada.zzE(i9 << 3);
                        iZzE4 = (iZzE3 * size) + iS;
                    }
                    iB += iZzE4;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar4 = f.a;
                    size = list3.size();
                    if (size == 0) {
                        iZzE4 = 0;
                    } else {
                        iS = f.v(list3);
                        iZzE3 = zzada.zzE(i9 << 3);
                        iZzE4 = (iZzE3 * size) + iS;
                    }
                    iB += iZzE4;
                    break;
                case 23:
                    iA = f.z(i9, (List) unsafe.getObject(zzaduVar2, j));
                    iB += iA;
                    break;
                case 24:
                    iA = f.y(i9, (List) unsafe.getObject(zzaduVar2, j));
                    iB += iA;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar5 = f.a;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        iZzE2 = 0;
                    } else {
                        iZzE2 = (zzada.zzE(i9 << 3) + 1) * size2;
                    }
                    iB += iZzE2;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar6 = f.a;
                    int size3 = list5.size();
                    if (size3 == 0) {
                        iZzE4 = 0;
                    } else {
                        iZzE4 = zzada.zzE(i9 << 3) * size3;
                        if (list5 instanceof zzaen) {
                            zzaen zzaenVar = (zzaen) list5;
                            for (int i15 = 0; i15 < size3; i15++) {
                                Object objZzc = zzaenVar.zzc();
                                if (objZzc instanceof zzacr) {
                                    int iZzb3 = ((zzacr) objZzc).zzb();
                                    iZzE4 = dq.b(iZzb3, iZzb3, iZzE4);
                                } else {
                                    int iB3 = gta.b((String) objZzc);
                                    iZzE4 = dq.b(iB3, iB3, iZzE4);
                                }
                            }
                        } else {
                            for (int i16 = 0; i16 < size3; i16++) {
                                Object obj = list5.get(i16);
                                if (obj instanceof zzacr) {
                                    int iZzb4 = ((zzacr) obj).zzb();
                                    iZzE4 = dq.b(iZzb4, iZzb4, iZzE4);
                                } else {
                                    int iB4 = gta.b((String) obj);
                                    iZzE4 = dq.b(iB4, iB4, iZzE4);
                                }
                            }
                        }
                    }
                    iB += iZzE4;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(zzaduVar2, j);
                    nsa nsaVarC2 = dVar.C(i5);
                    g gVar7 = f.a;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iZzE5 = 0;
                    } else {
                        iZzE5 = zzada.zzE(i9 << 3) * size4;
                        for (int i17 = 0; i17 < size4; i17++) {
                            Object obj2 = list6.get(i17);
                            if (obj2 instanceof zzaem) {
                                int iZzb5 = ((zzaem) obj2).zzb();
                                iZzE5 = dq.b(iZzb5, iZzb5, iZzE5);
                            } else {
                                int iA4 = ((zzacb) obj2).a(nsaVarC2);
                                iZzE5 = dq.b(iA4, iA4, iZzE5);
                            }
                        }
                    }
                    iB += iZzE5;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar8 = f.a;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iZzE4 = 0;
                    } else {
                        iZzE4 = zzada.zzE(i9 << 3) * size5;
                        for (int i18 = 0; i18 < list7.size(); i18++) {
                            int iZzb6 = ((zzacr) list7.get(i18)).zzb();
                            iZzE4 = dq.b(iZzb6, iZzb6, iZzE4);
                        }
                    }
                    iB += iZzE4;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar9 = f.a;
                    size = list8.size();
                    if (size == 0) {
                        iZzE4 = 0;
                    } else {
                        iS = f.w(list8);
                        iZzE3 = zzada.zzE(i9 << 3);
                        iZzE4 = (iZzE3 * size) + iS;
                    }
                    iB += iZzE4;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar10 = f.a;
                    size = list9.size();
                    if (size == 0) {
                        iZzE4 = 0;
                    } else {
                        iS = f.u(list9);
                        iZzE3 = zzada.zzE(i9 << 3);
                        iZzE4 = (iZzE3 * size) + iS;
                    }
                    iB += iZzE4;
                    break;
                case 31:
                    iA = f.y(i9, (List) unsafe.getObject(zzaduVar2, j));
                    iB += iA;
                    break;
                case 32:
                    iA = f.z(i9, (List) unsafe.getObject(zzaduVar2, j));
                    iB += iA;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar11 = f.a;
                    size = list10.size();
                    if (size == 0) {
                        iZzE4 = 0;
                    } else {
                        iS = f.x(list10);
                        iZzE3 = zzada.zzE(i9 << 3);
                        iZzE4 = (iZzE3 * size) + iS;
                    }
                    iB += iZzE4;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar12 = f.a;
                    size = list11.size();
                    if (size == 0) {
                        iZzE4 = 0;
                    } else {
                        iS = f.t(list11);
                        iZzE3 = zzada.zzE(i9 << 3);
                        iZzE4 = (iZzE3 * size) + iS;
                    }
                    iB += iZzE4;
                    break;
                case 35:
                    List list12 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar13 = f.a;
                    int size6 = list12.size() * 8;
                    if (size6 > 0) {
                        iB = fe0.b(size6, zzada.zzE(i9 << 3), size6, iB);
                    }
                    break;
                case 36:
                    List list13 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar14 = f.a;
                    int size7 = list13.size() * 4;
                    if (size7 > 0) {
                        iB = fe0.b(size7, zzada.zzE(i9 << 3), size7, iB);
                    }
                    break;
                case 37:
                    int iR = f.r((List) unsafe.getObject(zzaduVar2, j));
                    if (iR > 0) {
                        iB = fe0.b(iR, zzada.zzE(i9 << 3), iR, iB);
                    }
                    break;
                case 38:
                    int iS2 = f.s((List) unsafe.getObject(zzaduVar2, j));
                    if (iS2 > 0) {
                        iB = fe0.b(iS2, zzada.zzE(i9 << 3), iS2, iB);
                    }
                    break;
                case 39:
                    int iV = f.v((List) unsafe.getObject(zzaduVar2, j));
                    if (iV > 0) {
                        iB = fe0.b(iV, zzada.zzE(i9 << 3), iV, iB);
                    }
                    break;
                case 40:
                    List list14 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar15 = f.a;
                    int size8 = list14.size() * 8;
                    if (size8 > 0) {
                        iB = fe0.b(size8, zzada.zzE(i9 << 3), size8, iB);
                    }
                    break;
                case 41:
                    List list15 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar16 = f.a;
                    int size9 = list15.size() * 4;
                    if (size9 > 0) {
                        iB = fe0.b(size9, zzada.zzE(i9 << 3), size9, iB);
                    }
                    break;
                case 42:
                    List list16 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar17 = f.a;
                    int size10 = list16.size();
                    if (size10 > 0) {
                        iB = fe0.b(size10, zzada.zzE(i9 << 3), size10, iB);
                    }
                    break;
                case 43:
                    int iW = f.w((List) unsafe.getObject(zzaduVar2, j));
                    if (iW > 0) {
                        iB = fe0.b(iW, zzada.zzE(i9 << 3), iW, iB);
                    }
                    break;
                case 44:
                    int iU = f.u((List) unsafe.getObject(zzaduVar2, j));
                    if (iU > 0) {
                        iB = fe0.b(iU, zzada.zzE(i9 << 3), iU, iB);
                    }
                    break;
                case 45:
                    List list17 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar18 = f.a;
                    int size11 = list17.size() * 4;
                    if (size11 > 0) {
                        iB = fe0.b(size11, zzada.zzE(i9 << 3), size11, iB);
                    }
                    break;
                case 46:
                    List list18 = (List) unsafe.getObject(zzaduVar2, j);
                    g gVar19 = f.a;
                    int size12 = list18.size() * 8;
                    if (size12 > 0) {
                        iB = fe0.b(size12, zzada.zzE(i9 << 3), size12, iB);
                    }
                    break;
                case 47:
                    int iX = f.x((List) unsafe.getObject(zzaduVar2, j));
                    if (iX > 0) {
                        iB = fe0.b(iX, zzada.zzE(i9 << 3), iX, iB);
                    }
                    break;
                case 48:
                    int iT = f.t((List) unsafe.getObject(zzaduVar2, j));
                    if (iT > 0) {
                        iB = fe0.b(iT, zzada.zzE(i9 << 3), iT, iB);
                    }
                    break;
                case 49:
                    List list19 = (List) unsafe.getObject(zzaduVar2, j);
                    nsa nsaVarC3 = dVar.C(i5);
                    g gVar20 = f.a;
                    int size13 = list19.size();
                    if (size13 == 0) {
                        iA3 = 0;
                    } else {
                        iA3 = 0;
                        for (int i19 = 0; i19 < size13; i19++) {
                            zzafc zzafcVar2 = (zzafc) list19.get(i19);
                            int iZzE11 = zzada.zzE(i9 << 3);
                            iA3 += ((zzacb) zzafcVar2).a(nsaVarC3) + iZzE11 + iZzE11;
                        }
                    }
                    iB += iA3;
                    break;
                case 50:
                    zzaew zzaewVar = (zzaew) unsafe.getObject(zzaduVar2, j);
                    zzaev zzaevVar = (zzaev) dVar.D(i5);
                    if (zzaewVar.isEmpty()) {
                        iZzE4 = 0;
                    } else {
                        iZzE4 = 0;
                        for (Map.Entry entry2 : zzaewVar.entrySet()) {
                            iZzE4 += zzaevVar.zzd(i9, entry2.getKey(), entry2.getValue());
                        }
                    }
                    iB += iZzE4;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iB = dq.b(i9 << 3, 8, iB);
                    }
                    break;
                case 52:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iB = dq.b(i9 << 3, 4, iB);
                    }
                    break;
                case 53:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        long jO = o(zzaduVar2, j);
                        iZzE6 = zzada.zzE(i9 << 3);
                        iZzF2 = zzada.zzF(jO);
                        iB += iZzF2 + iZzE6;
                    }
                    break;
                case 54:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        long jO2 = o(zzaduVar2, j);
                        iZzE6 = zzada.zzE(i9 << 3);
                        iZzF2 = zzada.zzF(jO2);
                        iB += iZzF2 + iZzE6;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        long jN = n(zzaduVar2, j);
                        iZzE6 = zzada.zzE(i9 << 3);
                        iZzF2 = zzada.zzF(jN);
                        iB += iZzF2 + iZzE6;
                    }
                    break;
                case 56:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iB = dq.b(i9 << 3, 8, iB);
                    }
                    break;
                case 57:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iB = dq.b(i9 << 3, 4, iB);
                    }
                    break;
                case 58:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iB = dq.b(i9 << 3, 1, iB);
                    }
                    break;
                case 59:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        int i20 = i9 << 3;
                        Object object2 = unsafe.getObject(zzaduVar2, j);
                        if (object2 instanceof zzacr) {
                            int iZzE12 = zzada.zzE(i20);
                            int iZzb7 = ((zzacr) object2).zzb();
                            iB = fe0.b(iZzb7, iZzb7, iZzE12, iB);
                        } else {
                            int iZzE13 = zzada.zzE(i20);
                            int iB5 = gta.b((String) object2);
                            iB = fe0.b(iB5, iB5, iZzE13, iB);
                        }
                    }
                    break;
                case 60:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iA = f.A(i9, unsafe.getObject(zzaduVar2, j), dVar.C(i5));
                        iB += iA;
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        zzacr zzacrVar2 = (zzacr) unsafe.getObject(zzaduVar2, j);
                        int iZzE14 = zzada.zzE(i9 << 3);
                        int iZzb8 = zzacrVar2.zzb();
                        iB = fe0.b(iZzb8, iZzb8, iZzE14, iB);
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iB = dq.b(n(zzaduVar2, j), zzada.zzE(i9 << 3), iB);
                    }
                    break;
                case 63:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        long jN2 = n(zzaduVar2, j);
                        iZzE6 = zzada.zzE(i9 << 3);
                        iZzF2 = zzada.zzF(jN2);
                        iB += iZzF2 + iZzE6;
                    }
                    break;
                case 64:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iB = dq.b(i9 << 3, 4, iB);
                    }
                    break;
                case 65:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        iB = dq.b(i9 << 3, 8, iB);
                    }
                    break;
                case 66:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        int iN = n(zzaduVar2, j);
                        iB = dq.b((iN >> 31) ^ (iN + iN), zzada.zzE(i9 << 3), iB);
                    }
                    break;
                case 67:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        long jO3 = o(zzaduVar2, j);
                        iZzE6 = zzada.zzE(i9 << 3);
                        iZzF2 = zzada.zzF((jO3 >> 63) ^ (jO3 + jO3));
                        iB += iZzF2 + iZzE6;
                    }
                    break;
                case 68:
                    if (dVar.t(i9, i5, zzaduVar2)) {
                        zzafc zzafcVar3 = (zzafc) unsafe.getObject(zzaduVar2, j);
                        nsa nsaVarC4 = dVar.C(i5);
                        g gVar21 = f.a;
                        int iZzE15 = zzada.zzE(i9 << 3);
                        i2 = iZzE15 + iZzE15;
                        iA2 = ((zzacb) zzafcVar3).a(nsaVarC4);
                        iA = iA2 + i2;
                        iB += iA;
                    }
                    break;
            }
            i5 += 3;
            i3 = 1048575;
        }
    }

    @Override // defpackage.nsa
    public final boolean h(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < this.i) {
            int i6 = this.h[i3];
            int iJ = this.j(i6);
            int[] iArr = this.a;
            int i7 = iArr[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i5) {
                if (i8 != 1048575) {
                    i4 = n.getInt(obj, i8);
                }
                i2 = i4;
                i = i8;
            } else {
                i = i5;
                i2 = i4;
            }
            d<T> dVar = this;
            Object obj2 = obj;
            if ((268435456 & iJ) == 0 || dVar.q(obj2, i6, i, i2, i9)) {
                int iK = k(iJ);
                if (iK != 9 && iK != 17) {
                    if (iK != 27) {
                        if (iK == 60 || iK == 68) {
                            if (!dVar.t(iArr[i6], i6, obj2) || dVar.C(i6).h(eta.h(obj2, iJ & 1048575))) {
                                i3++;
                                this = dVar;
                                obj = obj2;
                                i5 = i;
                                i4 = i2;
                            }
                        } else if (iK != 49) {
                            if (iK != 50) {
                                continue;
                            } else {
                                zzaew zzaewVar = (zzaew) eta.h(obj2, iJ & 1048575);
                                if (!zzaewVar.isEmpty() && ((zzaev) dVar.D(i6)).a.b.zza() == zzagn.zzi) {
                                    nsa nsaVarA = null;
                                    for (Object obj3 : zzaewVar.values()) {
                                        if (nsaVarA == null) {
                                            nsaVarA = ksa.c.a(obj3.getClass());
                                        }
                                        if (!nsaVarA.h(obj3)) {
                                        }
                                    }
                                }
                            }
                            i3++;
                            this = dVar;
                            obj = obj2;
                            i5 = i;
                            i4 = i2;
                        }
                    }
                    List list = (List) eta.h(obj2, iJ & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        nsa nsaVarC = dVar.C(i6);
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            if (nsaVarC.h(list.get(i10))) {
                            }
                        }
                    }
                    i3++;
                    this = dVar;
                    obj = obj2;
                    i5 = i;
                    i4 = i2;
                } else if (!dVar.q(obj2, i6, i, i2, i9) || dVar.C(i6).h(eta.h(obj2, iJ & 1048575))) {
                    i3++;
                    this = dVar;
                    obj = obj2;
                    i5 = i;
                    i4 = i2;
                }
            }
        }
        return !this.f || ((zzadr) obj).zzb.d();
    }

    /* JADX WARN: Code duplicated, block: B:138:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:175:0x01d1 A[SYNTHETIC] */
    @Override // defpackage.nsa
    public final boolean i(zzadu zzaduVar, zzadu zzaduVar2) {
        boolean zA;
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i < iArr.length) {
                int iJ = j(i);
                int iK = k(iJ);
                if (iK <= 50 || iK >= 69) {
                    long j = iJ & 1048575;
                    switch (iK) {
                        case 0:
                            if (p(zzaduVar, zzaduVar2, i)) {
                                dta dtaVar = eta.c;
                                if (Double.doubleToLongBits(dtaVar.k(zzaduVar, j)) != Double.doubleToLongBits(dtaVar.k(zzaduVar2, j))) {
                                }
                            }
                            break;
                        case 1:
                            if (p(zzaduVar, zzaduVar2, i)) {
                                dta dtaVar2 = eta.c;
                                if (Float.floatToIntBits(dtaVar2.f(zzaduVar, j)) != Float.floatToIntBits(dtaVar2.f(zzaduVar2, j))) {
                                }
                            }
                            break;
                        case 2:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.f(zzaduVar, j) != eta.f(zzaduVar2, j)) {
                            }
                            break;
                        case 3:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.f(zzaduVar, j) != eta.f(zzaduVar2, j)) {
                            }
                            break;
                        case 4:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.d(zzaduVar, j) != eta.d(zzaduVar2, j)) {
                            }
                            break;
                        case 5:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.f(zzaduVar, j) != eta.f(zzaduVar2, j)) {
                            }
                            break;
                        case 6:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.d(zzaduVar, j) != eta.d(zzaduVar2, j)) {
                            }
                            break;
                        case 7:
                            if (p(zzaduVar, zzaduVar2, i)) {
                                dta dtaVar3 = eta.c;
                                if (dtaVar3.d(zzaduVar, j) != dtaVar3.d(zzaduVar2, j)) {
                                }
                            }
                            break;
                        case 8:
                            if (!p(zzaduVar, zzaduVar2, i) || !f.a(eta.h(zzaduVar, j), eta.h(zzaduVar2, j))) {
                            }
                            break;
                        case 9:
                            if (!p(zzaduVar, zzaduVar2, i) || !f.a(eta.h(zzaduVar, j), eta.h(zzaduVar2, j))) {
                            }
                            break;
                        case 10:
                            if (!p(zzaduVar, zzaduVar2, i) || !f.a(eta.h(zzaduVar, j), eta.h(zzaduVar2, j))) {
                            }
                            break;
                        case 11:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.d(zzaduVar, j) != eta.d(zzaduVar2, j)) {
                            }
                            break;
                        case 12:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.d(zzaduVar, j) != eta.d(zzaduVar2, j)) {
                            }
                            break;
                        case 13:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.d(zzaduVar, j) != eta.d(zzaduVar2, j)) {
                            }
                            break;
                        case 14:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.f(zzaduVar, j) != eta.f(zzaduVar2, j)) {
                            }
                            break;
                        case 15:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.d(zzaduVar, j) != eta.d(zzaduVar2, j)) {
                            }
                            break;
                        case 16:
                            if (!p(zzaduVar, zzaduVar2, i) || eta.f(zzaduVar, j) != eta.f(zzaduVar2, j)) {
                            }
                            break;
                        case 17:
                            if (!p(zzaduVar, zzaduVar2, i) || !f.a(eta.h(zzaduVar, j), eta.h(zzaduVar2, j))) {
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
                            zA = f.a(eta.h(zzaduVar, j), eta.h(zzaduVar2, j));
                            if (zA) {
                            }
                            break;
                        case 50:
                            zA = f.a(eta.h(zzaduVar, j), eta.h(zzaduVar2, j));
                            if (zA) {
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
                            long j2 = iArr[i + 2] & 1048575;
                            if (eta.d(zzaduVar, j2) == eta.d(zzaduVar2, j2) && f.a(eta.h(zzaduVar, j), eta.h(zzaduVar2, j))) {
                            }
                            break;
                        default:
                            continue;
                    }
                }
                i += 3;
            } else {
                int i2 = this.j;
                while (true) {
                    int[] iArr2 = this.h;
                    if (i2 < iArr2.length) {
                        int i3 = iArr2[i2];
                        long j3 = iArr[i3 + 2] & 1048575;
                        if (eta.d(zzaduVar, j3) != eta.d(zzaduVar2, j3)) {
                            return false;
                        }
                        if (!t(0, i3, zzaduVar)) {
                            long j4 = j(i3) & 1048575;
                            if (!f.a(eta.h(zzaduVar, j4), eta.h(zzaduVar2, j4))) {
                            }
                        }
                        i2++;
                    } else if (zzaduVar.zzc.equals(zzaduVar2.zzc)) {
                        if (this.f) {
                            return ((zzadr) zzaduVar).zzb.equals(((zzadr) zzaduVar2).zzb);
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int j(int i) {
        return this.a[i + 1];
    }

    public final boolean p(zzadu zzaduVar, zzadu zzaduVar2, int i) {
        return r(i, zzaduVar) == r(i, zzaduVar2);
    }

    public final boolean q(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return r(i, obj);
        }
        return (i3 & i4) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f6 A[RETURN] */
    public final boolean r(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            if (((1 << (i2 >>> 20)) & eta.d(obj, j)) != 0) {
                return true;
            }
            return false;
        }
        int iJ = j(i);
        long j2 = iJ & 1048575;
        switch (k(iJ)) {
            case 0:
                if (Double.doubleToRawLongBits(eta.c.k(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(eta.c.f(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (eta.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (eta.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (eta.d(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (eta.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (eta.d(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 7:
                return eta.c.d(obj, j2);
            case 8:
                Object objH = eta.h(obj, j2);
                if (objH instanceof String) {
                    if (((String) objH).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objH instanceof zzacr)) {
                    mi2.b();
                    return false;
                }
                if (zzacr.zza.equals(objH)) {
                    return false;
                }
                return true;
            case 9:
                if (eta.h(obj, j2) != null) {
                    return true;
                }
                return false;
            case 10:
                if (zzacr.zza.equals(eta.h(obj, j2))) {
                    return false;
                }
                return true;
            case 11:
                if (eta.d(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (eta.d(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (eta.d(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (eta.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (eta.d(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (eta.f(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (eta.h(obj, j2) != null) {
                    return true;
                }
                return false;
            default:
                mi2.b();
                return false;
        }
    }

    public final void s(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        eta.e((1 << (i2 >>> 20)) | eta.d(obj, j), j, obj);
    }

    public final boolean t(int i, int i2, Object obj) {
        return eta.d(obj, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    public final void u(int i, int i2, Object obj) {
        eta.e(i, this.a[i2 + 2] & 1048575, obj);
    }

    public final int v(int i, int i2) {
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

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 42041. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int y(java.lang.Object r37, byte[] r38, int r39, int r40, int r41, defpackage.gqa r42) {
        /*
            Method dump skipped, instruction units count: 4204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.d.y(java.lang.Object, byte[], int, int, int, gqa):int");
    }

    @Override // defpackage.nsa
    public final Object zza() {
        return ((zzadu) this.e).e();
    }
}
