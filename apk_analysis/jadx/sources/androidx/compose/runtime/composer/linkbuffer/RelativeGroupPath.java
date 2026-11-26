package androidx.compose.runtime.composer.linkbuffer;

import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
final class RelativeGroupPath extends SourceInformationGroupPath {
    private final int index;
    private final SourceInformationGroupPath parent;

    public RelativeGroupPath(SourceInformationGroupPath sourceInformationGroupPath, int i) {
        super(null);
        this.parent = sourceInformationGroupPath;
        this.index = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RelativeGroupPath)) {
            return false;
        }
        RelativeGroupPath relativeGroupPath = (RelativeGroupPath) obj;
        return aa4.e(relativeGroupPath.parent, this.parent) && relativeGroupPath.index == this.index;
    }

    @Override // androidx.compose.runtime.composer.linkbuffer.SourceInformationGroupPath
    public Object getIdentity(SlotTableAddressSpace slotTableAddressSpace) {
        return new SourceInformationSlotTableGroupIdentity(this.parent.getIdentity(slotTableAddressSpace), this.index);
    }

    public final int getIndex() {
        return this.index;
    }

    public final SourceInformationGroupPath getParent() {
        return this.parent;
    }

    public int hashCode() {
        return this.parent.hashCode() + (this.index * 31);
    }
}
