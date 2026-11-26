package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.composer.GroupSourceInformation;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;

/* JADX INFO: loaded from: classes2.dex */
public final class ReaderTraceBuilder extends ComposeStackTraceBuilder {
    public static final int $stable = 8;
    private final SlotReader reader;

    public ReaderTraceBuilder(SlotReader slotReader) {
        this.reader = slotReader;
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    public int groupKeyOf(Anchor anchor) {
        SlotReader slotReader = this.reader;
        return slotReader.groupKey(slotReader.getTable$runtime().anchorIndex(GapAnchorKt.asGapAnchor(anchor)));
    }

    @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
    public GroupSourceInformation sourceInformationOf(Anchor anchor) {
        return this.reader.getTable$runtime().sourceInformationOf(this.reader.getTable$runtime().anchorIndex(GapAnchorKt.asGapAnchor(anchor)));
    }
}
