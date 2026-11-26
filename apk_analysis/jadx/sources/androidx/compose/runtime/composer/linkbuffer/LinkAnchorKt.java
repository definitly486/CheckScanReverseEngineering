package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.Anchor;
import defpackage.av;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkAnchorKt {
    private static final LinkAnchor NullAnchor = new LinkAnchor(-1);
    private static final LinkAnchor LazyAnchor = new LinkAnchor(0);

    public static final AnchorHandle anchorHandle(SlotTableAddressSpace slotTableAddressSpace, long j) {
        return new AnchorHandle(anchorHandle$anchorOf(slotTableAddressSpace, GroupHandleKt.getGroup(j)), anchorHandle$anchorOf(slotTableAddressSpace, GroupHandleKt.getContext(j)));
    }

    private static final LinkAnchor anchorHandle$anchorOf(SlotTableAddressSpace slotTableAddressSpace, int i) {
        if (i != -1) {
            return i != 0 ? slotTableAddressSpace.anchorOfAddress(i) : LazyAnchor;
        }
        return NullAnchor;
    }

    public static final LinkAnchor asLinkAnchor(Anchor anchor) {
        LinkAnchor linkAnchor = anchor instanceof LinkAnchor ? (LinkAnchor) anchor : null;
        if (linkAnchor != null) {
            return linkAnchor;
        }
        throw av.b("Inconsistent composition");
    }

    public static final LinkAnchor getLazyAnchor() {
        return LazyAnchor;
    }

    public static final LinkAnchor getNullAnchor() {
        return NullAnchor;
    }

    public static final boolean ownsHandle(SlotTableAddressSpace slotTableAddressSpace, AnchorHandle anchorHandle) {
        return anchorHandle.ownedBy$runtime(slotTableAddressSpace);
    }
}
