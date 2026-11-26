package androidx.compose.material3;

import androidx.compose.ui.unit.DpSize;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class DragHandleSizes {
    public static final int $stable = 0;
    private final long draggedSize;
    private final long pressedSize;
    private final long size;

    private DragHandleSizes(long j, long j2, long j3) {
        this.size = j;
        this.pressedSize = j2;
        this.draggedSize = j3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DragHandleSizes)) {
            return false;
        }
        DragHandleSizes dragHandleSizes = (DragHandleSizes) obj;
        return DpSize.m9137equalsimpl0(this.size, dragHandleSizes.size) && DpSize.m9137equalsimpl0(this.pressedSize, dragHandleSizes.pressedSize) && DpSize.m9137equalsimpl0(this.draggedSize, dragHandleSizes.draggedSize);
    }

    /* JADX INFO: renamed from: getDraggedSize-MYxV2XQ, reason: not valid java name */
    public final long m3417getDraggedSizeMYxV2XQ() {
        return this.draggedSize;
    }

    /* JADX INFO: renamed from: getPressedSize-MYxV2XQ, reason: not valid java name */
    public final long m3418getPressedSizeMYxV2XQ() {
        return this.pressedSize;
    }

    /* JADX INFO: renamed from: getSize-MYxV2XQ, reason: not valid java name */
    public final long m3419getSizeMYxV2XQ() {
        return this.size;
    }

    public int hashCode() {
        return DpSize.m9142hashCodeimpl(this.draggedSize) + ((DpSize.m9142hashCodeimpl(this.pressedSize) + (DpSize.m9142hashCodeimpl(this.size) * 31)) * 31);
    }

    public /* synthetic */ DragHandleSizes(long j, long j2, long j3, jh2 jh2Var) {
        this(j, j2, j3);
    }
}
