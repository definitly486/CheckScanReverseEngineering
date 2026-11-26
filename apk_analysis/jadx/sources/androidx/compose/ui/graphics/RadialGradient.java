package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.jn;
import defpackage.xy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class RadialGradient extends ShaderBrush implements Interpolatable {
    public static final int $stable = 0;
    private final long center;
    private final List<Color> colors;
    private final float radius;
    private final List<Float> stops;
    private final int tileMode;

    public /* synthetic */ RadialGradient(List list, List list2, long j, float f, int i, int i2, jh2 jh2Var) {
        this(list, (i2 & 2) != 0 ? null : list2, j, f, (i2 & 16) != 0 ? TileMode.Companion.m6627getClamp3opZhB0() : i, null);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* JADX INFO: renamed from: createShader-uvyYCjk */
    public Shader mo6201createShaderuvyYCjk(long j) {
        float fIntBitsToFloat;
        float fIntBitsToFloat2;
        long j2 = this.center;
        if ((9223372034707292159L & j2) == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            long jM6066getCenteruvyYCjk = SizeKt.m6066getCenteruvyYCjk(j);
            fIntBitsToFloat = Float.intBitsToFloat((int) (jM6066getCenteruvyYCjk >> 32));
            fIntBitsToFloat2 = Float.intBitsToFloat((int) (jM6066getCenteruvyYCjk & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        } else {
            fIntBitsToFloat = Float.intBitsToFloat((int) (Float.intBitsToFloat((int) (j2 >> 32)) == Float.POSITIVE_INFINITY ? j >> 32 : this.center >> 32));
            fIntBitsToFloat2 = Float.intBitsToFloat((int) (Float.intBitsToFloat((int) (this.center & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == Float.POSITIVE_INFINITY ? j & MuxerUtil.UNSIGNED_INT_MAX_VALUE : this.center & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        List<Color> list = this.colors;
        List<Float> list2 = this.stops;
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(fIntBitsToFloat2))));
        float fM6055getMinDimensionimpl = this.radius;
        if (fM6055getMinDimensionimpl == Float.POSITIVE_INFINITY) {
            fM6055getMinDimensionimpl = Size.m6055getMinDimensionimpl(j) / 2.0f;
        }
        return ShaderKt.m6568RadialGradientShader8uybcMk(jM5979constructorimpl, fM6055getMinDimensionimpl, list, list2, this.tileMode);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RadialGradient)) {
            return false;
        }
        RadialGradient radialGradient = (RadialGradient) obj;
        return aa4.e(this.colors, radialGradient.colors) && aa4.e(this.stops, radialGradient.stops) && Offset.m5984equalsimpl0(this.center, radialGradient.center) && this.radius == radialGradient.radius && TileMode.m6623equalsimpl0(this.tileMode, radialGradient.tileMode);
    }

    /* JADX INFO: renamed from: getCenter-F1C5BW0$ui_graphics, reason: not valid java name */
    public final long m6554getCenterF1C5BW0$ui_graphics() {
        return this.center;
    }

    public final List<Color> getColors$ui_graphics() {
        return this.colors;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    public long mo6178getIntrinsicSizeNHjbRc() {
        if ((Float.floatToRawIntBits(this.radius) & Integer.MAX_VALUE) >= 2139095040) {
            return Size.Companion.m6064getUnspecifiedNHjbRc();
        }
        float f = this.radius;
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(f * 2.0f)) << 32) | (((long) Float.floatToRawIntBits(f * 2.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final float getRadius$ui_graphics() {
        return this.radius;
    }

    public final List<Float> getStops$ui_graphics() {
        return this.stops;
    }

    /* JADX INFO: renamed from: getTileMode-3opZhB0$ui_graphics, reason: not valid java name */
    public final int m6555getTileMode3opZhB0$ui_graphics() {
        return this.tileMode;
    }

    public int hashCode() {
        int iHashCode = this.colors.hashCode() * 31;
        List<Float> list = this.stops;
        return TileMode.m6624hashCodeimpl(this.tileMode) + jn.b(this.radius, (Offset.m5989hashCodeimpl(this.center) + ((iHashCode + (list != null ? list.hashCode() : 0)) * 31)) * 31, 31);
    }

    @Override // androidx.compose.ui.graphics.Interpolatable
    public Object lerp(Object obj, float f) {
        jh2 jh2Var = null;
        if (obj == null) {
            obj = new SolidColor(Color.Companion.m6267getTransparent0d7_KjU(), jh2Var);
        }
        if (obj instanceof SolidColor) {
            List<Color> list = this.colors;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                list.get(i).m6242unboximpl();
                arrayList.add(Color.m6222boximpl(((SolidColor) obj).m6588getValue0d7_KjU()));
            }
            obj = new RadialGradient(arrayList, this.stops, this.center, this.radius, this.tileMode, null);
        }
        if (!(obj instanceof RadialGradient)) {
            return null;
        }
        RadialGradient radialGradient = (RadialGradient) obj;
        List<Color> listLerpColorList = BrushKt.lerpColorList(this.colors, radialGradient.colors, f);
        List<Float> listLerpNullableFloatList = BrushKt.lerpNullableFloatList(this.stops, radialGradient.stops, f);
        long jM6010lerpWko1d7g = OffsetKt.m6010lerpWko1d7g(this.center, radialGradient.center, f);
        float fLerp = MathHelpersKt.lerp(this.radius, radialGradient.radius, f);
        if (f >= 0.5f) {
            this = radialGradient;
        }
        return new RadialGradient(listLerpColorList, listLerpNullableFloatList, jM6010lerpWko1d7g, fLerp, this.tileMode, null);
    }

    public String toString() {
        String str;
        if ((this.center & 9223372034707292159L) != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            str = "center=" + ((Object) Offset.m5995toStringimpl(this.center)) + ", ";
        } else {
            str = "";
        }
        return "RadialGradient(colors=" + this.colors + ", stops=" + this.stops + ", " + str + ((Float.floatToRawIntBits(this.radius) & Integer.MAX_VALUE) < 2139095040 ? xy.e(new StringBuilder("radius="), ", ", this.radius) : "") + "tileMode=" + ((Object) TileMode.m6625toStringimpl(this.tileMode)) + ')';
    }

    private RadialGradient(List<Color> list, List<Float> list2, long j, float f, int i) {
        this.colors = list;
        this.stops = list2;
        this.center = j;
        this.radius = f;
        this.tileMode = i;
    }

    public /* synthetic */ RadialGradient(List list, List list2, long j, float f, int i, jh2 jh2Var) {
        this(list, list2, j, f, i);
    }
}
