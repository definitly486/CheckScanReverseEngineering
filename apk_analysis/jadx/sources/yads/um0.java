package yads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.C;
import defpackage.jea;
import defpackage.kea;
import defpackage.mea;
import defpackage.oea;
import defpackage.u38;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.RandomAccess;
import yads.f06;
import yads.qm0;
import yads.tm0;
import yads.vz2;

/* JADX INFO: loaded from: classes6.dex */
public final class um0 extends tw3 {
    public static final xq4 i = new p40(new jea());
    public static final xq4 j = new p40(new kea());
    public final Object c;
    public final nb d;
    public final boolean e;
    public final mm0 f;
    public final pm0 g;
    public am h;

    public um0(Context context) {
        nb nbVar = new nb();
        mm0 mm0Var = mm0.R;
        mm0 mm0Var2 = new mm0(new lm0(context));
        this.c = new Object();
        if (context != null) {
            context.getApplicationContext();
        }
        this.d = nbVar;
        this.f = mm0Var2;
        this.h = am.h;
        boolean z = context != null && u56.c(context);
        this.e = z;
        if (!z && context != null && u56.a >= 32) {
            this.g = pm0.a(context);
        }
        if (mm0Var2.L && context == null) {
            sv3.d("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static Pair a(int i2, sw3 sw3Var, int[][][] iArr, rm0 rm0Var, Comparator comparator) {
        int i3;
        RandomAccess randomAccessA;
        sw3 sw3Var2 = sw3Var;
        ArrayList arrayList = new ArrayList();
        int i4 = sw3Var2.a;
        int i5 = 0;
        while (i5 < i4) {
            if (i2 == sw3Var2.b[i5]) {
                g06 g06Var = sw3Var2.c[i5];
                for (int i6 = 0; i6 < g06Var.b; i6++) {
                    f06 f06VarA = g06Var.a(i6);
                    List listA = rm0Var.a(i5, f06VarA, iArr[i5][i6]);
                    boolean[] zArr = new boolean[f06VarA.b];
                    int i7 = 0;
                    while (i7 < f06VarA.b) {
                        sm0 sm0Var = (sm0) listA.get(i7);
                        int iA = sm0Var.a();
                        if (zArr[i7] || iA == 0) {
                            i3 = i4;
                        } else {
                            if (iA == 1) {
                                randomAccessA = oe3.a(sm0Var);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(sm0Var);
                                int i8 = i7 + 1;
                                while (i8 < f06VarA.b) {
                                    sm0 sm0Var2 = (sm0) listA.get(i8);
                                    int i9 = i4;
                                    if (sm0Var2.a() == 2 && sm0Var.a(sm0Var2)) {
                                        arrayList2.add(sm0Var2);
                                        zArr[i8] = true;
                                    }
                                    i8++;
                                    i4 = i9;
                                }
                                randomAccessA = arrayList2;
                            }
                            i3 = i4;
                            arrayList.add(randomAccessA);
                        }
                        i7++;
                        i4 = i3;
                    }
                }
            }
            i5++;
            sw3Var2 = sw3Var;
            i4 = i4;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            iArr2[i10] = ((sm0) list.get(i10)).d;
        }
        sm0 sm0Var3 = (sm0) list.get(0);
        return Pair.create(new dr2(0, sm0Var3.c, iArr2), Integer.valueOf(sm0Var3.b));
    }

    public final void b() {
        boolean z;
        mq2 mq2Var;
        pm0 pm0Var;
        synchronized (this.c) {
            try {
                z = this.f.L && !this.e && u56.a >= 32 && (pm0Var = this.g) != null && pm0Var.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z || (mq2Var = this.a) == null) {
            return;
        }
        mq2Var.i.a.sendEmptyMessage(10);
    }

    public static /* synthetic */ int b(Integer num, Integer num2) {
        return 0;
    }

    public final Pair a(sw3 sw3Var, int[][][] iArr, final mm0 mm0Var) {
        int i2;
        final boolean z = false;
        int i3 = 0;
        while (true) {
            i2 = 1;
            if (i3 < sw3Var.a) {
                if (2 == sw3Var.b[i3] && sw3Var.c[i3].b > 0) {
                    z = true;
                    break;
                }
                i3++;
            } else {
                break;
            }
        }
        return a(1, sw3Var, iArr, new rm0() { // from class: pea
            @Override // yads.rm0
            public final List a(int i4, f06 f06Var, int[] iArr2) {
                return this.a.a(mm0Var, z, i4, f06Var, iArr2);
            }
        }, new u38(i2));
    }

    public static /* synthetic */ int a(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    @Override // yads.p06
    public final void a() {
        pm0 pm0Var;
        synchronized (this.c) {
            try {
                if (u56.a >= 32 && (pm0Var = this.g) != null) {
                    pm0Var.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a = null;
        this.b = null;
    }

    public static Pair a(sw3 sw3Var, int[][][] iArr, final int[] iArr2, final mm0 mm0Var) {
        return a(2, sw3Var, iArr, new rm0() { // from class: lea
            @Override // yads.rm0
            public final List a(int i2, f06 f06Var, int[] iArr3) {
                return tm0.a(i2, f06Var, mm0Var, iArr3, iArr2[i2]);
            }
        }, new mea());
    }

    public final /* synthetic */ List a(mm0 mm0Var, boolean z, int i2, f06 f06Var, int[] iArr) {
        return jm0.a(i2, f06Var, mm0Var, iArr, z, new xx4() { // from class: qea
            @Override // yads.xx4
            public final boolean apply(Object obj) {
                return this.b.a((vz2) obj);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:40:0x005e A[Catch: all -> 0x0083, FALL_THROUGH, TryCatch #0 {all -> 0x0083, blocks: (B:4:0x0003, B:6:0x000a, B:8:0x000e, B:10:0x0013, B:34:0x0052, B:36:0x0056, B:38:0x005a, B:40:0x005e, B:42:0x0062, B:44:0x0066, B:46:0x006a, B:48:0x0070, B:50:0x0078, B:56:0x0086), top: B:60:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0085  */
    public final boolean a(vz2 vz2Var) {
        boolean z;
        pm0 pm0Var;
        pm0 pm0Var2;
        synchronized (this.c) {
            try {
                z = true;
                if (this.f.L && !this.e) {
                    if (vz2Var.z > 2) {
                        String str = vz2Var.m;
                        if (str != null) {
                            switch (str) {
                                case "audio/eac3-joc":
                                case "audio/ac3":
                                case "audio/ac4":
                                case "audio/eac3":
                                    if (u56.a >= 32 && (pm0Var2 = this.g) != null && pm0Var2.b) {
                                    }
                                default:
                                    if (u56.a < 32) {
                                        z = false;
                                        break;
                                    } else {
                                        z = false;
                                        break;
                                    }
                                    break;
                            }
                        } else if (u56.a < 32 || (pm0Var = this.g) == null || !pm0Var.b || !pm0Var.a() || !this.g.b() || !this.g.a(this.h, vz2Var)) {
                            z = false;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public static Pair a(sw3 sw3Var, int[][][] iArr, final mm0 mm0Var, final String str) {
        return a(3, sw3Var, iArr, new rm0() { // from class: nea
            @Override // yads.rm0
            public final List a(int i2, f06 f06Var, int[] iArr2) {
                return qm0.a(mm0Var, str, i2, f06Var, iArr2);
            }
        }, new oea());
    }

    public static boolean a(int i2, boolean z) {
        int i3 = i2 & 7;
        if (i3 != 4) {
            return z && i3 == 3;
        }
        return true;
    }

    public static void a(g06 g06Var, mm0 mm0Var, HashMap map) {
        m06 m06Var;
        for (int i2 = 0; i2 < g06Var.b; i2++) {
            m06 m06Var2 = (m06) mm0Var.z.get(g06Var.a(i2));
            if (m06Var2 != null && ((m06Var = (m06) map.get(Integer.valueOf(m06Var2.b.d))) == null || (m06Var.c.isEmpty() && !m06Var2.c.isEmpty()))) {
                map.put(Integer.valueOf(m06Var2.b.d), m06Var2);
            }
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    public static int a(vz2 vz2Var, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(vz2Var.d)) {
            return 4;
        }
        String strA = a(str);
        String strA2 = a(vz2Var.d);
        if (strA2 == null || strA == null) {
            return (z && strA2 == null) ? 1 : 0;
        }
        if (strA2.startsWith(strA) || strA.startsWith(strA2)) {
            return 3;
        }
        int i2 = u56.a;
        return strA2.split("-", 2)[0].equals(strA.split("-", 2)[0]) ? 2 : 0;
    }

    public static int a(int i2, int i3) {
        if (i2 == 0 || i2 != i3) {
            return Integer.bitCount(i2 & i3);
        }
        return Integer.MAX_VALUE;
    }
}
