package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInputEventProcessor {
    public static final int $stable = 8;
    private final HitPathTracker hitPathTracker;
    private boolean isProcessing;
    private final LayoutNode root;
    private final PointerInputChangeEventProducer pointerInputChangeEventProducer = new PointerInputChangeEventProducer();
    private final HitTestResult hitResult = new HitTestResult();

    public PointerInputEventProcessor(LayoutNode layoutNode) {
        this.root = layoutNode;
        this.hitPathTracker = new HitPathTracker(layoutNode.getCoordinates());
    }

    /* JADX INFO: renamed from: process-BIzXfog$default, reason: not valid java name */
    public static /* synthetic */ int m7591processBIzXfog$default(PointerInputEventProcessor pointerInputEventProcessor, PointerInputEvent pointerInputEvent, PositionCalculator positionCalculator, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return pointerInputEventProcessor.m7592processBIzXfog(pointerInputEvent, positionCalculator, z);
    }

    public final void clearPreviouslyHitModifierNodes() {
        this.hitPathTracker.clearPreviouslyHitModifierNodeCache();
    }

    public final LayoutNode getRoot() {
        return this.root;
    }

    /* JADX INFO: renamed from: process-BIzXfog, reason: not valid java name */
    public final int m7592processBIzXfog(PointerInputEvent pointerInputEvent, PositionCalculator positionCalculator, boolean z) {
        int i;
        boolean z2;
        boolean z3;
        if (this.isProcessing) {
            return PointerInputEventProcessorKt.ProcessResult(false, false, false);
        }
        boolean z4 = true;
        try {
            this.isProcessing = true;
            InternalPointerEvent internalPointerEventProduce = this.pointerInputChangeEventProducer.produce(pointerInputEvent, positionCalculator);
            int size = internalPointerEventProduce.getChanges().size();
            while (true) {
                if (i >= size) {
                    z2 = true;
                    break;
                }
                PointerInputChange pointerInputChangeValueAt = internalPointerEventProduce.getChanges().valueAt(i);
                i = (pointerInputChangeValueAt.getPressed() || pointerInputChangeValueAt.getPreviousPressed()) ? 0 : i + 1;
                z2 = false;
                break;
            }
            int size2 = internalPointerEventProduce.getChanges().size();
            for (int i2 = 0; i2 < size2; i2++) {
                PointerInputChange pointerInputChangeValueAt2 = internalPointerEventProduce.getChanges().valueAt(i2);
                if (z2 || PointerEventKt.changedToDownIgnoreConsumed(pointerInputChangeValueAt2)) {
                    LayoutNode.m7924hitTest6fMxITs$ui$default(this.root, pointerInputChangeValueAt2.m7569getPositionF1C5BW0(), this.hitResult, pointerInputChangeValueAt2.m7572getTypeT8wyACA(), false, 8, null);
                    if (!this.hitResult.isEmpty()) {
                        this.hitPathTracker.m7472addHitPathQJqDSyo(pointerInputChangeValueAt2.m7566getIdJ3iCeTQ(), this.hitResult, PointerEventKt.changedToDownIgnoreConsumed(pointerInputChangeValueAt2));
                        this.hitResult.clear();
                    }
                }
            }
            boolean zDispatchChanges = this.hitPathTracker.dispatchChanges(internalPointerEventProduce, z);
            if (internalPointerEventProduce.getSuppressMovementConsumption()) {
                z3 = false;
                break;
            }
            int size3 = internalPointerEventProduce.getChanges().size();
            int i3 = 0;
            while (true) {
                if (i3 >= size3) {
                    z3 = false;
                    break;
                }
                PointerInputChange pointerInputChangeValueAt3 = internalPointerEventProduce.getChanges().valueAt(i3);
                if (PointerEventKt.positionChangedIgnoreConsumed(pointerInputChangeValueAt3) && pointerInputChangeValueAt3.isConsumed()) {
                    z3 = true;
                    break;
                }
                i3++;
            }
            int size4 = internalPointerEventProduce.getChanges().size();
            int i4 = 0;
            while (true) {
                if (i4 >= size4) {
                    z4 = false;
                    break;
                }
                if (internalPointerEventProduce.getChanges().valueAt(i4).isConsumed()) {
                    break;
                }
                i4++;
            }
            return PointerInputEventProcessorKt.ProcessResult(zDispatchChanges, z3, z4);
        } finally {
            this.isProcessing = false;
        }
    }

    public final void processCancel() {
        if (this.isProcessing) {
            return;
        }
        this.pointerInputChangeEventProducer.clear();
        this.hitPathTracker.processCancel();
    }
}
