package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.MotionReferencePlacementDelegate;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.kx6;
import defpackage.n1;
import defpackage.nl3;
import defpackage.y83;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Placeable implements Measured {
    public static final int $stable = 8;
    private int height;
    private int width;
    private long measuredSize = IntSize.m9208constructorimpl(0);
    private long measurementConstraints = PlaceableKt.DefaultConstraints;
    private long apparentToRealOffset = IntOffset.Companion.m9181getZeronOccac();

    private final void onMeasuredSizeChanged() {
        this.width = kx6.f((int) (this.measuredSize >> 32), Constraints.m8997getMinWidthimpl(this.measurementConstraints), Constraints.m8995getMaxWidthimpl(this.measurementConstraints));
        int iF = kx6.f((int) (this.measuredSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE), Constraints.m8996getMinHeightimpl(this.measurementConstraints), Constraints.m8994getMaxHeightimpl(this.measurementConstraints));
        this.height = iF;
        int i = this.width;
        long j = this.measuredSize;
        this.apparentToRealOffset = IntOffset.m9164constructorimpl((((long) ((i - ((int) (j >> 32))) / 2)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) ((iF - ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) / 2))));
    }

    /* JADX INFO: renamed from: getApparentToRealOffset-nOcc-ac, reason: not valid java name */
    public final long m7762getApparentToRealOffsetnOccac() {
        return this.apparentToRealOffset;
    }

    public final int getHeight() {
        return this.height;
    }

    @Override // androidx.compose.ui.layout.Measured
    public int getMeasuredHeight() {
        return (int) (this.measuredSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: getMeasuredSize-YbymL2g, reason: not valid java name */
    public final long m7763getMeasuredSizeYbymL2g() {
        return this.measuredSize;
    }

    @Override // androidx.compose.ui.layout.Measured
    public int getMeasuredWidth() {
        return (int) (this.measuredSize >> 32);
    }

    /* JADX INFO: renamed from: getMeasurementConstraints-msEJaDk, reason: not valid java name */
    public final long m7764getMeasurementConstraintsmsEJaDk() {
        return this.measurementConstraints;
    }

    public final int getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: placeAt-f8xVGno, reason: not valid java name */
    public void mo7765placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        mo7703placeAtf8xVGno(j, f, (nl3<? super GraphicsLayerScope, j59>) null);
    }

    /* JADX INFO: renamed from: placeAt-f8xVGno */
    public abstract void mo7703placeAtf8xVGno(long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var);

    /* JADX INFO: renamed from: setMeasuredSize-ozmzZPI, reason: not valid java name */
    public final void m7766setMeasuredSizeozmzZPI(long j) {
        if (IntSize.m9211equalsimpl0(this.measuredSize, j)) {
            return;
        }
        this.measuredSize = j;
        onMeasuredSizeChanged();
    }

    /* JADX INFO: renamed from: setMeasurementConstraints-BRTryo0, reason: not valid java name */
    public final void m7767setMeasurementConstraintsBRTryo0(long j) {
        if (Constraints.m8988equalsimpl0(this.measurementConstraints, j)) {
            return;
        }
        this.measurementConstraints = j;
        onMeasuredSizeChanged();
    }

    @PlacementScopeMarker
    public static abstract class PlacementScope implements Density {
        public static final int $stable = 0;
        private boolean motionFrameOfReferencePlacement;

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final void handleMotionFrameOfReferencePlacement(Placeable placeable) {
            if (placeable instanceof MotionReferencePlacementDelegate) {
                ((MotionReferencePlacementDelegate) placeable).updatePlacedUnderMotionFrameOfReference(this.motionFrameOfReferencePlacement);
            }
        }

        public static /* synthetic */ void place$default(PlacementScope placementScope, Placeable placeable, int i, int i2, float f, int i3, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: place");
                return;
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            placementScope.place(placeable, i, i2, f);
        }

        /* JADX INFO: renamed from: place-70tqf50$default, reason: not valid java name */
        public static /* synthetic */ void m7768place70tqf50$default(PlacementScope placementScope, Placeable placeable, long j, float f, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: place-70tqf50");
                return;
            }
            if ((i & 2) != 0) {
                f = 0.0f;
            }
            placementScope.m7774place70tqf50(placeable, j, f);
        }

        public static /* synthetic */ void placeRelative$default(PlacementScope placementScope, Placeable placeable, int i, int i2, float f, int i3, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeRelative");
                return;
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            placementScope.placeRelative(placeable, i, i2, f);
        }

        /* JADX INFO: renamed from: placeRelative-70tqf50$default, reason: not valid java name */
        public static /* synthetic */ void m7769placeRelative70tqf50$default(PlacementScope placementScope, Placeable placeable, long j, float f, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeRelative-70tqf50");
                return;
            }
            if ((i & 2) != 0) {
                f = 0.0f;
            }
            placementScope.m7779placeRelative70tqf50(placeable, j, f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void placeRelativeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2, float f, nl3 nl3Var, int i3, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer");
                return;
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            float f2 = f;
            if ((i3 & 8) != 0) {
                nl3Var = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.placeRelativeWithLayer(placeable, i, i2, f2, (nl3<? super GraphicsLayerScope, j59>) nl3Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: placeRelativeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static /* synthetic */ void m7770placeRelativeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, float f, nl3 nl3Var, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM");
                return;
            }
            if ((i & 2) != 0) {
                f = 0.0f;
            }
            float f2 = f;
            if ((i & 4) != 0) {
                nl3Var = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.m7780placeRelativeWithLayeraW9wM(placeable, j, f2, (nl3<? super GraphicsLayerScope, j59>) nl3Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void placeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2, float f, nl3 nl3Var, int i3, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeWithLayer");
                return;
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            float f2 = f;
            if ((i3 & 8) != 0) {
                nl3Var = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.placeWithLayer(placeable, i, i2, f2, (nl3<? super GraphicsLayerScope, j59>) nl3Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: placeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static /* synthetic */ void m7772placeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, float f, nl3 nl3Var, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM");
                return;
            }
            if ((i & 2) != 0) {
                f = 0.0f;
            }
            float f2 = f;
            if ((i & 4) != 0) {
                nl3Var = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.m7782placeWithLayeraW9wM(placeable, j, f2, (nl3<? super GraphicsLayerScope, j59>) nl3Var);
        }

        public float current(Ruler ruler, float f) {
            return f;
        }

        public LayoutCoordinates getCoordinates() {
            return null;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return 1.0f;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public float getFontScale() {
            return 1.0f;
        }

        public abstract LayoutDirection getParentLayoutDirection();

        public abstract int getParentWidth();

        public final void place(Placeable placeable, int i, int i2, float f) {
            placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32))), f, (nl3<? super GraphicsLayerScope, j59>) null);
        }

        /* JADX INFO: renamed from: place-70tqf50, reason: not valid java name */
        public final void m7774place70tqf50(Placeable placeable, long j, float f) {
            placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, (nl3<? super GraphicsLayerScope, j59>) null);
        }

        /* JADX INFO: renamed from: placeApparentToRealOffset-aW-9-wM$ui, reason: not valid java name */
        public final void m7776placeApparentToRealOffsetaW9wM$ui(Placeable placeable, long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) {
            placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, nl3Var);
        }

        /* JADX INFO: renamed from: placeAutoMirrored-aW-9-wM$ui, reason: not valid java name */
        public final void m7778placeAutoMirroredaW9wM$ui(Placeable placeable, long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) {
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, nl3Var);
                return;
            }
            int parentWidth = (getParentWidth() - placeable.getWidth()) - IntOffset.m9170getXimpl(j);
            placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) IntOffset.m9171getYimpl(j)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) parentWidth) << 32))), f, nl3Var);
        }

        public final void placeRelative(Placeable placeable, int i, int i2, float f) {
            long jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) i) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, jM9164constructorimpl), f, (nl3<? super GraphicsLayerScope, j59>) null);
            } else {
                placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) ((getParentWidth() - placeable.getWidth()) - IntOffset.m9170getXimpl(jM9164constructorimpl))) << 32) | (((long) IntOffset.m9171getYimpl(jM9164constructorimpl)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), f, (nl3<? super GraphicsLayerScope, j59>) null);
            }
        }

        /* JADX INFO: renamed from: placeRelative-70tqf50, reason: not valid java name */
        public final void m7779placeRelative70tqf50(Placeable placeable, long j, float f) {
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, (nl3<? super GraphicsLayerScope, j59>) null);
                return;
            }
            int parentWidth = (getParentWidth() - placeable.getWidth()) - IntOffset.m9170getXimpl(j);
            placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) IntOffset.m9171getYimpl(j)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) parentWidth) << 32))), f, (nl3<? super GraphicsLayerScope, j59>) null);
        }

        public final void placeRelativeWithLayer(Placeable placeable, int i, int i2, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) {
            long jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) i) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, jM9164constructorimpl), f, nl3Var);
            } else {
                placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) ((getParentWidth() - placeable.getWidth()) - IntOffset.m9170getXimpl(jM9164constructorimpl))) << 32) | (((long) IntOffset.m9171getYimpl(jM9164constructorimpl)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), f, nl3Var);
            }
        }

        /* JADX INFO: renamed from: placeRelativeWithLayer-aW-9-wM, reason: not valid java name */
        public final void m7780placeRelativeWithLayeraW9wM(Placeable placeable, long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) {
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, nl3Var);
                return;
            }
            int parentWidth = (getParentWidth() - placeable.getWidth()) - IntOffset.m9170getXimpl(j);
            placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) IntOffset.m9171getYimpl(j)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) parentWidth) << 32))), f, nl3Var);
        }

        public final void placeWithLayer(Placeable placeable, int i, int i2, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) {
            placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32))), f, nl3Var);
        }

        /* JADX INFO: renamed from: placeWithLayer-aW-9-wM, reason: not valid java name */
        public final void m7782placeWithLayeraW9wM(Placeable placeable, long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) {
            placeable.mo7703placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, nl3Var);
        }

        public final void withMotionFrameOfReferencePlacement(nl3<? super PlacementScope, j59> nl3Var) {
            this.motionFrameOfReferencePlacement = true;
            nl3Var.invoke(this);
            this.motionFrameOfReferencePlacement = false;
        }

        /* JADX INFO: renamed from: placeApparentToRealOffset-aW-9-wM$ui, reason: not valid java name */
        public final void m7775placeApparentToRealOffsetaW9wM$ui(Placeable placeable, long j, float f, GraphicsLayer graphicsLayer) {
            placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, graphicsLayer);
        }

        /* JADX INFO: renamed from: placeWithLayer-aW-9-wM, reason: not valid java name */
        public final void m7783placeWithLayeraW9wM(Placeable placeable, long j, GraphicsLayer graphicsLayer, float f) {
            placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, graphicsLayer);
        }

        public final void placeWithLayer(Placeable placeable, int i, int i2, GraphicsLayer graphicsLayer, float f) {
            placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32))), f, graphicsLayer);
        }

        /* JADX INFO: renamed from: placeRelativeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static /* synthetic */ void m7771placeRelativeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, GraphicsLayer graphicsLayer, float f, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM");
                return;
            }
            if ((i & 4) != 0) {
                f = 0.0f;
            }
            placementScope.m7781placeRelativeWithLayeraW9wM(placeable, j, graphicsLayer, f);
        }

        /* JADX INFO: renamed from: placeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static /* synthetic */ void m7773placeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, GraphicsLayer graphicsLayer, float f, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM");
                return;
            }
            if ((i & 4) != 0) {
                f = 0.0f;
            }
            placementScope.m7783placeWithLayeraW9wM(placeable, j, graphicsLayer, f);
        }

        public static /* synthetic */ void placeRelativeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2, GraphicsLayer graphicsLayer, float f, int i3, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer");
                return;
            }
            if ((i3 & 8) != 0) {
                f = 0.0f;
            }
            placementScope.placeRelativeWithLayer(placeable, i, i2, graphicsLayer, f);
        }

        public static /* synthetic */ void placeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2, GraphicsLayer graphicsLayer, float f, int i3, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: placeWithLayer");
                return;
            }
            if ((i3 & 8) != 0) {
                f = 0.0f;
            }
            placementScope.placeWithLayer(placeable, i, i2, graphicsLayer, f);
        }

        /* JADX INFO: renamed from: placeAutoMirrored-aW-9-wM$ui, reason: not valid java name */
        public final void m7777placeAutoMirroredaW9wM$ui(Placeable placeable, long j, float f, GraphicsLayer graphicsLayer) {
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, graphicsLayer);
                return;
            }
            int parentWidth = (getParentWidth() - placeable.getWidth()) - IntOffset.m9170getXimpl(j);
            placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) IntOffset.m9171getYimpl(j)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) parentWidth) << 32))), f, graphicsLayer);
        }

        /* JADX INFO: renamed from: placeRelativeWithLayer-aW-9-wM, reason: not valid java name */
        public final void m7781placeRelativeWithLayeraW9wM(Placeable placeable, long j, GraphicsLayer graphicsLayer, float f) {
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, j), f, graphicsLayer);
                return;
            }
            int parentWidth = (getParentWidth() - placeable.getWidth()) - IntOffset.m9170getXimpl(j);
            placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) IntOffset.m9171getYimpl(j)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) parentWidth) << 32))), f, graphicsLayer);
        }

        public final void placeRelativeWithLayer(Placeable placeable, int i, int i2, GraphicsLayer graphicsLayer, float f) {
            long jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) i) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, jM9164constructorimpl), f, graphicsLayer);
            } else {
                placeable.mo7765placeAtf8xVGno(y83.c(this, placeable, placeable, IntOffset.m9164constructorimpl((((long) ((getParentWidth() - placeable.getWidth()) - IntOffset.m9170getXimpl(jM9164constructorimpl))) << 32) | (((long) IntOffset.m9171getYimpl(jM9164constructorimpl)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), f, graphicsLayer);
            }
        }
    }
}
