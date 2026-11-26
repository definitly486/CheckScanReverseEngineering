package androidx.compose.runtime.composer.gapbuffer;

import defpackage.re4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class DataIterator implements Iterable<Object>, Iterator<Object>, re4 {
    private final int end;
    private int index;
    private final int start;
    private final SlotTable table;

    public DataIterator(SlotTable slotTable, int i) {
        this.table = slotTable;
        int i2 = slotTable.getGroups()[(i * 5) + 4];
        this.start = i2;
        int i3 = i + 1;
        this.end = i3 < slotTable.getGroupsSize() ? slotTable.getGroups()[(i3 * 5) + 4] : slotTable.getSlotsSize();
        this.index = i2;
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getStart() {
        return this.start;
    }

    public final SlotTable getTable() {
        return this.table;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.end;
    }

    @Override // java.lang.Iterable
    public Iterator<Object> iterator() {
        return this;
    }

    @Override // java.util.Iterator
    public Object next() {
        int i = this.index;
        Object obj = (i < 0 || i >= this.table.m5441getSlots().length) ? null : this.table.m5441getSlots()[this.index];
        this.index++;
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i) {
        this.index = i;
    }
}
