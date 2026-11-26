package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.tooling.CompositionGroup;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.qn1;
import defpackage.re4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class SlotTableGroup implements CompositionGroup, Iterable<CompositionGroup>, re4 {
    private final int group;
    private final SlotTable table;
    private final int version;

    public /* synthetic */ SlotTableGroup(SlotTable slotTable, int i, int i2, int i3, jh2 jh2Var) {
        this(slotTable, i, (i3 & 4) != 0 ? slotTable.getVersion$runtime() : i2);
    }

    private static final CompositionGroup find$findAnchoredGroup(SlotTableGroup slotTableGroup, GapAnchor gapAnchor) {
        int iAnchorIndex;
        int i;
        if (!slotTableGroup.table.ownsAnchor(gapAnchor) || (iAnchorIndex = slotTableGroup.table.anchorIndex(gapAnchor)) < (i = slotTableGroup.group) || iAnchorIndex - i >= SlotTableKt.groupSize(slotTableGroup.table.getGroups(), slotTableGroup.group)) {
            return null;
        }
        return new SlotTableGroup(slotTableGroup.table, iAnchorIndex, slotTableGroup.version);
    }

    private static final CompositionGroup find$findRelativeGroup(CompositionGroup compositionGroup, int i) {
        return (CompositionGroup) qn1.V(qn1.O(compositionGroup.getCompositionGroups(), i));
    }

    private final void validateRead() {
        if (this.table.getVersion$runtime() != this.version) {
            SlotTableKt.throwConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SlotTableGroup)) {
            return false;
        }
        SlotTableGroup slotTableGroup = (SlotTableGroup) obj;
        return slotTableGroup.group == this.group && slotTableGroup.version == this.version && aa4.e(slotTableGroup.table, this.table);
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public CompositionGroup find(Object obj) {
        if (obj instanceof GapAnchor) {
            return find$findAnchoredGroup(this, (GapAnchor) obj);
        }
        if (obj instanceof SourceInformationSlotTableGroupIdentity) {
            SourceInformationSlotTableGroupIdentity sourceInformationSlotTableGroupIdentity = (SourceInformationSlotTableGroupIdentity) obj;
            CompositionGroup compositionGroupFind = find(sourceInformationSlotTableGroupIdentity.getParentIdentity());
            if (compositionGroupFind != null) {
                return find$findRelativeGroup(compositionGroupFind, sourceInformationSlotTableGroupIdentity.getIndex());
            }
        }
        return null;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public Iterable<CompositionGroup> getCompositionGroups() {
        return this;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Iterable<Object> getData() {
        GapGroupSourceInformation gapGroupSourceInformationSourceInformationOf = this.table.sourceInformationOf(this.group);
        SlotTable slotTable = this.table;
        return gapGroupSourceInformationSourceInformationOf != null ? new SourceInformationGroupDataIterator(slotTable, this.group, gapGroupSourceInformationSourceInformationOf) : new DataIterator(slotTable, this.group);
    }

    public final int getGroup() {
        return this.group;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public int getGroupSize() {
        return SlotTableKt.groupSize(this.table.getGroups(), this.group);
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getIdentity() {
        validateRead();
        SlotReader slotReaderOpenReader = this.table.openReader();
        try {
            return slotReaderOpenReader.anchor(this.group);
        } finally {
            slotReaderOpenReader.close();
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getKey() {
        int i = this.table.getGroups()[(this.group * 5) + 1] & 536870912;
        SlotTable slotTable = this.table;
        if (i == 0) {
            return Integer.valueOf(slotTable.getGroups()[this.group * 5]);
        }
        Object obj = slotTable.m5441getSlots()[SlotTableKt.objectKeyIndex(this.table.getGroups(), this.group)];
        obj.getClass();
        return obj;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getNode() {
        if ((this.table.getGroups()[(this.group * 5) + 1] & 1073741824) != 0) {
            return this.table.m5441getSlots()[this.table.getGroups()[(this.group * 5) + 4]];
        }
        return null;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public int getSlotsSize() {
        int groupSize = this.group + getGroupSize();
        int groupsSize = this.table.getGroupsSize();
        SlotTable slotTable = this.table;
        return (groupSize < groupsSize ? slotTable.getGroups()[(groupSize * 5) + 4] : slotTable.getSlotsSize()) - this.table.getGroups()[(this.group * 5) + 4];
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public String getSourceInfo() {
        GapGroupSourceInformation gapGroupSourceInformationSourceInformationOf = this.table.sourceInformationOf(this.group);
        if (gapGroupSourceInformationSourceInformationOf != null) {
            return gapGroupSourceInformationSourceInformationOf.getSourceInformation();
        }
        return null;
    }

    public final SlotTable getTable() {
        return this.table;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        return (this.table.hashCode() * 31) + this.group;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        return SlotTableKt.groupSize(this.table.getGroups(), this.group) == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<CompositionGroup> iterator() {
        validateRead();
        GapGroupSourceInformation gapGroupSourceInformationSourceInformationOf = this.table.sourceInformationOf(this.group);
        SlotTable slotTable = this.table;
        if (gapGroupSourceInformationSourceInformationOf != null) {
            int i = this.group;
            return new SourceInformationGroupIterator(slotTable, i, gapGroupSourceInformationSourceInformationOf, new AnchoredGroupPath(i));
        }
        int i2 = this.group;
        return new GroupIterator(slotTable, i2 + 1, SlotTableKt.groupSize(slotTable.getGroups(), this.group) + i2);
    }

    public SlotTableGroup(SlotTable slotTable, int i, int i2) {
        this.table = slotTable;
        this.group = i;
        this.version = i2;
    }
}
