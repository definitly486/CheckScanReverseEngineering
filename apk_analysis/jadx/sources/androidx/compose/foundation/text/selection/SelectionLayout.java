package androidx.compose.foundation.text.selection;

import androidx.collection.LongObjectMap;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface SelectionLayout {
    LongObjectMap<Selection> createSubSelections(Selection selection);

    void forEachMiddleInfo(nl3<? super SelectableInfo, j59> nl3Var);

    CrossStatus getCrossStatus();

    SelectableInfo getCurrentInfo();

    SelectableInfo getEndInfo();

    int getEndSlot();

    SelectableInfo getFirstInfo();

    SelectableInfo getLastInfo();

    Selection getPreviousSelection();

    int getSize();

    SelectableInfo getStartInfo();

    int getStartSlot();

    boolean isStartHandle();

    boolean shouldRecomputeSelection(SelectionLayout selectionLayout);
}
