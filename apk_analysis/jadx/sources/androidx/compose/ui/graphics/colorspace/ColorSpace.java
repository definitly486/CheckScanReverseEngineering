package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ColorSpace {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    public static final int MaxId = 63;
    public static final int MinId = -1;
    private final int id;
    private final long model;
    private final String name;

    private ColorSpace(String str, long j, int i) {
        this.name = str;
        this.model = j;
        this.id = i;
        if (str.length() == 0) {
            fg.c("The name of a color space cannot be null and must contain at least 1 character");
            throw null;
        }
        if (i < -1 || i > 63) {
            fg.c("The id must be between -1 and 63");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ColorSpace colorSpace = (ColorSpace) obj;
        if (this.id == colorSpace.id && aa4.e(this.name, colorSpace.name)) {
            return ColorModel.m6662equalsimpl0(this.model, colorSpace.model);
        }
        return false;
    }

    public final float[] fromXyz(float f, float f2, float f3) {
        float[] fArr = new float[ColorModel.m6663getComponentCountimpl(this.model)];
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        return fromXyz(fArr);
    }

    public abstract float[] fromXyz(float[] fArr);

    public final int getComponentCount() {
        return ColorModel.m6663getComponentCountimpl(this.model);
    }

    public final int getId$ui_graphics() {
        return this.id;
    }

    public abstract float getMaxValue(int i);

    public abstract float getMinValue(int i);

    /* JADX INFO: renamed from: getModel-xdoWZVw, reason: not valid java name */
    public final long m6671getModelxdoWZVw() {
        return this.model;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return ((ColorModel.m6664hashCodeimpl(this.model) + (this.name.hashCode() * 31)) * 31) + this.id;
    }

    public boolean isSrgb() {
        return false;
    }

    public abstract boolean isWideGamut();

    public String toString() {
        return this.name + " (id=" + this.id + ", model=" + ((Object) ColorModel.m6665toStringimpl(this.model)) + ')';
    }

    public long toXy$ui_graphics(float f, float f2, float f3) {
        float[] xyz = toXyz(f, f2, f3);
        float f4 = xyz[0];
        float f5 = xyz[1];
        return (((long) Float.floatToRawIntBits(f4)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(f5)));
    }

    public final float[] toXyz(float f, float f2, float f3) {
        return toXyz(new float[]{f, f2, f3});
    }

    public abstract float[] toXyz(float[] fArr);

    public float toZ$ui_graphics(float f, float f2, float f3) {
        return toXyz(f, f2, f3)[2];
    }

    /* JADX INFO: renamed from: xyzaToColor-JlNiLsg$ui_graphics, reason: not valid java name */
    public long mo6672xyzaToColorJlNiLsg$ui_graphics(float f, float f2, float f3, float f4, ColorSpace colorSpace) {
        float[] fArrFromXyz = fromXyz(f, f2, f3);
        return ColorKt.Color(fArrFromXyz[0], fArrFromXyz[1], fArrFromXyz[2], f4, colorSpace);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ ColorSpace(String str, long j, jh2 jh2Var) {
        this(str, j);
    }

    public /* synthetic */ ColorSpace(String str, long j, int i, jh2 jh2Var) {
        this(str, j, i);
    }

    private ColorSpace(String str, long j) {
        this(str, j, -1, null);
    }
}
