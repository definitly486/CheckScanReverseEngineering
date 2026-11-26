package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class DragHandleColors {
    public static final int $stable = 0;
    private final long color;
    private final long draggedColor;
    private final long pressedColor;

    private DragHandleColors(long j, long j2, long j3) {
        this.color = j;
        this.pressedColor = j2;
        this.draggedColor = j3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DragHandleColors)) {
            return false;
        }
        DragHandleColors dragHandleColors = (DragHandleColors) obj;
        return Color.m6233equalsimpl0(this.color, dragHandleColors.color) && Color.m6233equalsimpl0(this.pressedColor, dragHandleColors.pressedColor) && Color.m6233equalsimpl0(this.draggedColor, dragHandleColors.draggedColor);
    }

    /* JADX INFO: renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m3414getColor0d7_KjU() {
        return this.color;
    }

    /* JADX INFO: renamed from: getDraggedColor-0d7_KjU, reason: not valid java name */
    public final long m3415getDraggedColor0d7_KjU() {
        return this.draggedColor;
    }

    /* JADX INFO: renamed from: getPressedColor-0d7_KjU, reason: not valid java name */
    public final long m3416getPressedColor0d7_KjU() {
        return this.pressedColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.draggedColor) + r01.b(Color.m6239hashCodeimpl(this.color) * 31, 31, this.pressedColor);
    }

    public /* synthetic */ DragHandleColors(long j, long j2, long j3, jh2 jh2Var) {
        this(j, j2, j3);
    }
}
