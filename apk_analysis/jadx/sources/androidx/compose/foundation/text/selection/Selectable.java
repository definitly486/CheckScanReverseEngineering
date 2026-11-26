package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;

/* JADX INFO: loaded from: classes.dex */
public interface Selectable {
    void appendSelectableInfoToBuilder(SelectionLayoutBuilder selectionLayoutBuilder);

    Rect getBoundingBox(int i);

    float getCenterYForOffset(int i);

    /* JADX INFO: renamed from: getHandlePosition-dBAh8RU */
    long mo2965getHandlePositiondBAh8RU(Selection selection, boolean z);

    int getLastVisibleOffset();

    LayoutCoordinates getLayoutCoordinates();

    float getLineHeight(int i);

    float getLineLeft(int i);

    float getLineRight(int i);

    /* JADX INFO: renamed from: getRangeOfLineContaining--jx7JFs */
    long mo2966getRangeOfLineContainingjx7JFs(int i);

    Selection getSelectAllSelection();

    long getSelectableId();

    AnnotatedString getText();

    TextLayoutResult textLayoutResult();
}
