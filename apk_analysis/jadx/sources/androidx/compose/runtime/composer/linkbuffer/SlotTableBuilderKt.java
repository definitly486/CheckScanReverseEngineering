package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import defpackage.kx2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTableBuilderKt {
    public static final List<ComposeStackTraceFrame> buildTrace(SlotTableBuilder slotTableBuilder) {
        return (slotTableBuilder.isClosed() || slotTableBuilder.isEmpty()) ? kx2.b : SlotTableAddresSpaceKt.buildTrace(slotTableBuilder.getTable().getAddressSpace(), slotTableBuilder.getParentGroup(), Integer.valueOf(slotTableBuilder.getSlotIndex()), new BuilderTraceBuilder(slotTableBuilder));
    }

    public static final boolean contains(int i, int i2) {
        return (i & i2) == i2;
    }

    private static final int lastSiblingOf(int i, SlotTableAddressSpace slotTableAddressSpace) {
        int i2 = -1;
        if (i == -1) {
            return -1;
        }
        int[] groups = slotTableAddressSpace.getGroups();
        while (i >= 0) {
            i2 = i;
            i = groups[i + 1];
        }
        return i2;
    }
}
