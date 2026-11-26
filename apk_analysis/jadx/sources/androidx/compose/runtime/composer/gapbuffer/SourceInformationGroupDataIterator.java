package androidx.compose.runtime.composer.gapbuffer;

import defpackage.re4;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class SourceInformationGroupDataIterator implements Iterable<Object>, Iterator<Object>, re4 {
    private final int base;
    private final int end;
    private final BitVector filter;
    private int index;
    private final int start;
    private final SlotTable table;

    public SourceInformationGroupDataIterator(SlotTable slotTable, int i, GapGroupSourceInformation gapGroupSourceInformation) {
        this.table = slotTable;
        int i2 = slotTable.getGroups()[(i * 5) + 4];
        this.base = i2;
        this.start = gapGroupSourceInformation.getDataStartOffset();
        int dataEndOffset = gapGroupSourceInformation.getDataEndOffset();
        if (dataEndOffset <= 0) {
            int i3 = i + 1;
            dataEndOffset = (i3 < slotTable.getGroupsSize() ? slotTable.getGroups()[(i3 * 5) + 4] : slotTable.getSlotsSize()) - i2;
        }
        this.end = dataEndOffset;
        BitVector bitVector = new BitVector();
        ArrayList<Object> groups = gapGroupSourceInformation.getGroups();
        if (groups != null) {
            int size = groups.size();
            for (int i4 = 0; i4 < size; i4++) {
                Object obj = groups.get(i4);
                if (obj instanceof GapGroupSourceInformation) {
                    GapGroupSourceInformation gapGroupSourceInformation2 = (GapGroupSourceInformation) obj;
                    bitVector.setRange(gapGroupSourceInformation2.getDataStartOffset(), gapGroupSourceInformation2.getDataEndOffset());
                }
            }
        }
        this.filter = bitVector;
        this.index = bitVector.nextClear(this.start);
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
        Object obj;
        int i = this.end;
        int i2 = this.index;
        if (i2 < 0 || i2 >= i) {
            obj = null;
        } else {
            Object[] objArrM5441getSlots = this.table.m5441getSlots();
            int i3 = this.base;
            int i4 = this.index;
            obj = objArrM5441getSlots[i3 + i4];
            i2 = i4;
        }
        this.index = this.filter.nextClear(i2 + 1);
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
