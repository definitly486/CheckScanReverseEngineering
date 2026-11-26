package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import defpackage.aa4;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeStackTraceBuilderKt {
    public static final List<ComposeStackTraceFrame> buildTrace(SlotWriter slotWriter, Object obj, int i, Integer num) {
        int iParent;
        int iGroupKey;
        if (slotWriter.getClosed() || slotWriter.getSize$runtime() == 0) {
            return kx2.b;
        }
        WriterTraceBuilder writerTraceBuilder = new WriterTraceBuilder(slotWriter);
        if (num != null) {
            iParent = num.intValue();
        } else {
            iParent = slotWriter.getParent() < 0 ? slotWriter.parent(i) : slotWriter.getParent();
        }
        if (obj == null) {
            obj = Integer.valueOf(slotWriter.groupSlotIndex(i));
        }
        if (slotWriter.isValid(i)) {
            iGroupKey = slotWriter.groupKey(i);
        } else {
            int iParent2 = iParent >= 0 ? slotWriter.parent(iParent) : iParent;
            iGroupKey = slotWriter.groupKey(iParent);
            int i2 = iParent;
            iParent = iParent2;
            i = i2;
        }
        while (i >= 0) {
            writerTraceBuilder.processEdge(iGroupKey, slotWriter.hasObjectKey(i) ? slotWriter.groupObjectKey(i) : Composer.Companion.getEmpty(), slotWriter.sourceInformationOf$runtime(i), obj);
            obj = slotWriter.anchor(i);
            if (iParent >= 0) {
                int iParent3 = slotWriter.parent(iParent);
                iGroupKey = slotWriter.groupKey(iParent);
                int i3 = iParent;
                iParent = iParent3;
                i = i3;
            } else {
                i = iParent;
            }
        }
        return writerTraceBuilder.trace();
    }

    public static /* synthetic */ List buildTrace$default(SlotWriter slotWriter, Object obj, int i, Integer num, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            obj = null;
        }
        if ((i2 & 2) != 0) {
            i = slotWriter.getCurrentGroup();
        }
        if ((i2 & 4) != 0) {
            num = null;
        }
        return buildTrace(slotWriter, obj, i, num);
    }

    public static final ObjectLocation findLocation(SlotTable slotTable, nl3<Object, Boolean> nl3Var) {
        SlotReader slotReaderOpenReader = slotTable.openReader();
        for (int i = 0; i < slotTable.getGroupsSize(); i++) {
            try {
                if (slotReaderOpenReader.isNode(i) && nl3Var.invoke(slotReaderOpenReader.node(i)).booleanValue()) {
                    ObjectLocation objectLocation = new ObjectLocation(i, null);
                    slotReaderOpenReader.close();
                    return objectLocation;
                }
                int iSlotSize = slotReaderOpenReader.slotSize(i);
                for (int i2 = 0; i2 < iSlotSize; i2++) {
                    if (nl3Var.invoke(slotReaderOpenReader.groupGet(i, i2)).booleanValue()) {
                        ObjectLocation objectLocation2 = new ObjectLocation(i, Integer.valueOf(i2));
                        slotReaderOpenReader.close();
                        return objectLocation2;
                    }
                }
            } catch (Throwable th) {
                slotReaderOpenReader.close();
                throw th;
            }
        }
        j59 j59Var = j59.a;
        slotReaderOpenReader.close();
        return null;
    }

    public static final Integer findSubcompositionContextGroup(SlotTable slotTable, CompositionContext compositionContext) {
        SlotReader slotReaderOpenReader = slotTable.openReader();
        try {
            return findSubcompositionContextGroup$lambda$0$scanGroup(slotReaderOpenReader, compositionContext, 0, slotReaderOpenReader.getSize());
        } finally {
            slotReaderOpenReader.close();
        }
    }

    private static final Integer findSubcompositionContextGroup$lambda$0$scanGroup(SlotReader slotReader, CompositionContext compositionContext, int i, int i2) {
        Integer numFindSubcompositionContextGroup$lambda$0$scanGroup;
        while (true) {
            if (i >= i2) {
                return null;
            }
            int iGroupSize = slotReader.groupSize(i) + i;
            if (slotReader.hasMark(i) && slotReader.groupKey(i) == 206 && aa4.e(slotReader.groupObjectKey(i), ComposerKt.getReference())) {
                Object objGroupGet = slotReader.groupGet(i, 0);
                RememberObserverHolder rememberObserverHolder = objGroupGet instanceof RememberObserverHolder ? (RememberObserverHolder) objGroupGet : null;
                RememberObserver wrapped = rememberObserverHolder != null ? rememberObserverHolder.getWrapped() : null;
                GapComposer.CompositionContextHolder compositionContextHolder = wrapped instanceof GapComposer.CompositionContextHolder ? (GapComposer.CompositionContextHolder) wrapped : null;
                if (compositionContextHolder != null && aa4.e(compositionContextHolder.getRef(), compositionContext)) {
                    return Integer.valueOf(i);
                }
            }
            if (slotReader.containsMark(i) && (numFindSubcompositionContextGroup$lambda$0$scanGroup = findSubcompositionContextGroup$lambda$0$scanGroup(slotReader, compositionContext, i + 1, iGroupSize)) != null) {
                return Integer.valueOf(numFindSubcompositionContextGroup$lambda$0$scanGroup.intValue());
            }
            i = iGroupSize;
        }
    }

    public static final List<ComposeStackTraceFrame> traceForGroup(SlotReader slotReader, int i, Object obj) {
        ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotReader);
        i = slotReader.parent(i);
        GapAnchor gapAnchorAnchor = slotReader.anchor(i);
        while (i >= 0) {
            readerTraceBuilder.processEdge(slotReader.groupKey(i), slotReader.hasObjectKey(i) ? slotReader.groupObjectKey(i) : Composer.Companion.getEmpty(), slotReader.getTable$runtime().sourceInformationOf(i), obj);
            if (i >= 0) {
                GapAnchor gapAnchor = gapAnchorAnchor;
                gapAnchorAnchor = slotReader.anchor(i);
                i = slotReader.parent(i);
                obj = gapAnchor;
            } else {
                obj = gapAnchorAnchor;
            }
        }
        return readerTraceBuilder.trace();
    }

    public static final List<ComposeStackTraceFrame> buildTrace(SlotReader slotReader) {
        Object empty;
        if (!slotReader.getClosed() && slotReader.getSize() != 0) {
            ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotReader);
            int parent = slotReader.getParent();
            Object objValueOf = Integer.valueOf(slotReader.getSlot());
            while (parent >= 0) {
                if (slotReader.hasObjectKey(parent)) {
                    empty = slotReader.groupObjectKey(parent);
                } else {
                    empty = Composer.Companion.getEmpty();
                }
                readerTraceBuilder.processEdge(slotReader.groupKey(parent), empty, slotReader.getTable$runtime().sourceInformationOf(parent), objValueOf);
                objValueOf = slotReader.anchor(parent);
                parent = slotReader.parent(parent);
            }
            return readerTraceBuilder.trace();
        }
        return kx2.b;
    }
}
