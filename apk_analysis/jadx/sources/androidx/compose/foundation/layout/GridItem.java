package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class GridItem {
    private final Alignment alignment;
    private int column;
    private int columnSpan;
    private final Measurable measurable;
    private int offsetX;
    private int offsetY;
    private Placeable placeable;
    private int row;
    private int rowSpan;

    public /* synthetic */ GridItem(Measurable measurable, int i, int i2, int i3, int i4, Alignment alignment, Placeable placeable, int i5, int i6, int i7, jh2 jh2Var) {
        this(measurable, i, i2, i3, i4, alignment, (i7 & 64) != 0 ? null : placeable, (i7 & 128) != 0 ? 0 : i5, (i7 & 256) != 0 ? 0 : i6);
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final int getColumn() {
        return this.column;
    }

    public final int getColumnSpan() {
        return this.columnSpan;
    }

    public final Measurable getMeasurable() {
        return this.measurable;
    }

    public final int getOffsetX() {
        return this.offsetX;
    }

    public final int getOffsetY() {
        return this.offsetY;
    }

    public final Placeable getPlaceable() {
        return this.placeable;
    }

    public final int getRow() {
        return this.row;
    }

    public final int getRowSpan() {
        return this.rowSpan;
    }

    public final void setColumn(int i) {
        this.column = i;
    }

    public final void setColumnSpan(int i) {
        this.columnSpan = i;
    }

    public final void setOffsetX(int i) {
        this.offsetX = i;
    }

    public final void setOffsetY(int i) {
        this.offsetY = i;
    }

    public final void setPlaceable(Placeable placeable) {
        this.placeable = placeable;
    }

    public final void setRow(int i) {
        this.row = i;
    }

    public final void setRowSpan(int i) {
        this.rowSpan = i;
    }

    public GridItem(Measurable measurable, int i, int i2, int i3, int i4, Alignment alignment, Placeable placeable, int i5, int i6) {
        this.measurable = measurable;
        this.row = i;
        this.column = i2;
        this.rowSpan = i3;
        this.columnSpan = i4;
        this.alignment = alignment;
        this.placeable = placeable;
        this.offsetX = i5;
        this.offsetY = i6;
    }
}
