package androidx.compose.runtime.composer.linkbuffer;

import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public final class AnchorHandle {
    public static final int $stable = 8;
    private final LinkAnchor contextAnchor;
    private final LinkAnchor groupAnchor;

    public AnchorHandle(LinkAnchor linkAnchor, LinkAnchor linkAnchor2) {
        this.groupAnchor = linkAnchor;
        this.contextAnchor = linkAnchor2;
    }

    private final boolean ownedBy(SlotTableAddressSpace slotTableAddressSpace, LinkAnchor linkAnchor) {
        if (aa4.e(linkAnchor, LinkAnchorKt.getNullAnchor()) || aa4.e(linkAnchor, LinkAnchorKt.getLazyAnchor())) {
            return true;
        }
        return slotTableAddressSpace.ownsAnchor(linkAnchor);
    }

    public final boolean ownedBy$runtime(SlotTableAddressSpace slotTableAddressSpace) {
        return ownedBy(slotTableAddressSpace, this.groupAnchor) && ownedBy(slotTableAddressSpace, this.contextAnchor);
    }

    public final long toHandle() {
        return (((long) this.contextAnchor.getAddress()) << 32) | (((long) this.groupAnchor.getAddress()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    public String toString() {
        return super.toString() + ": " + this.groupAnchor.getAddress() + ':' + this.contextAnchor.getAddress();
    }
}
