package androidx.compose.animation.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.i8;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ArcSpline {
    public static final int $stable = 8;
    private final Arc[][] arcs;
    private final boolean isExtrapolate = true;

    public static final class Arc {
        public static final int $stable = 8;
        private float arcDistance;
        private final float arcVelocity;
        public final float ellipseA;
        public final float ellipseB;
        public final float ellipseCenterX;
        public final float ellipseCenterY;
        public final boolean isLinear;
        private final float[] lut;
        private final float oneOverDeltaTime;
        private final float time1;
        private final float time2;
        private float tmpCosAngle;
        private float tmpSinAngle;
        private final float vertical;
        private final float x1;
        private final float x2;
        private final float y1;
        private final float y2;

        public Arc(int i, float f, float f2, float f3, float f4, float f5, float f6) {
            this.time1 = f;
            this.time2 = f2;
            this.x1 = f3;
            this.y1 = f4;
            this.x2 = f5;
            this.y2 = f6;
            float f7 = f5 - f3;
            float f8 = f6 - f4;
            boolean z = true;
            boolean z2 = i == 1 || (i == 4 ? f8 > 0.0f : !(i != 5 || f8 >= 0.0f));
            float f9 = z2 ? -1.0f : 1.0f;
            this.vertical = f9;
            float f10 = 1.0f / (f2 - f);
            this.oneOverDeltaTime = f10;
            this.lut = new float[TypedValues.TYPE_TARGET];
            boolean z3 = i == 3;
            if (z3 || Math.abs(f7) < 0.001f || Math.abs(f8) < 0.001f) {
                float fHypot = (float) Math.hypot(f8, f7);
                this.arcDistance = fHypot;
                this.arcVelocity = fHypot * f10;
                this.ellipseCenterX = f7 * f10;
                this.ellipseCenterY = f8 * f10;
                this.ellipseA = Float.NaN;
                this.ellipseB = Float.NaN;
            } else {
                this.ellipseA = f7 * f9;
                this.ellipseB = f8 * (-f9);
                this.ellipseCenterX = z2 ? f5 : f3;
                this.ellipseCenterY = z2 ? f4 : f6;
                buildTable$animation_core(f3, f4, f5, f6);
                this.arcVelocity = this.arcDistance * f10;
                z = z3;
            }
            this.isLinear = z;
        }

        private final float calcAngle(float f) {
            return lookup((this.vertical == -1.0f ? this.time2 - f : f - this.time1) * this.oneOverDeltaTime) * 1.5707964f;
        }

        private final float lookup(float f) {
            if (f <= 0.0f) {
                return 0.0f;
            }
            if (f >= 1.0f) {
                return 1.0f;
            }
            float f2 = f * 100.0f;
            int i = (int) f2;
            float f3 = f2 - i;
            float[] fArr = this.lut;
            float f4 = fArr[i];
            return i8.b(fArr[i + 1], f4, f3, f4);
        }

        public final void buildTable$animation_core(float f, float f2, float f3, float f4) {
            float f5;
            float fHypot;
            float f6 = f3 - f;
            float f7 = f2 - f4;
            float[] fArr = ArcSplineKt.OurPercentCache;
            int length = fArr.length - 1;
            float f8 = length;
            float[] fArr2 = this.lut;
            if (1 <= length) {
                float f9 = f7;
                int i = 1;
                fHypot = 0.0f;
                float f10 = 0.0f;
                while (true) {
                    f5 = f8;
                    double d = (float) (((((double) i) * 90.0d) / ((double) length)) * 0.017453292519943295d);
                    float fSin = ((float) Math.sin(d)) * f6;
                    float fCos = ((float) Math.cos(d)) * f7;
                    fHypot += (float) Math.hypot(fSin - f10, fCos - f9);
                    fArr[i] = fHypot;
                    if (i == length) {
                        break;
                    }
                    i++;
                    f8 = f5;
                    f9 = fCos;
                    f10 = fSin;
                }
            } else {
                f5 = f8;
                fHypot = 0.0f;
            }
            this.arcDistance = fHypot;
            if (1 <= length) {
                int i2 = 1;
                while (true) {
                    fArr[i2] = fArr[i2] / fHypot;
                    if (i2 == length) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            int length2 = fArr2.length;
            for (int i3 = 0; i3 < length2; i3++) {
                float f11 = i3 / 100.0f;
                int iBinarySearch = Arrays.binarySearch(fArr, 0, fArr.length, f11);
                if (iBinarySearch >= 0) {
                    fArr2[i3] = iBinarySearch / f5;
                } else {
                    if (iBinarySearch == -1) {
                        fArr2[i3] = 0.0f;
                    } else {
                        int i4 = -iBinarySearch;
                        int i5 = i4 - 2;
                        float f12 = i5;
                        float f13 = fArr[i5];
                        fArr2[i3] = (((f11 - f13) / (fArr[i4 - 1] - f13)) + f12) / f5;
                    }
                }
            }
        }

        public final float calcDX() {
            float f = this.ellipseA * this.tmpCosAngle;
            return f * this.vertical * (this.arcVelocity / ((float) Math.hypot(f, (-this.ellipseB) * this.tmpSinAngle)));
        }

        public final float calcDY() {
            float f = this.ellipseA * this.tmpCosAngle;
            float f2 = (-this.ellipseB) * this.tmpSinAngle;
            return f2 * this.vertical * (this.arcVelocity / ((float) Math.hypot(f, f2)));
        }

        public final float calcX() {
            return (this.tmpSinAngle * this.ellipseA) + this.ellipseCenterX;
        }

        public final float calcY() {
            return (this.tmpCosAngle * this.ellipseB) + this.ellipseCenterY;
        }

        public final float getLinearDX$animation_core() {
            return this.ellipseCenterX;
        }

        public final float getLinearDY$animation_core() {
            return this.ellipseCenterY;
        }

        public final float getLinearX(float f) {
            float f2 = (f - this.time1) * this.oneOverDeltaTime;
            float f3 = this.x1;
            return i8.b(this.x2, f3, f2, f3);
        }

        public final float getLinearY(float f) {
            float f2 = (f - this.time1) * this.oneOverDeltaTime;
            float f3 = this.y1;
            return i8.b(this.y2, f3, f2, f3);
        }

        public final float getTime1() {
            return this.time1;
        }

        public final float getTime2() {
            return this.time2;
        }

        public final void setPoint(float f) {
            double dLookup = lookup((this.vertical == -1.0f ? this.time2 - f : f - this.time1) * this.oneOverDeltaTime) * 1.5707964f;
            this.tmpSinAngle = (float) Math.sin(dLookup);
            this.tmpCosAngle = (float) Math.cos(dLookup);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[PHI: r10
      0x0028: PHI (r10v1 int) = (r10v0 int), (r10v3 int), (r10v4 int) binds: [B:5:0x0018, B:10:0x0021, B:12:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:19:0x0031  */
    public ArcSpline(int[] iArr, float[] fArr, float[][] fArr2) {
        int i;
        int i2 = 1;
        int length = fArr.length - 1;
        Arc[][] arcArr = new Arc[length][];
        int i3 = 1;
        int i4 = 1;
        int i5 = 0;
        while (i5 < length) {
            int i6 = iArr[i5];
            int i7 = 3;
            if (i6 == 0) {
                i = i7;
            } else if (i6 == i2) {
                i3 = i2;
                i = i3;
            } else {
                if (i6 != 2) {
                    if (i6 != 3) {
                        i7 = 4;
                        if (i6 != 4) {
                            i7 = 5;
                            if (i6 != 5) {
                                i = i4;
                            } else {
                                i = i7;
                            }
                        } else {
                            i = i7;
                        }
                    } else {
                        if (i3 != i2) {
                            i3 = i2;
                        }
                        i = i3;
                    }
                }
                i3 = 2;
                i = i3;
            }
            float[] fArr3 = fArr2[i5];
            int i8 = i5 + 1;
            float[] fArr4 = fArr2[i8];
            float f = fArr[i5];
            float f2 = fArr[i8];
            int length2 = (fArr3.length % 2) + (fArr3.length / 2);
            Arc[] arcArr2 = new Arc[length2];
            int i9 = 0;
            while (i9 < length2) {
                int i10 = i9 * 2;
                int i11 = i9;
                int i12 = i10 + 1;
                arcArr2[i11] = new Arc(i, f, f2, fArr3[i10], fArr3[i12], fArr4[i10], fArr4[i12]);
                i9 = i11 + 1;
            }
            arcArr[i5] = arcArr2;
            i5 = i8;
            i4 = i;
            i2 = 1;
        }
        this.arcs = arcArr;
    }

    public final void getPos(float f, float[] fArr) {
        Arc[][] arcArr = this.arcs;
        int length = arcArr.length - 1;
        int i = 0;
        float time1 = arcArr[0][0].getTime1();
        float time2 = arcArr[length][0].getTime2();
        int length2 = fArr.length;
        if (!this.isExtrapolate) {
            f = Math.min(Math.max(f, time1), time2);
        } else if (f < time1 || f > time2) {
            if (f > time2) {
                time1 = time2;
            } else {
                length = 0;
            }
            float f2 = f - time1;
            int i2 = 0;
            while (i < length2 - 1) {
                Arc arc = arcArr[length][i2];
                if (arc.isLinear) {
                    fArr[i] = (arc.ellipseCenterX * f2) + arc.getLinearX(time1);
                    fArr[i + 1] = (arc.ellipseCenterY * f2) + arc.getLinearY(time1);
                } else {
                    arc.setPoint(time1);
                    fArr[i] = (arc.calcDX() * f2) + (arc.tmpSinAngle * arc.ellipseA) + arc.ellipseCenterX;
                    fArr[i + 1] = (arc.calcDY() * f2) + (arc.tmpCosAngle * arc.ellipseB) + arc.ellipseCenterY;
                }
                i += 2;
                i2++;
            }
            return;
        }
        boolean z = false;
        for (Arc[] arcArr2 : arcArr) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < length2 - 1) {
                Arc arc2 = arcArr2[i4];
                if (f <= arc2.getTime2()) {
                    if (arc2.isLinear) {
                        fArr[i3] = arc2.getLinearX(f);
                        fArr[i3 + 1] = arc2.getLinearY(f);
                    } else {
                        arc2.setPoint(f);
                        fArr[i3] = (arc2.tmpSinAngle * arc2.ellipseA) + arc2.ellipseCenterX;
                        fArr[i3 + 1] = (arc2.tmpCosAngle * arc2.ellipseB) + arc2.ellipseCenterY;
                    }
                    z = true;
                }
                i3 += 2;
                i4++;
            }
            if (z) {
                return;
            }
        }
    }

    public final void getSlope(float f, float[] fArr) {
        Arc[][] arcArr = this.arcs;
        float time1 = arcArr[0][0].getTime1();
        float time2 = arcArr[arcArr.length - 1][0].getTime2();
        if (f < time1) {
            f = time1;
        }
        if (f <= time2) {
            time2 = f;
        }
        int length = fArr.length;
        boolean z = false;
        for (Arc[] arcArr2 : arcArr) {
            int i = 0;
            int i2 = 0;
            while (i < length - 1) {
                Arc arc = arcArr2[i2];
                if (time2 <= arc.getTime2()) {
                    if (arc.isLinear) {
                        fArr[i] = arc.ellipseCenterX;
                        fArr[i + 1] = arc.ellipseCenterY;
                    } else {
                        arc.setPoint(time2);
                        fArr[i] = arc.calcDX();
                        fArr[i + 1] = arc.calcDY();
                    }
                    z = true;
                }
                i += 2;
                i2++;
            }
            if (z) {
                return;
            }
        }
    }
}
