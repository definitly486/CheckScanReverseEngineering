package androidx.compose.runtime.composer.linkbuffer;

import defpackage.re4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class DataIterator implements Iterable<Object>, Iterator<Object>, re4 {
    private final int end;
    private final int group;
    private int index;
    private final SlotTable table;

    public DataIterator(SlotTable slotTable, int i) {
        int i2;
        this.table = slotTable;
        this.group = i;
        SlotTableAddressSpace addressSpace = slotTable.getAddressSpace();
        int iGroupSlotRange$runtime = slotTable.groupSlotRange$runtime(i);
        if (iGroupSlotRange$runtime == -1) {
            i2 = 0;
        } else {
            int i3 = (iGroupSlotRange$runtime & 15) + 1;
            i2 = i3 > 15 ? addressSpace.getLargeSizes().get(iGroupSlotRange$runtime >> 4) : i3;
        }
        this.end = i2;
        this.index = GroupFlagsKt.utilitySlotsCountForFlags(slotTable.groupFlags$runtime(i));
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getGroup() {
        return this.group;
    }

    public final int getIndex() {
        return this.index;
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
        SlotTable slotTable = this.table;
        int i = this.group;
        int i2 = this.index;
        this.index = i2 + 1;
        return slotTable.groupSlotAtIndex$runtime(i, i2);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i) {
        this.index = i;
    }
}
