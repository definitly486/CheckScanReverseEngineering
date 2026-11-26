package androidx.compose.material3.carousel;

import defpackage.jh2;
import defpackage.kx6;

/* JADX INFO: loaded from: classes2.dex */
public final class Arrangement {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final float MediumItemFlexPercentage = 0.1f;
    private final int largeCount;
    private final float largeSize;
    private final int mediumCount;
    private final float mediumSize;
    private final int priority;
    private final int smallCount;
    private final float smallSize;

    public Arrangement(int i, float f, int i2, float f2, int i3, float f3, int i4) {
        this.priority = i;
        this.smallSize = f;
        this.smallCount = i2;
        this.mediumSize = f2;
        this.mediumCount = i3;
        this.largeSize = f3;
        this.largeCount = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float cost(float f) {
        if (isValid()) {
            return Math.abs(f - this.largeSize) * this.priority;
        }
        return Float.MAX_VALUE;
    }

    private final boolean isValid() {
        int i = this.largeCount;
        if (i <= 0 || this.smallCount <= 0 || this.mediumCount <= 0) {
            return i <= 0 || this.smallCount <= 0 || this.largeSize > this.smallSize;
        }
        float f = this.largeSize;
        float f2 = this.mediumSize;
        return f > f2 && f2 > this.smallSize;
    }

    public final int getLargeCount() {
        return this.largeCount;
    }

    public final float getLargeSize() {
        return this.largeSize;
    }

    public final int getMediumCount() {
        return this.mediumCount;
    }

    public final float getMediumSize() {
        return this.mediumSize;
    }

    public final int getSmallCount() {
        return this.smallCount;
    }

    public final float getSmallSize() {
        return this.smallSize;
    }

    public final int itemCount() {
        return this.largeCount + this.mediumCount + this.smallCount;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final float calculateLargeSize(float f, int i, float f2, int i2, int i3) {
            float f3 = i;
            float f4 = i2 / 2.0f;
            return (f - ((f3 + f4) * f2)) / (i3 + f4);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x003e  */
        /* JADX WARN: Code duplicated, block: B:15:0x0042  */
        /* JADX WARN: Code duplicated, block: B:23:0x0069  */
        /* JADX WARN: Code duplicated, block: B:25:0x0071  */
        private final Arrangement fit(int i, float f, float f2, int i2, float f3, float f4, float f5, int i3, float f6, int i4, float f7) {
            float fMax;
            float f8;
            float fCalculateLargeSize;
            float f9;
            float f10;
            float fMin;
            float f11 = f - ((((i4 + i3) + i2) - 1) * f2);
            float fD = kx6.d(f3, f4, f5);
            float f12 = i4;
            float f13 = i3;
            float f14 = i2;
            float f15 = f11 - ((fD * f14) + ((f6 * f13) + (f7 * f12)));
            if (i2 <= 0 || f15 <= 0.0f) {
                if (i2 > 0 && f15 < 0.0f) {
                    fMax = Math.max(f15 / f14, f4 - fD);
                }
                if (i2 > 0) {
                    f8 = fD;
                } else {
                    f8 = 0.0f;
                }
                fCalculateLargeSize = calculateLargeSize(f11, i2, f8, i3, i4);
                float f16 = f8;
                f9 = (fCalculateLargeSize + f16) / 2.0f;
                if (i3 > 0 && fCalculateLargeSize != f7) {
                    f10 = (f7 - fCalculateLargeSize) * f12;
                    fMin = Math.min(Math.abs(f10), 0.1f * f9 * f13);
                    if (f10 > 0.0f) {
                        f9 -= fMin / f13;
                        fCalculateLargeSize += fMin / f12;
                    } else {
                        f9 += fMin / f13;
                        fCalculateLargeSize -= fMin / f12;
                    }
                }
                return new Arrangement(i, f16, i2, f9, i3, fCalculateLargeSize, i4);
            }
            fMax = Math.min(f15 / f14, f5 - fD);
            fD += fMax;
            if (i2 > 0) {
                f8 = fD;
            } else {
                f8 = 0.0f;
            }
            fCalculateLargeSize = calculateLargeSize(f11, i2, f8, i3, i4);
            float f17 = f8;
            f9 = (fCalculateLargeSize + f17) / 2.0f;
            if (i3 > 0) {
                f10 = (f7 - fCalculateLargeSize) * f12;
                fMin = Math.min(Math.abs(f10), 0.1f * f9 * f13);
                if (f10 > 0.0f) {
                    f9 -= fMin / f13;
                    fCalculateLargeSize += fMin / f12;
                } else {
                    f9 += fMin / f13;
                    fCalculateLargeSize -= fMin / f12;
                }
            }
            return new Arrangement(i, f17, i2, f9, i3, fCalculateLargeSize, i4);
        }

        public final Arrangement findLowestCostArrangement(float f, float f2, float f3, float f4, float f5, int[] iArr, float f6, int[] iArr2, float f7, int[] iArr3) {
            int length = iArr3.length;
            Arrangement arrangement = null;
            int i = 1;
            int i2 = 0;
            while (i2 < length) {
                int i3 = iArr3[i2];
                int length2 = iArr2.length;
                int i4 = 0;
                while (i4 < length2) {
                    int i5 = iArr2[i4];
                    int length3 = iArr.length;
                    int i6 = 0;
                    while (i6 < length3) {
                        int i7 = i4;
                        int i8 = iArr[i6];
                        Arrangement arrangement2 = arrangement;
                        int i9 = i2;
                        int i10 = length2;
                        int i11 = length3;
                        int i12 = i6;
                        Arrangement arrangementFit = fit(i, f, f2, i8, f3, f4, f5, i5, f6, i3, f7);
                        if (arrangement2 != null && arrangementFit.cost(f7) >= arrangement2.cost(f7)) {
                            arrangement = arrangement2;
                        } else {
                            if (arrangementFit.cost(f7) == 0.0f) {
                                return arrangementFit;
                            }
                            arrangement = arrangementFit;
                        }
                        i++;
                        i6 = i12 + 1;
                        iArr = iArr;
                        i2 = i9;
                        length2 = i10;
                        i4 = i7;
                        length3 = i11;
                    }
                    i4++;
                    iArr = iArr;
                }
                i2++;
            }
            return arrangement;
        }

        private Companion() {
        }
    }
}
