package androidx.compose.material3;

import androidx.compose.ui.graphics.Shape;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public final class DragHandleShapes {
    public static final int $stable = 0;
    private final Shape draggedShape;
    private final Shape pressedShape;
    private final Shape shape;

    public DragHandleShapes(Shape shape, Shape shape2, Shape shape3) {
        this.shape = shape;
        this.pressedShape = shape2;
        this.draggedShape = shape3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DragHandleShapes)) {
            return false;
        }
        DragHandleShapes dragHandleShapes = (DragHandleShapes) obj;
        return aa4.e(this.shape, dragHandleShapes.shape) && aa4.e(this.pressedShape, dragHandleShapes.pressedShape) && aa4.e(this.draggedShape, dragHandleShapes.draggedShape);
    }

    public final Shape getDraggedShape() {
        return this.draggedShape;
    }

    public final Shape getPressedShape() {
        return this.pressedShape;
    }

    public final Shape getShape() {
        return this.shape;
    }

    public int hashCode() {
        return this.draggedShape.hashCode() + ((this.pressedShape.hashCode() + (this.shape.hashCode() * 31)) * 31);
    }
}
