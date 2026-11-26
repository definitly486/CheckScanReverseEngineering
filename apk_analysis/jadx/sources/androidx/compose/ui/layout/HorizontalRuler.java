package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class HorizontalRuler extends Ruler {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);

    private HorizontalRuler(bm3<? super Placeable.PlacementScope, ? super Float, Float> bm3Var) {
        super(bm3Var, null);
    }

    @Override // androidx.compose.ui.layout.Ruler
    public float calculateCoordinate$ui(float f, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        return Float.intBitsToFloat((int) (layoutCoordinates2.mo7711localPositionOfR5De75A(layoutCoordinates, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(((int) (layoutCoordinates.mo7710getSizeYbymL2g() >> 32)) / 2.0f)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final HorizontalRuler derived(bm3<? super Placeable.PlacementScope, ? super Float, Float> bm3Var) {
            return new HorizontalRuler(bm3Var, null);
        }

        public final HorizontalRuler maxOf(HorizontalRuler... horizontalRulerArr) {
            return new HorizontalRuler(new HorizontalRuler$Companion$maxOf$1(horizontalRulerArr), null);
        }

        public final HorizontalRuler minOf(HorizontalRuler... horizontalRulerArr) {
            return new HorizontalRuler(new HorizontalRuler$Companion$minOf$1(horizontalRulerArr), null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ HorizontalRuler(bm3 bm3Var, jh2 jh2Var) {
        this(bm3Var);
    }

    public HorizontalRuler() {
        this(null);
    }
}
