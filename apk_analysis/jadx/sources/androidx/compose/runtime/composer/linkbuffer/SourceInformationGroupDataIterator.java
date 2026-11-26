package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.composer.gapbuffer.BitVector;
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

    public SourceInformationGroupDataIterator(SlotTable slotTable, int i, LinkGroupSourceInformation linkGroupSourceInformation) {
        this.table = slotTable;
        int i2 = i + 5;
        this.base = slotTable.getAddressSpace().getGroups()[i2] >> 4;
        this.start = linkGroupSourceInformation.getDataStartOffset();
        int dataEndOffset = linkGroupSourceInformation.getDataEndOffset();
        if (dataEndOffset <= 0) {
            SlotTableAddressSpace addressSpace = slotTable.getAddressSpace();
            int i3 = addressSpace.getGroups()[i2];
            if (i3 == -1) {
                dataEndOffset = 0;
            } else {
                dataEndOffset = (i3 & 15) + 1;
                if (dataEndOffset > 15) {
                    dataEndOffset = addressSpace.getLargeSizes().get(i3 >> 4);
                }
            }
        }
        this.end = dataEndOffset;
        BitVector bitVector = new BitVector();
        ArrayList<Object> groups = linkGroupSourceInformation.getGroups();
        if (groups != null) {
            int size = groups.size();
            for (int i4 = 0; i4 < size; i4++) {
                Object obj = groups.get(i4);
                if (obj instanceof LinkGroupSourceInformation) {
                    LinkGroupSourceInformation linkGroupSourceInformation2 = (LinkGroupSourceInformation) obj;
                    bitVector.setRange(linkGroupSourceInformation2.getDataStartOffset(), linkGroupSourceInformation2.getDataEndOffset());
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
            Object[] slots = this.table.getAddressSpace().getSlots();
            int i3 = this.base;
            int i4 = this.index;
            obj = slots[i3 + i4];
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
