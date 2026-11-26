package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.tooling.CompositionGroup;
import defpackage.aa4;
import defpackage.h2;
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
        this(slotTable, i, (i3 & 4) != 0 ? slotTable.getVersion() : i2);
    }

    private static final CompositionGroup find$findAnchoredGroup(SlotTableGroup slotTableGroup, LinkAnchor linkAnchor) {
        SlotTableAddressSpace addressSpace = slotTableGroup.table.getAddressSpace();
        if (!addressSpace.ownsAnchor(linkAnchor)) {
            return null;
        }
        int address = linkAnchor.getAddress();
        if (address == slotTableGroup.group) {
            return slotTableGroup;
        }
        int[] groups = addressSpace.getGroups();
        int i = groups[address + 2];
        while (i > 0) {
            if (i == slotTableGroup.group) {
                return new SlotTableGroup(slotTableGroup.table, address, slotTableGroup.version);
            }
            i = groups[i + 2];
        }
        if (i != 0) {
            return null;
        }
        h2.b(address, "Traversing parent of group not in the slot table: ");
        return null;
    }

    private static final CompositionGroup find$findRelativeGroup(CompositionGroup compositionGroup, int i) {
        return (CompositionGroup) qn1.V(qn1.O(compositionGroup.getCompositionGroups(), i));
    }

    private final void validateRead() {
        if (this.table.getVersion() != this.version) {
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
        if (obj instanceof LinkAnchor) {
            return find$findAnchoredGroup(this, (LinkAnchor) obj);
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
        LinkGroupSourceInformation linkGroupSourceInformationSourceInformationOf = this.table.getAddressSpace().sourceInformationOf(this.group);
        SlotTable slotTable = this.table;
        return linkGroupSourceInformationSourceInformationOf != null ? new SourceInformationGroupDataIterator(slotTable, this.group, linkGroupSourceInformationSourceInformationOf) : new DataIterator(slotTable, this.group);
    }

    public final int getGroup() {
        return this.group;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public int getGroupSize() {
        int i;
        SlotTableAddressSpace addressSpace = this.table.getAddressSpace();
        int i2 = this.group;
        int i3 = 0;
        if (i2 < 0) {
            return 0;
        }
        IntStack intStack = new IntStack();
        int[] groups = addressSpace.getGroups();
        int iPop = i2;
        while (true) {
            i3++;
            if (iPop != i2 && (i = groups[iPop + 1]) >= 0) {
                intStack.push(i);
            }
            iPop = groups[iPop + 3];
            if (iPop < 0) {
                if (intStack.tos == 0) {
                    return i3;
                }
                iPop = intStack.pop();
            }
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getIdentity() {
        validateRead();
        return this.table.getAddressSpace().anchorOfAddress(this.group);
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getKey() {
        Object objGroupObjectKey$runtime = this.table.groupObjectKey$runtime(this.group);
        return objGroupObjectKey$runtime == null ? Integer.valueOf(this.table.groupKeyOf$runtime(this.group)) : objGroupObjectKey$runtime;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public Object getNode() {
        return this.table.groupNode$runtime(this.group);
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public int getSlotsSize() {
        int i;
        int i2;
        SlotTableAddressSpace addressSpace = this.table.getAddressSpace();
        int i3 = this.group;
        if (i3 < 0) {
            return 0;
        }
        IntStack intStack = new IntStack();
        int[] groups = addressSpace.getGroups();
        int iPop = i3;
        int i4 = 0;
        while (true) {
            int i5 = this.table.getAddressSpace().getGroups()[iPop + 5];
            if (i5 != -1) {
                SlotTableAddressSpace addressSpace2 = this.table.getAddressSpace();
                if (i5 == -1) {
                    i2 = 0;
                } else {
                    i2 = (i5 & 15) + 1;
                    if (i2 > 15) {
                        i2 = addressSpace2.getLargeSizes().get(i5 >> 4);
                    }
                }
                i4 += i2;
            }
            if (iPop != i3 && (i = groups[iPop + 1]) >= 0) {
                intStack.push(i);
            }
            iPop = groups[iPop + 3];
            if (iPop < 0) {
                if (intStack.tos == 0) {
                    return i4;
                }
                iPop = intStack.pop();
            }
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public String getSourceInfo() {
        boolean zGroupHasAux$runtime = this.table.groupHasAux$runtime(this.group);
        SlotTable slotTable = this.table;
        if (zGroupHasAux$runtime) {
            Object objGroupAux$runtime = slotTable.groupAux$runtime(this.group);
            if (objGroupAux$runtime instanceof String) {
                return (String) objGroupAux$runtime;
            }
            return null;
        }
        LinkGroupSourceInformation linkGroupSourceInformationSourceInformationOf = slotTable.getAddressSpace().sourceInformationOf(this.group);
        if (linkGroupSourceInformationSourceInformationOf != null) {
            return linkGroupSourceInformationSourceInformationOf.getSourceInformation();
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
        return this.table.firstChildOf$runtime(this.group) == -1;
    }

    @Override // java.lang.Iterable
    public Iterator<CompositionGroup> iterator() {
        validateRead();
        LinkGroupSourceInformation linkGroupSourceInformationSourceInformationOf = this.table.getAddressSpace().sourceInformationOf(this.group);
        SlotTable slotTable = this.table;
        if (linkGroupSourceInformationSourceInformationOf == null) {
            return new GroupIterator(slotTable, slotTable.firstChildOf$runtime(this.group));
        }
        int i = this.group;
        return new SourceInformationGroupIterator(slotTable, i, linkGroupSourceInformationSourceInformationOf, new AnchoredGroupPath(i));
    }

    public SlotTableGroup(SlotTable slotTable, int i, int i2) {
        this.table = slotTable;
        this.group = i;
        this.version = i2;
    }
}
