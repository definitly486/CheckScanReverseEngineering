package com.warefly.checkscan.shimmer;

import android.content.res.TypedArray;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import defpackage.fg;
import defpackage.jh;
import defpackage.r01;
import defpackage.vh;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public final float[] a = new float[4];
    public final int[] b = new int[4];
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public boolean n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;
    public long s;
    public long t;

    /* JADX INFO: renamed from: com.warefly.checkscan.shimmer.a$a, reason: collision with other inner class name */
    public static class C0174a extends b<C0174a> {
        public C0174a() {
            this.a.p = true;
        }

        @Override // com.warefly.checkscan.shimmer.a.b
        public final b c() {
            return this;
        }
    }

    public static abstract class b<T extends b<T>> {
        public final a a = new a();

        public final a a() {
            a aVar = this.a;
            int i = aVar.f;
            int[] iArr = aVar.b;
            if (i != 1) {
                int i2 = aVar.e;
                iArr[0] = i2;
                int i3 = aVar.d;
                iArr[1] = i3;
                iArr[2] = i3;
                iArr[3] = i2;
            } else {
                int i4 = aVar.d;
                iArr[0] = i4;
                iArr[1] = i4;
                int i5 = aVar.e;
                iArr[2] = i5;
                iArr[3] = i5;
            }
            float[] fArr = aVar.a;
            if (i != 1) {
                fArr[0] = Math.max(((1.0f - aVar.k) - aVar.l) / 2.0f, 0.0f);
                fArr[1] = Math.max(((1.0f - aVar.k) - 0.001f) / 2.0f, 0.0f);
                fArr[2] = Math.min(((aVar.k + 1.0f) + 0.001f) / 2.0f, 1.0f);
                fArr[3] = Math.min(((aVar.k + 1.0f) + aVar.l) / 2.0f, 1.0f);
                return aVar;
            }
            fArr[0] = 0.0f;
            fArr[1] = Math.min(aVar.k, 1.0f);
            fArr[2] = Math.min(aVar.k + aVar.l, 1.0f);
            fArr[3] = 1.0f;
            return aVar;
        }

        public T b(TypedArray typedArray) {
            boolean zHasValue = typedArray.hasValue(3);
            a aVar = this.a;
            if (zHasValue) {
                aVar.n = typedArray.getBoolean(3, aVar.n);
            }
            if (typedArray.hasValue(0)) {
                aVar.o = typedArray.getBoolean(0, aVar.o);
            }
            if (typedArray.hasValue(1)) {
                aVar.e = (((int) (Math.min(1.0f, Math.max(0.0f, typedArray.getFloat(1, 0.3f))) * 255.0f)) << 24) | (aVar.e & ViewCompat.MEASURED_SIZE_MASK);
            }
            if (typedArray.hasValue(11)) {
                aVar.d = (((int) (Math.min(1.0f, Math.max(0.0f, typedArray.getFloat(11, 1.0f))) * 255.0f)) << 24) | (16777215 & aVar.d);
            }
            if (typedArray.hasValue(7)) {
                long j = typedArray.getInt(7, (int) aVar.s);
                if (j < 0) {
                    fg.c(r01.c(j, "Given a negative duration: "));
                    return null;
                }
                aVar.s = j;
            }
            if (typedArray.hasValue(14)) {
                aVar.q = typedArray.getInt(14, aVar.q);
            }
            if (typedArray.hasValue(15)) {
                long j2 = typedArray.getInt(15, (int) aVar.t);
                if (j2 < 0) {
                    fg.c(r01.c(j2, "Given a negative repeat delay: "));
                    return null;
                }
                aVar.t = j2;
            }
            if (typedArray.hasValue(16)) {
                aVar.r = typedArray.getInt(16, aVar.r);
            }
            if (typedArray.hasValue(5)) {
                int i = typedArray.getInt(5, aVar.c);
                if (i == 1) {
                    aVar.c = 1;
                } else if (i == 2) {
                    aVar.c = 2;
                } else if (i != 3) {
                    aVar.c = 0;
                } else {
                    aVar.c = 3;
                }
            }
            if (typedArray.hasValue(17)) {
                if (typedArray.getInt(17, aVar.f) != 1) {
                    aVar.f = 0;
                } else {
                    aVar.f = 1;
                }
            }
            if (typedArray.hasValue(6)) {
                float f = typedArray.getFloat(6, aVar.l);
                if (f < 0.0f) {
                    vh.f("Given invalid dropoff value: ", f);
                    return null;
                }
                aVar.l = f;
            }
            if (typedArray.hasValue(9)) {
                int dimensionPixelSize = typedArray.getDimensionPixelSize(9, aVar.g);
                if (dimensionPixelSize < 0) {
                    fg.c(jh.b(dimensionPixelSize, "Given invalid width: "));
                    return null;
                }
                aVar.g = dimensionPixelSize;
            }
            if (typedArray.hasValue(8)) {
                int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, aVar.h);
                if (dimensionPixelSize2 < 0) {
                    fg.c(jh.b(dimensionPixelSize2, "Given invalid height: "));
                    return null;
                }
                aVar.h = dimensionPixelSize2;
            }
            if (typedArray.hasValue(13)) {
                float f2 = typedArray.getFloat(13, aVar.k);
                if (f2 < 0.0f) {
                    vh.f("Given invalid intensity value: ", f2);
                    return null;
                }
                aVar.k = f2;
            }
            if (typedArray.hasValue(19)) {
                float f3 = typedArray.getFloat(19, aVar.i);
                if (f3 < 0.0f) {
                    vh.f("Given invalid width ratio: ", f3);
                    return null;
                }
                aVar.i = f3;
            }
            if (typedArray.hasValue(10)) {
                float f4 = typedArray.getFloat(10, aVar.j);
                if (f4 < 0.0f) {
                    vh.f("Given invalid height ratio: ", f4);
                    return null;
                }
                aVar.j = f4;
            }
            if (typedArray.hasValue(18)) {
                aVar.m = typedArray.getFloat(18, aVar.m);
            }
            return (T) c();
        }

        public abstract T c();
    }

    public static class c extends b<c> {
        @Override // com.warefly.checkscan.shimmer.a.b
        public final b b(TypedArray typedArray) {
            super.b(typedArray);
            boolean zHasValue = typedArray.hasValue(2);
            a aVar = this.a;
            if (zHasValue) {
                int color = typedArray.getColor(2, aVar.e);
                aVar.e = (color & ViewCompat.MEASURED_SIZE_MASK) | (aVar.e & (-16777216));
            }
            if (typedArray.hasValue(12)) {
                aVar.d = typedArray.getColor(12, aVar.d);
            }
            return this;
        }

        @Override // com.warefly.checkscan.shimmer.a.b
        public final b c() {
            return this;
        }
    }

    public a() {
        new RectF();
        this.c = 0;
        this.d = -1;
        this.e = 1291845631;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 1.0f;
        this.j = 1.0f;
        this.k = 0.0f;
        this.l = 0.5f;
        this.m = 20.0f;
        this.n = true;
        this.o = true;
        this.p = true;
        this.q = -1;
        this.r = 1;
        this.s = 1000L;
    }
}
