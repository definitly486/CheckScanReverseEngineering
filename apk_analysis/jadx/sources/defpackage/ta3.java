package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class ta3 {
    public final qi0 a;
    public boolean c;
    public final x57 e;
    public final ArrayList b = new ArrayList();
    public final int[] d = new int[5];

    public static final class a implements Comparator<sa3>, Serializable {
        public final float b;

        public a(float f) {
            this.b = f;
        }

        @Override // java.util.Comparator
        public final int compare(sa3 sa3Var, sa3 sa3Var2) {
            sa3 sa3Var3 = sa3Var;
            sa3 sa3Var4 = sa3Var2;
            int i = sa3Var4.d;
            int i2 = sa3Var3.d;
            if (i != i2) {
                return i - i2;
            }
            float f = sa3Var4.c;
            float f2 = this.b;
            float fAbs = Math.abs(f - f2);
            float fAbs2 = Math.abs(sa3Var3.c - f2);
            if (fAbs < fAbs2) {
                return 1;
            }
            return fAbs == fAbs2 ? 0 : -1;
        }
    }

    public static final class b implements Comparator<sa3>, Serializable {
        public final float b;

        public b(float f) {
            this.b = f;
        }

        @Override // java.util.Comparator
        public final int compare(sa3 sa3Var, sa3 sa3Var2) {
            float f = sa3Var2.c;
            float f2 = this.b;
            float fAbs = Math.abs(f - f2);
            float fAbs2 = Math.abs(sa3Var.c - f2);
            if (fAbs < fAbs2) {
                return -1;
            }
            return fAbs == fAbs2 ? 0 : 1;
        }
    }

    public ta3(qi0 qi0Var, x57 x57Var) {
        this.a = qi0Var;
        this.e = x57Var;
    }

    public static float a(int i, int[] iArr) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    public static boolean b(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i >= 7) {
            float f = i / 7.0f;
            float f2 = f / 2.0f;
            if (Math.abs(f - iArr[0]) < f2 && Math.abs(f - iArr[1]) < f2 && Math.abs((f * 3.0f) - iArr[2]) < 3.0f * f2 && Math.abs(f - iArr[3]) < f2 && Math.abs(f - iArr[4]) < f2) {
                return true;
            }
        }
        return false;
    }

    public final int[] c() {
        int[] iArr = this.d;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        return iArr;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:71:0x0107  */
    /* JADX WARN: Code duplicated, block: B:72:0x010b A[LOOP:9: B:72:0x010b->B:77:0x0119, LOOP_START, PHI: r5 r14
      0x010b: PHI (r5v2 char) = (r5v1 char), (r5v24 char) binds: [B:70:0x0105, B:77:0x0119] A[DONT_GENERATE, DONT_INLINE]
      0x010b: PHI (r14v21 int) = (r14v20 int), (r14v27 int) binds: [B:70:0x0105, B:77:0x0119] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13, types: [int] */
    /* JADX WARN: Type inference failed for: r11v14, types: [int] */
    /* JADX WARN: Type inference failed for: r11v15, types: [int] */
    /* JADX WARN: Type inference failed for: r11v19, types: [int] */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r13v10, types: [int] */
    /* JADX WARN: Type inference failed for: r13v14, types: [int] */
    /* JADX WARN: Type inference failed for: r13v18, types: [int] */
    /* JADX WARN: Type inference failed for: r14v34, types: [int] */
    /* JADX WARN: Type inference failed for: r14v35, types: [int] */
    /* JADX WARN: Type inference failed for: r14v36, types: [int] */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [int] */
    /* JADX WARN: Type inference failed for: r5v26, types: [java.util.ArrayList] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:72:0x010b
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final boolean d(int[] r20, int r21, int r22, boolean r23) {
        /*
            Method dump skipped, instruction units count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ta3.d(int[], int, int, boolean):boolean");
    }

    public final boolean e() {
        ArrayList<sa3> arrayList = this.b;
        int size = arrayList.size();
        float fAbs = 0.0f;
        int i = 0;
        float f = 0.0f;
        for (sa3 sa3Var : arrayList) {
            if (sa3Var.d >= 2) {
                i++;
                f += sa3Var.c;
            }
        }
        if (i >= 3) {
            float f2 = f / size;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                fAbs += Math.abs(((sa3) it.next()).c - f2);
            }
            if (fAbs <= f * 0.05f) {
                return true;
            }
        }
        return false;
    }
}
