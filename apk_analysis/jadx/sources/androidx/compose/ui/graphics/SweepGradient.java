package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.e2;
import defpackage.jh2;
import defpackage.n7;
import defpackage.qg;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SweepGradient extends ShaderBrush implements Interpolatable {
    public static final int $stable = 0;
    private final long center;
    private final List<Color> colors;
    private final List<Float> stops;

    public /* synthetic */ SweepGradient(long j, List list, List list2, int i, jh2 jh2Var) {
        this(j, list, (i & 4) != 0 ? null : list2, null);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* JADX INFO: renamed from: createShader-uvyYCjk */
    public Shader mo6201createShaderuvyYCjk(long j) {
        long jM5979constructorimpl;
        long j2 = this.center;
        if ((9223372034707292159L & j2) == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            jM5979constructorimpl = SizeKt.m6066getCenteruvyYCjk(j);
        } else {
            float fIntBitsToFloat = Float.intBitsToFloat((int) (Float.intBitsToFloat((int) (j2 >> 32)) == Float.POSITIVE_INFINITY ? j >> 32 : this.center >> 32));
            if (Float.intBitsToFloat((int) (this.center & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) != Float.POSITIVE_INFINITY) {
                j = this.center;
            }
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32));
        }
        return ShaderKt.m6570SweepGradientShader9KIMszo(jM5979constructorimpl, this.colors, this.stops);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SweepGradient)) {
            return false;
        }
        SweepGradient sweepGradient = (SweepGradient) obj;
        return Offset.m5984equalsimpl0(this.center, sweepGradient.center) && aa4.e(this.colors, sweepGradient.colors) && aa4.e(this.stops, sweepGradient.stops);
    }

    /* JADX INFO: renamed from: getCenter-F1C5BW0$ui_graphics, reason: not valid java name */
    public final long m6619getCenterF1C5BW0$ui_graphics() {
        return this.center;
    }

    public final List<Color> getColors$ui_graphics() {
        return this.colors;
    }

    public final List<Float> getStops$ui_graphics() {
        return this.stops;
    }

    public int hashCode() {
        int iB = e2.b(this.colors, Offset.m5989hashCodeimpl(this.center) * 31, 31);
        List<Float> list = this.stops;
        return iB + (list != null ? list.hashCode() : 0);
    }

    @Override // androidx.compose.ui.graphics.Interpolatable
    public Object lerp(Object obj, float f) {
        jh2 jh2Var = null;
        if (obj == null) {
            obj = new SolidColor(Color.Companion.m6267getTransparent0d7_KjU(), jh2Var);
        }
        if (obj instanceof SolidColor) {
            long j = this.center;
            List<Color> list = this.colors;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                list.get(i).m6242unboximpl();
                arrayList.add(Color.m6222boximpl(((SolidColor) obj).m6588getValue0d7_KjU()));
            }
            obj = new SweepGradient(j, arrayList, this.stops, null);
        }
        if (!(obj instanceof SweepGradient)) {
            return null;
        }
        SweepGradient sweepGradient = (SweepGradient) obj;
        return new SweepGradient(OffsetKt.m6010lerpWko1d7g(this.center, sweepGradient.center, f), BrushKt.lerpColorList(this.colors, sweepGradient.colors, f), BrushKt.lerpNullableFloatList(this.stops, sweepGradient.stops, f), null);
    }

    public String toString() {
        String str;
        if ((this.center & 9223372034707292159L) != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            str = "center=" + ((Object) Offset.m5995toStringimpl(this.center)) + ", ";
        } else {
            str = "";
        }
        StringBuilder sbD = n7.d("SweepGradient(", str, "colors=");
        sbD.append(this.colors);
        sbD.append(", stops=");
        return qg.f(sbD, this.stops, ')');
    }

    private SweepGradient(long j, List<Color> list, List<Float> list2) {
        this.center = j;
        this.colors = list;
        this.stops = list2;
    }

    public /* synthetic */ SweepGradient(long j, List list, List list2, jh2 jh2Var) {
        this(j, list, list2);
    }
}
