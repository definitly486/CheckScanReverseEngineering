package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import defpackage.h2;
import defpackage.kx2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTableReaderKt {
    public static final List<ComposeStackTraceFrame> buildTrace(SlotTableReader slotTableReader) {
        return (slotTableReader.isClosed() || slotTableReader.isEmpty()) ? kx2.b : SlotTableAddresSpaceKt.buildTrace(slotTableReader.getTable().getAddressSpace(), slotTableReader.getParentGroup(), Integer.valueOf(slotTableReader.getSlotIndex()), new ReaderTraceBuilder(slotTableReader));
    }

    public static final List<ComposeStackTraceFrame> traceForGroup(SlotTableReader slotTableReader, int i, Object obj) {
        ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotTableReader);
        SlotTableAddressSpace addressSpace = slotTableReader.getTable().getAddressSpace();
        int[] groups = addressSpace.getGroups();
        int i2 = i;
        while (i2 > 0) {
            readerTraceBuilder.processEdge(slotTableReader.groupKey(i2), slotTableReader.groupObjectKey(i2), addressSpace.sourceInformationOf(i2), obj);
            obj = addressSpace.anchorOfAddress(i2);
            i2 = groups[i2 + 2];
        }
        if (!(i2 != 0)) {
            h2.b(i, "Traversing parent of group not in the slot table: ");
        }
        return readerTraceBuilder.trace();
    }
}
