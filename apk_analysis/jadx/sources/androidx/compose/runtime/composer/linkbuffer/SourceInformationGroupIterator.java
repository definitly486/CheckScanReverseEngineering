package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.tooling.CompositionGroup;
import defpackage.av;
import defpackage.re4;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class SourceInformationGroupIterator implements Iterator<CompositionGroup>, re4 {
    private final LinkGroupSourceInformation group;
    private int index;
    private final int parent;
    private final SourceInformationGroupPath path;
    private final SlotTable table;
    private final int version;

    public SourceInformationGroupIterator(SlotTable slotTable, int i, LinkGroupSourceInformation linkGroupSourceInformation, SourceInformationGroupPath sourceInformationGroupPath) {
        this.table = slotTable;
        this.parent = i;
        this.group = linkGroupSourceInformation;
        this.path = sourceInformationGroupPath;
        this.version = slotTable.getVersion();
    }

    public final LinkGroupSourceInformation getGroup() {
        return this.group;
    }

    public final int getParent() {
        return this.parent;
    }

    public final SourceInformationGroupPath getPath() {
        return this.path;
    }

    public final SlotTable getTable() {
        return this.table;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        ArrayList<Object> groups = this.group.getGroups();
        return groups != null && this.index < groups.size();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public CompositionGroup next() {
        Object obj;
        ArrayList<Object> groups = this.group.getGroups();
        if (groups != null) {
            int i = this.index;
            this.index = i + 1;
            obj = groups.get(i);
        } else {
            obj = null;
        }
        if (obj instanceof LinkAnchor) {
            return new SlotTableGroup(this.table, ((LinkAnchor) obj).getAddress(), this.version);
        }
        if (obj instanceof LinkGroupSourceInformation) {
            return new SourceInformationSlotTableGroup(this.table, this.parent, (LinkGroupSourceInformation) obj, new RelativeGroupPath(this.path, this.index - 1));
        }
        throw av.b("Unexpected group information structure");
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
