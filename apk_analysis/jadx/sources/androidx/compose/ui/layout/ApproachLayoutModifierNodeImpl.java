package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class ApproachLayoutModifierNodeImpl extends Modifier.Node implements ApproachLayoutModifierNode {
    private nl3<? super IntSize, Boolean> isMeasurementApproachInProgress;
    private bm3<? super Placeable.PlacementScope, ? super LayoutCoordinates, Boolean> isPlacementApproachInProgress;
    private dm3<? super ApproachMeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> measureBlock;

    public ApproachLayoutModifierNodeImpl(dm3<? super ApproachMeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> dm3Var, nl3<? super IntSize, Boolean> nl3Var, bm3<? super Placeable.PlacementScope, ? super LayoutCoordinates, Boolean> bm3Var) {
        this.measureBlock = dm3Var;
        this.isMeasurementApproachInProgress = nl3Var;
        this.isPlacementApproachInProgress = bm3Var;
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: approachMeasure-3p2s80s */
    public MeasureResult mo1078approachMeasure3p2s80s(ApproachMeasureScope approachMeasureScope, Measurable measurable, long j) {
        return this.measureBlock.invoke(approachMeasureScope, measurable, Constraints.m8982boximpl(j));
    }

    public final dm3<ApproachMeasureScope, Measurable, Constraints, MeasureResult> getMeasureBlock() {
        return this.measureBlock;
    }

    public final nl3<IntSize, Boolean> isMeasurementApproachInProgress() {
        return this.isMeasurementApproachInProgress;
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: isMeasurementApproachInProgress-ozmzZPI */
    public boolean mo1079isMeasurementApproachInProgressozmzZPI(long j) {
        return this.isMeasurementApproachInProgress.invoke(IntSize.m9205boximpl(j)).booleanValue();
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    public boolean isPlacementApproachInProgress(Placeable.PlacementScope placementScope, LayoutCoordinates layoutCoordinates) {
        return this.isPlacementApproachInProgress.invoke(placementScope, layoutCoordinates).booleanValue();
    }

    public final void setMeasureBlock(dm3<? super ApproachMeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> dm3Var) {
        this.measureBlock = dm3Var;
    }

    public final void setMeasurementApproachInProgress(nl3<? super IntSize, Boolean> nl3Var) {
        this.isMeasurementApproachInProgress = nl3Var;
    }

    public final void setPlacementApproachInProgress(bm3<? super Placeable.PlacementScope, ? super LayoutCoordinates, Boolean> bm3Var) {
        this.isPlacementApproachInProgress = bm3Var;
    }

    public final bm3<Placeable.PlacementScope, LayoutCoordinates, Boolean> isPlacementApproachInProgress() {
        return this.isPlacementApproachInProgress;
    }
}
