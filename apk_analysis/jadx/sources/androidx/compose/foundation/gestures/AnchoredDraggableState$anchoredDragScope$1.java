package androidx.compose.foundation.gestures;

/* JADX INFO: loaded from: classes.dex */
public final class AnchoredDraggableState$anchoredDragScope$1 implements AnchoredDragScope {
    private float distance = Float.NaN;
    private T leftBound;
    private T rightBound;
    final /* synthetic */ AnchoredDraggableState<T> this$0;

    public AnchoredDraggableState$anchoredDragScope$1(AnchoredDraggableState<T> anchoredDraggableState) {
        this.this$0 = anchoredDraggableState;
    }

    @Override // androidx.compose.foundation.gestures.AnchoredDragScope
    public void dragTo(float f, float f2) {
        float offset = this.this$0.getOffset();
        this.this$0.setOffset(f);
        this.this$0.setLastVelocity(f2);
        if (Float.isNaN(offset)) {
            return;
        }
        updateIfNeeded(f >= offset);
    }

    public final float getDistance() {
        return this.distance;
    }

    public final T getLeftBound() {
        return this.leftBound;
    }

    public final T getRightBound() {
        return this.rightBound;
    }

    public final void setDistance(float f) {
        this.distance = f;
    }

    public final void setLeftBound(T t) {
        this.leftBound = t;
    }

    public final void setRightBound(T t) {
        this.rightBound = t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v14, types: [T, java.lang.Object] */
    public final void updateBounds(boolean z) {
        T currentValue;
        Object currentValue2;
        float fPositionOf = this.this$0.getAnchors().positionOf(this.this$0.getCurrentValue());
        float offset = this.this$0.getOffset();
        AnchoredDraggableState<T> anchoredDraggableState = this.this$0;
        if (offset == fPositionOf) {
            Object objClosestAnchor = this.this$0.getAnchors().closestAnchor(anchoredDraggableState.getOffset() + (z ? 1.0f : -1.0f), z);
            T t = objClosestAnchor;
            if (objClosestAnchor == null) {
                currentValue2 = this.this$0.getCurrentValue();
            }
            if (z) {
                t = currentValue2;
                this.leftBound = this.this$0.getCurrentValue();
                this.rightBound = t;
            } else {
                t = currentValue2;
                this.leftBound = t;
                this.rightBound = this.this$0.getCurrentValue();
            }
        } else {
            Object objClosestAnchor2 = anchoredDraggableState.getAnchors().closestAnchor(this.this$0.getOffset(), false);
            if (objClosestAnchor2 == null) {
                currentValue = objClosestAnchor2;
                currentValue = this.this$0.getCurrentValue();
            }
            currentValue = objClosestAnchor2;
            Object objClosestAnchor3 = this.this$0.getAnchors().closestAnchor(this.this$0.getOffset(), true);
            T currentValue3 = objClosestAnchor3;
            if (objClosestAnchor3 == null) {
                currentValue3 = this.this$0.getCurrentValue();
            }
            this.leftBound = currentValue;
            this.rightBound = currentValue3;
        }
        DraggableAnchors anchors = this.this$0.getAnchors();
        T t2 = this.leftBound;
        t2.getClass();
        float fPositionOf2 = anchors.positionOf(t2);
        DraggableAnchors anchors2 = this.this$0.getAnchors();
        T t3 = this.rightBound;
        t3.getClass();
        this.distance = Math.abs(fPositionOf2 - anchors2.positionOf(t3));
    }

    public final void updateIfNeeded(boolean z) {
        updateBounds(z);
        if (Math.abs(this.this$0.getOffset() - this.this$0.getAnchors().positionOf(this.this$0.getCurrentValue())) >= this.distance / 2.0f) {
            Object currentValue = z ? this.rightBound : this.leftBound;
            if (currentValue == null) {
                currentValue = this.this$0.getCurrentValue();
            }
            if (((Boolean) this.this$0.getConfirmValueChange$foundation().invoke(currentValue)).booleanValue()) {
                this.this$0.setCurrentValue(currentValue);
            }
        }
    }
}
