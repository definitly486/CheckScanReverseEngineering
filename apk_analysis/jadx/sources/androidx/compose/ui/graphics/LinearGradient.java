package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.jh2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class LinearGradient extends ShaderBrush implements Interpolatable {
    public static final int $stable = 0;
    private final List<Color> colors;
    private final long end;
    private final long start;
    private final List<Float> stops;
    private final int tileMode;

    public /* synthetic */ LinearGradient(List list, List list2, long j, long j2, int i, int i2, jh2 jh2Var) {
        this(list, (i2 & 2) != 0 ? null : list2, j, j2, (i2 & 16) != 0 ? TileMode.Companion.m6627getClamp3opZhB0() : i, null);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* JADX INFO: renamed from: createShader-uvyYCjk */
    public Shader mo6201createShaderuvyYCjk(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (Float.intBitsToFloat((int) (this.start >> 32)) == Float.POSITIVE_INFINITY ? j >> 32 : this.start >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (Float.intBitsToFloat((int) (this.start & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == Float.POSITIVE_INFINITY ? j & MuxerUtil.UNSIGNED_INT_MAX_VALUE : this.start & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (Float.intBitsToFloat((int) (this.end >> 32)) == Float.POSITIVE_INFINITY ? j >> 32 : this.end >> 32));
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (Float.intBitsToFloat((int) (this.end & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == Float.POSITIVE_INFINITY ? j & MuxerUtil.UNSIGNED_INT_MAX_VALUE : this.end & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        List<Color> list = this.colors;
        List<Float> list2 = this.stops;
        return ShaderKt.m6566LinearGradientShaderVjE6UOU(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fIntBitsToFloat3)) << 32)), list, list2, this.tileMode);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinearGradient)) {
            return false;
        }
        LinearGradient linearGradient = (LinearGradient) obj;
        return aa4.e(this.colors, linearGradient.colors) && aa4.e(this.stops, linearGradient.stops) && Offset.m5984equalsimpl0(this.start, linearGradient.start) && Offset.m5984equalsimpl0(this.end, linearGradient.end) && TileMode.m6623equalsimpl0(this.tileMode, linearGradient.tileMode);
    }

    public final List<Color> getColors$ui_graphics() {
        return this.colors;
    }

    /* JADX INFO: renamed from: getEnd-F1C5BW0$ui_graphics, reason: not valid java name */
    public final long m6471getEndF1C5BW0$ui_graphics() {
        return this.end;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    public long mo6178getIntrinsicSizeNHjbRc() {
        float fAbs = Float.NaN;
        float fAbs2 = (Math.abs(Float.intBitsToFloat((int) (this.start >> 32))) > Float.MAX_VALUE || Math.abs(Float.intBitsToFloat((int) (this.end >> 32))) > Float.MAX_VALUE) ? Float.NaN : Math.abs(Float.intBitsToFloat((int) (this.start >> 32)) - Float.intBitsToFloat((int) (this.end >> 32)));
        if (Math.abs(Float.intBitsToFloat((int) (this.start & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) <= Float.MAX_VALUE && Math.abs(Float.intBitsToFloat((int) (this.end & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) <= Float.MAX_VALUE) {
            fAbs = Math.abs(Float.intBitsToFloat((int) (this.start & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - Float.intBitsToFloat((int) (this.end & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        }
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fAbs2)) << 32) | (((long) Float.floatToRawIntBits(fAbs)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getStart-F1C5BW0$ui_graphics, reason: not valid java name */
    public final long m6472getStartF1C5BW0$ui_graphics() {
        return this.start;
    }

    public final List<Float> getStops$ui_graphics() {
        return this.stops;
    }

    /* JADX INFO: renamed from: getTileMode-3opZhB0$ui_graphics, reason: not valid java name */
    public final int m6473getTileMode3opZhB0$ui_graphics() {
        return this.tileMode;
    }

    public int hashCode() {
        int iHashCode = this.colors.hashCode() * 31;
        List<Float> list = this.stops;
        return TileMode.m6624hashCodeimpl(this.tileMode) + ((Offset.m5989hashCodeimpl(this.end) + ((Offset.m5989hashCodeimpl(this.start) + ((iHashCode + (list != null ? list.hashCode() : 0)) * 31)) * 31)) * 31);
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
            obj = new LinearGradient(arrayList, this.stops, this.start, this.end, this.tileMode, null);
        }
        if (!(obj instanceof LinearGradient)) {
            return null;
        }
        LinearGradient linearGradient = (LinearGradient) obj;
        List<Color> listLerpColorList = BrushKt.lerpColorList(this.colors, linearGradient.colors, f);
        List<Float> listLerpNullableFloatList = BrushKt.lerpNullableFloatList(this.stops, linearGradient.stops, f);
        long jM6200lerpSafeWko1d7g = BrushKt.m6200lerpSafeWko1d7g(this.start, linearGradient.start, f);
        long jM6200lerpSafeWko1d7g2 = BrushKt.m6200lerpSafeWko1d7g(this.end, linearGradient.end, f);
        if (f >= 0.5f) {
            this = linearGradient;
        }
        return new LinearGradient(listLerpColorList, listLerpNullableFloatList, jM6200lerpSafeWko1d7g, jM6200lerpSafeWko1d7g2, this.tileMode, null);
    }

    public String toString() {
        String str;
        String str2 = "";
        if (((((this.start & androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase) ^ androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase) - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0) {
            str = "start=" + ((Object) Offset.m5995toStringimpl(this.start)) + ", ";
        } else {
            str = "";
        }
        if ((((androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase ^ (this.end & androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase)) - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0) {
            str2 = "end=" + ((Object) Offset.m5995toStringimpl(this.end)) + ", ";
        }
        return "LinearGradient(colors=" + this.colors + ", stops=" + this.stops + ", " + str + str2 + "tileMode=" + ((Object) TileMode.m6625toStringimpl(this.tileMode)) + ')';
    }

    private LinearGradient(List<Color> list, List<Float> list2, long j, long j2, int i) {
        this.colors = list;
        this.stops = list2;
        this.start = j;
        this.end = j2;
        this.tileMode = i;
    }

    public /* synthetic */ LinearGradient(List list, List list2, long j, long j2, int i, jh2 jh2Var) {
        this(list, list2, j, j2, i);
    }
}
