package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface PagerLayoutInfo {
    static /* synthetic */ void getReverseLayout$annotations() {
    }

    int getAfterContentPadding();

    int getBeforeContentPadding();

    int getBeyondViewportPageCount();

    Orientation getOrientation();

    int getPageSize();

    int getPageSpacing();

    boolean getReverseLayout();

    SnapPosition getSnapPosition();

    int getViewportEndOffset();

    /* JADX INFO: renamed from: getViewportSize-YbymL2g, reason: not valid java name */
    long mo2300getViewportSizeYbymL2g();

    int getViewportStartOffset();

    List<PageInfo> getVisiblePagesInfo();
}
