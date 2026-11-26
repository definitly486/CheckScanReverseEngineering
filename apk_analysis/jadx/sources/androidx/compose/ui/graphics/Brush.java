package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.jh2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Brush {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final long intrinsicSize;

    private Brush() {
        this.intrinsicSize = Size.Companion.m6064getUnspecifiedNHjbRc();
    }

    /* JADX INFO: renamed from: applyTo-Pq9zytI, reason: not valid java name */
    public abstract void mo6177applyToPq9zytI(long j, Paint paint, float f);

    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc, reason: not valid java name */
    public long mo6178getIntrinsicSizeNHjbRc() {
        return this.intrinsicSize;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: horizontalGradient-8A-3gB4$default, reason: not valid java name */
        public static /* synthetic */ Brush m6179horizontalGradient8A3gB4$default(Companion companion, List list, float f, float f2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                f = 0.0f;
            }
            if ((i2 & 4) != 0) {
                f2 = Float.POSITIVE_INFINITY;
            }
            if ((i2 & 8) != 0) {
                i = TileMode.Companion.m6627getClamp3opZhB0();
            }
            return companion.m6190horizontalGradient8A3gB4((List<Color>) list, f, f2, i);
        }

        /* JADX INFO: renamed from: linearGradient-mHitzGk$default, reason: not valid java name */
        public static /* synthetic */ Brush m6182linearGradientmHitzGk$default(Companion companion, b36[] b36VarArr, long j, long j2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                j = Offset.Companion.m6003getZeroF1C5BW0();
            }
            long j3 = j;
            if ((i2 & 4) != 0) {
                j2 = Offset.Companion.m6001getInfiniteF1C5BW0();
            }
            long j4 = j2;
            if ((i2 & 8) != 0) {
                i = TileMode.Companion.m6627getClamp3opZhB0();
            }
            return companion.m6193linearGradientmHitzGk((b36<Float, Color>[]) b36VarArr, j3, j4, i);
        }

        /* JADX INFO: renamed from: radialGradient-P_Vx-Ks$default, reason: not valid java name */
        public static /* synthetic */ Brush m6184radialGradientP_VxKs$default(Companion companion, b36[] b36VarArr, long j, float f, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
            }
            long j2 = j;
            if ((i2 & 4) != 0) {
                f = Float.POSITIVE_INFINITY;
            }
            float f2 = f;
            if ((i2 & 8) != 0) {
                i = TileMode.Companion.m6627getClamp3opZhB0();
            }
            return companion.m6195radialGradientP_VxKs((b36<Float, Color>[]) b36VarArr, j2, f2, i);
        }

        /* JADX INFO: renamed from: sweepGradient-Uv8p0NA$default, reason: not valid java name */
        public static /* synthetic */ Brush m6186sweepGradientUv8p0NA$default(Companion companion, b36[] b36VarArr, long j, int i, Object obj) {
            if ((i & 2) != 0) {
                j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
            }
            return companion.m6197sweepGradientUv8p0NA((b36<Float, Color>[]) b36VarArr, j);
        }

        /* JADX INFO: renamed from: verticalGradient-8A-3gB4$default, reason: not valid java name */
        public static /* synthetic */ Brush m6187verticalGradient8A3gB4$default(Companion companion, List list, float f, float f2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                f = 0.0f;
            }
            if ((i2 & 4) != 0) {
                f2 = Float.POSITIVE_INFINITY;
            }
            if ((i2 & 8) != 0) {
                i = TileMode.Companion.m6627getClamp3opZhB0();
            }
            return companion.m6198verticalGradient8A3gB4((List<Color>) list, f, f2, i);
        }

        /* JADX INFO: renamed from: composite-7EN7VTw, reason: not valid java name */
        public final Brush m6189composite7EN7VTw(Brush brush, Brush brush2, int i) {
            return new CompositeShaderBrush(BrushKt.toShaderBrush(brush), BrushKt.toShaderBrush(brush2), i, null);
        }

        /* JADX INFO: renamed from: horizontalGradient-8A-3gB4, reason: not valid java name */
        public final Brush m6191horizontalGradient8A3gB4(b36<Float, Color>[] b36VarArr, float f, float f2, int i) {
            return m6193linearGradientmHitzGk((b36<Float, Color>[]) Arrays.copyOf(b36VarArr, b36VarArr.length), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), i);
        }

        /* JADX INFO: renamed from: linearGradient-mHitzGk, reason: not valid java name */
        public final Brush m6193linearGradientmHitzGk(b36<Float, Color>[] b36VarArr, long j, long j2, int i) {
            ArrayList arrayList = new ArrayList(b36VarArr.length);
            for (b36<Float, Color> b36Var : b36VarArr) {
                arrayList.add(Color.m6222boximpl(b36Var.c.m6242unboximpl()));
            }
            ArrayList arrayList2 = new ArrayList(b36VarArr.length);
            for (b36<Float, Color> b36Var2 : b36VarArr) {
                arrayList2.add(Float.valueOf(b36Var2.b.floatValue()));
            }
            return new LinearGradient(arrayList, arrayList2, j, j2, i, null);
        }

        /* JADX INFO: renamed from: radialGradient-P_Vx-Ks, reason: not valid java name */
        public final Brush m6195radialGradientP_VxKs(b36<Float, Color>[] b36VarArr, long j, float f, int i) {
            ArrayList arrayList = new ArrayList(b36VarArr.length);
            for (b36<Float, Color> b36Var : b36VarArr) {
                arrayList.add(Color.m6222boximpl(b36Var.c.m6242unboximpl()));
            }
            ArrayList arrayList2 = new ArrayList(b36VarArr.length);
            for (b36<Float, Color> b36Var2 : b36VarArr) {
                arrayList2.add(Float.valueOf(b36Var2.b.floatValue()));
            }
            return new RadialGradient(arrayList, arrayList2, j, f, i, null);
        }

        /* JADX INFO: renamed from: sweepGradient-Uv8p0NA, reason: not valid java name */
        public final Brush m6197sweepGradientUv8p0NA(b36<Float, Color>[] b36VarArr, long j) {
            ArrayList arrayList = new ArrayList(b36VarArr.length);
            for (b36<Float, Color> b36Var : b36VarArr) {
                arrayList.add(Color.m6222boximpl(b36Var.c.m6242unboximpl()));
            }
            ArrayList arrayList2 = new ArrayList(b36VarArr.length);
            for (b36<Float, Color> b36Var2 : b36VarArr) {
                arrayList2.add(Float.valueOf(b36Var2.b.floatValue()));
            }
            return new SweepGradient(j, arrayList, arrayList2, null);
        }

        /* JADX INFO: renamed from: verticalGradient-8A-3gB4, reason: not valid java name */
        public final Brush m6199verticalGradient8A3gB4(b36<Float, Color>[] b36VarArr, float f, float f2, int i) {
            return m6193linearGradientmHitzGk((b36<Float, Color>[]) Arrays.copyOf(b36VarArr, b36VarArr.length), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), i);
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: sweepGradient-Uv8p0NA$default, reason: not valid java name */
        public static /* synthetic */ Brush m6185sweepGradientUv8p0NA$default(Companion companion, List list, long j, int i, Object obj) {
            if ((i & 2) != 0) {
                j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
            }
            return companion.m6196sweepGradientUv8p0NA((List<Color>) list, j);
        }

        /* JADX INFO: renamed from: horizontalGradient-8A-3gB4$default, reason: not valid java name */
        public static /* synthetic */ Brush m6180horizontalGradient8A3gB4$default(Companion companion, b36[] b36VarArr, float f, float f2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                f = 0.0f;
            }
            if ((i2 & 4) != 0) {
                f2 = Float.POSITIVE_INFINITY;
            }
            if ((i2 & 8) != 0) {
                i = TileMode.Companion.m6627getClamp3opZhB0();
            }
            return companion.m6191horizontalGradient8A3gB4((b36<Float, Color>[]) b36VarArr, f, f2, i);
        }

        /* JADX INFO: renamed from: verticalGradient-8A-3gB4$default, reason: not valid java name */
        public static /* synthetic */ Brush m6188verticalGradient8A3gB4$default(Companion companion, b36[] b36VarArr, float f, float f2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                f = 0.0f;
            }
            if ((i2 & 4) != 0) {
                f2 = Float.POSITIVE_INFINITY;
            }
            if ((i2 & 8) != 0) {
                i = TileMode.Companion.m6627getClamp3opZhB0();
            }
            return companion.m6199verticalGradient8A3gB4((b36<Float, Color>[]) b36VarArr, f, f2, i);
        }

        /* JADX INFO: renamed from: radialGradient-P_Vx-Ks$default, reason: not valid java name */
        public static /* synthetic */ Brush m6183radialGradientP_VxKs$default(Companion companion, List list, long j, float f, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
            }
            long j2 = j;
            if ((i2 & 4) != 0) {
                f = Float.POSITIVE_INFINITY;
            }
            float f2 = f;
            if ((i2 & 8) != 0) {
                i = TileMode.Companion.m6627getClamp3opZhB0();
            }
            return companion.m6194radialGradientP_VxKs((List<Color>) list, j2, f2, i);
        }

        /* JADX INFO: renamed from: linearGradient-mHitzGk$default, reason: not valid java name */
        public static /* synthetic */ Brush m6181linearGradientmHitzGk$default(Companion companion, List list, long j, long j2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                j = Offset.Companion.m6003getZeroF1C5BW0();
            }
            long j3 = j;
            if ((i2 & 4) != 0) {
                j2 = Offset.Companion.m6001getInfiniteF1C5BW0();
            }
            long j4 = j2;
            if ((i2 & 8) != 0) {
                i = TileMode.Companion.m6627getClamp3opZhB0();
            }
            return companion.m6192linearGradientmHitzGk((List<Color>) list, j3, j4, i);
        }

        /* JADX INFO: renamed from: horizontalGradient-8A-3gB4, reason: not valid java name */
        public final Brush m6190horizontalGradient8A3gB4(List<Color> list, float f, float f2, int i) {
            return m6192linearGradientmHitzGk(list, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), i);
        }

        /* JADX INFO: renamed from: verticalGradient-8A-3gB4, reason: not valid java name */
        public final Brush m6198verticalGradient8A3gB4(List<Color> list, float f, float f2, int i) {
            return m6192linearGradientmHitzGk(list, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), i);
        }

        /* JADX INFO: renamed from: sweepGradient-Uv8p0NA, reason: not valid java name */
        public final Brush m6196sweepGradientUv8p0NA(List<Color> list, long j) {
            return new SweepGradient(j, list, null, null);
        }

        /* JADX INFO: renamed from: linearGradient-mHitzGk, reason: not valid java name */
        public final Brush m6192linearGradientmHitzGk(List<Color> list, long j, long j2, int i) {
            return new LinearGradient(list, null, j, j2, i, null);
        }

        /* JADX INFO: renamed from: radialGradient-P_Vx-Ks, reason: not valid java name */
        public final Brush m6194radialGradientP_VxKs(List<Color> list, long j, float f, int i) {
            return new RadialGradient(list, null, j, f, i, null);
        }
    }

    public /* synthetic */ Brush(jh2 jh2Var) {
        this();
    }
}
