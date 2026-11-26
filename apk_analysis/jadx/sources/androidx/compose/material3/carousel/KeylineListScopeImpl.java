package androidx.compose.material3.carousel;

import defpackage.kx6;
import defpackage.sg;
import defpackage.u74;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class KeylineListScopeImpl implements KeylineListScope {
    private float focalItemSize;
    private float pivotOffset;
    private int firstFocalIndex = -1;
    private int pivotIndex = -1;
    private final List<TmpKeyline> tmpKeylines = new ArrayList();

    public static final class TmpKeyline {
        private final boolean isAnchor;
        private final float size;

        public TmpKeyline(float f, boolean z) {
            this.size = f;
            this.isAnchor = z;
        }

        public static /* synthetic */ TmpKeyline copy$default(TmpKeyline tmpKeyline, float f, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                f = tmpKeyline.size;
            }
            if ((i & 2) != 0) {
                z = tmpKeyline.isAnchor;
            }
            return tmpKeyline.copy(f, z);
        }

        public final float component1() {
            return this.size;
        }

        public final boolean component2() {
            return this.isAnchor;
        }

        public final TmpKeyline copy(float f, boolean z) {
            return new TmpKeyline(f, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TmpKeyline)) {
                return false;
            }
            TmpKeyline tmpKeyline = (TmpKeyline) obj;
            return Float.compare(this.size, tmpKeyline.size) == 0 && this.isAnchor == tmpKeyline.isAnchor;
        }

        public final float getSize() {
            return this.size;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isAnchor) + (Float.hashCode(this.size) * 31);
        }

        public final boolean isAnchor() {
            return this.isAnchor;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("TmpKeyline(size=");
            sb.append(this.size);
            sb.append(", isAnchor=");
            return sg.d(sb, this.isAnchor, ')');
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0057  */
    /* JADX WARN: Code duplicated, block: B:18:0x0081  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:21:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:31:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:33:0x0116  */
    /* JADX WARN: Code duplicated, block: B:34:0x0121  */
    /* JADX WARN: Code duplicated, block: B:39:0x0130  */
    private final List<Keyline> createKeylinesWithPivot(int i, float f, int i2, int i3, float f2, float f3, float f4, List<TmpKeyline> list) {
        float f5;
        float size;
        float f6;
        float size2;
        Iterator<Integer> it;
        float f7;
        float size3;
        Iterator<Integer> it2;
        float f8;
        int iNextInt;
        TmpKeyline tmpKeyline;
        float size4;
        float size5;
        boolean z;
        int iNextInt2;
        TmpKeyline tmpKeyline2;
        float size6;
        float fAbs;
        boolean z2;
        TmpKeyline tmpKeyline3 = list.get(i);
        ArrayList arrayList = new ArrayList();
        if (!isCutoffLeft(tmpKeyline3.getSize(), f)) {
            if (isCutoffRight(tmpKeyline3.getSize(), f, f3)) {
                size = ((tmpKeyline3.getSize() / 2.0f) + f) - f3;
            } else {
                f5 = 0.0f;
            }
            float size7 = tmpKeyline3.getSize();
            boolean z3 = false;
            if (i2 > i && i <= i3) {
                z3 = true;
            }
            arrayList.add(new Keyline(size7, f, f, z3, tmpKeyline3.isAnchor(), true, f5));
            f6 = f2 / 2.0f;
            size2 = (f - f6) - f4;
            it = kx6.k(i - 1, 0).iterator();
            f7 = size2;
            while (it.hasNext()) {
                iNextInt2 = ((u74) it).nextInt();
                tmpKeyline2 = list.get(iNextInt2);
                size6 = size2 - (tmpKeyline2.getSize() / 2.0f);
                float f9 = f7 - f6;
                if (isCutoffLeft(tmpKeyline2.getSize(), size6)) {
                    fAbs = Math.abs(size6 - (tmpKeyline2.getSize() / 2.0f));
                } else {
                    fAbs = 0.0f;
                }
                float size8 = tmpKeyline2.getSize();
                if (i2 <= iNextInt2 || iNextInt2 > i3) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                arrayList.add(0, new Keyline(size8, size6, f9, z2, tmpKeyline2.isAnchor(), false, fAbs));
                size2 -= tmpKeyline2.getSize() + f4;
                f7 -= f2 + f4;
            }
            size3 = f + f6 + f4;
            it2 = kx6.n(i + 1, list.size()).iterator();
            f8 = size3;
            while (it2.hasNext()) {
                iNextInt = ((u74) it2).nextInt();
                tmpKeyline = list.get(iNextInt);
                size4 = (tmpKeyline.getSize() / 2.0f) + size3;
                float f10 = f8 + f6;
                if (isCutoffRight(tmpKeyline.getSize(), size4, f3)) {
                    size5 = ((tmpKeyline.getSize() / 2.0f) + size4) - f3;
                } else {
                    size5 = 0.0f;
                }
                float size9 = tmpKeyline.getSize();
                if (i2 <= iNextInt || iNextInt > i3) {
                    z = false;
                } else {
                    z = true;
                }
                arrayList.add(new Keyline(size9, size4, f10, z, tmpKeyline.isAnchor(), false, size5));
                size3 += tmpKeyline.getSize() + f4;
                f8 += f2 + f4;
            }
            return arrayList;
        }
        size = f - (tmpKeyline3.getSize() / 2.0f);
        f5 = size;
        float size10 = tmpKeyline3.getSize();
        boolean z4 = false;
        if (i2 > i) {
        }
        arrayList.add(new Keyline(size10, f, f, z4, tmpKeyline3.isAnchor(), true, f5));
        f6 = f2 / 2.0f;
        size2 = (f - f6) - f4;
        it = kx6.k(i - 1, 0).iterator();
        f7 = size2;
        while (it.hasNext()) {
            iNextInt2 = ((u74) it).nextInt();
            tmpKeyline2 = list.get(iNextInt2);
            size6 = size2 - (tmpKeyline2.getSize() / 2.0f);
            float f11 = f7 - f6;
            if (isCutoffLeft(tmpKeyline2.getSize(), size6)) {
                fAbs = Math.abs(size6 - (tmpKeyline2.getSize() / 2.0f));
            } else {
                fAbs = 0.0f;
            }
            float size11 = tmpKeyline2.getSize();
            if (i2 <= iNextInt2) {
                z2 = false;
            } else {
                z2 = false;
            }
            arrayList.add(0, new Keyline(size11, size6, f11, z2, tmpKeyline2.isAnchor(), false, fAbs));
            size2 -= tmpKeyline2.getSize() + f4;
            f7 -= f2 + f4;
        }
        size3 = f + f6 + f4;
        it2 = kx6.n(i + 1, list.size()).iterator();
        f8 = size3;
        while (it2.hasNext()) {
            iNextInt = ((u74) it2).nextInt();
            tmpKeyline = list.get(iNextInt);
            size4 = (tmpKeyline.getSize() / 2.0f) + size3;
            float f12 = f8 + f6;
            if (isCutoffRight(tmpKeyline.getSize(), size4, f3)) {
                size5 = ((tmpKeyline.getSize() / 2.0f) + size4) - f3;
            } else {
                size5 = 0.0f;
            }
            float size12 = tmpKeyline.getSize();
            if (i2 <= iNextInt) {
                z = false;
            } else {
                z = false;
            }
            arrayList.add(new Keyline(size12, size4, f12, z, tmpKeyline.isAnchor(), false, size5));
            size3 += tmpKeyline.getSize() + f4;
            f8 += f2 + f4;
        }
        return arrayList;
    }

    private final int findLastFocalIndex() {
        int i = this.firstFocalIndex;
        while (i < u96.g(this.tmpKeylines)) {
            int i2 = i + 1;
            if (this.tmpKeylines.get(i2).getSize() != this.focalItemSize) {
                break;
            }
            i = i2;
        }
        return i;
    }

    private final boolean isCutoffLeft(float f, float f2) {
        float f3 = f / 2.0f;
        return f2 - f3 < 0.0f && f2 + f3 > 0.0f;
    }

    private final boolean isCutoffRight(float f, float f2, float f3) {
        float f4 = f / 2.0f;
        return f2 - f4 < f3 && f2 + f4 > f3;
    }

    @Override // androidx.compose.material3.carousel.KeylineListScope
    public void add(float f, boolean z) {
        this.tmpKeylines.add(new TmpKeyline(f, z));
        if (f > this.focalItemSize) {
            this.firstFocalIndex = u96.g(this.tmpKeylines);
            this.focalItemSize = f;
        }
    }

    /* JADX INFO: renamed from: createWithAlignment-waks0t8, reason: not valid java name */
    public final KeylineList m4354createWithAlignmentwaks0t8(float f, float f2, int i) {
        float f3;
        float f4;
        int iFindLastFocalIndex = findLastFocalIndex();
        int i2 = this.firstFocalIndex;
        int i3 = iFindLastFocalIndex - i2;
        this.pivotIndex = i2;
        CarouselAlignment.Companion companion = CarouselAlignment.Companion;
        if (CarouselAlignment.m4333equalsimpl0(i, companion.m4337getCenterNUL3oTo())) {
            float f5 = 0.0f;
            if (f2 != 0.0f) {
                int i4 = i3 % 2;
                if (i4 + ((((i4 ^ 2) & ((-i4) | i4)) >> 31) & 2) != 0) {
                    f5 = f2 / 2.0f;
                }
            }
            f3 = this.focalItemSize;
            f4 = ((f / 2.0f) - ((f3 / 2.0f) * i3)) - f5;
        } else {
            boolean zM4333equalsimpl0 = CarouselAlignment.m4333equalsimpl0(i, companion.m4338getEndNUL3oTo());
            f3 = this.focalItemSize;
            f4 = zM4333equalsimpl0 ? f - (f3 / 2.0f) : f3 / 2.0f;
        }
        float f6 = f3;
        float f7 = f4;
        this.pivotOffset = f7;
        return new KeylineList(createKeylinesWithPivot(this.pivotIndex, f7, this.firstFocalIndex, iFindLastFocalIndex, f6, f, f2, this.tmpKeylines));
    }

    public final KeylineList createWithPivot(float f, float f2, int i, float f3) {
        return new KeylineList(createKeylinesWithPivot(i, f3, this.firstFocalIndex, findLastFocalIndex(), this.focalItemSize, f, f2, this.tmpKeylines));
    }
}
