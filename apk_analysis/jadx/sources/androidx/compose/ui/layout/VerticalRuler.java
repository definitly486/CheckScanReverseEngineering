package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class VerticalRuler extends Ruler {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);

    private VerticalRuler(bm3<? super Placeable.PlacementScope, ? super Float, Float> bm3Var) {
        super(bm3Var, null);
    }

    @Override // androidx.compose.ui.layout.Ruler
    public float calculateCoordinate$ui(float f, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        return Float.intBitsToFloat((int) (layoutCoordinates2.mo7711localPositionOfR5De75A(layoutCoordinates, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(((int) (layoutCoordinates.mo7710getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / 2.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32))) >> 32));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final VerticalRuler derived(bm3<? super Placeable.PlacementScope, ? super Float, Float> bm3Var) {
            return new VerticalRuler(bm3Var, null);
        }

        public final VerticalRuler maxOf(VerticalRuler... verticalRulerArr) {
            return derived(new VerticalRuler$Companion$maxOf$1(verticalRulerArr));
        }

        public final VerticalRuler minOf(VerticalRuler... verticalRulerArr) {
            return derived(new VerticalRuler$Companion$minOf$1(verticalRulerArr));
        }

        private Companion() {
        }
    }

    public /* synthetic */ VerticalRuler(bm3 bm3Var, jh2 jh2Var) {
        this(bm3Var);
    }

    public VerticalRuler() {
        this(null);
    }
}
