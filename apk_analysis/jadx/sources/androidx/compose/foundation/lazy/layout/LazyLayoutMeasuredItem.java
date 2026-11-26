package androidx.compose.foundation.lazy.layout;

/* JADX INFO: loaded from: classes.dex */
public interface LazyLayoutMeasuredItem {
    /* JADX INFO: renamed from: getConstraints-msEJaDk */
    long mo2163getConstraintsmsEJaDk();

    int getIndex();

    Object getKey();

    int getLane();

    int getMainAxisSizeWithSpacings();

    boolean getNonScrollableItem();

    /* JADX INFO: renamed from: getOffset-Bjo55l4 */
    long mo2164getOffsetBjo55l4(int i);

    Object getParentData(int i);

    int getPlaceablesCount();

    int getSpan();

    boolean isVertical();

    void position(int i, int i2, int i3, int i4);

    void setNonScrollableItem(boolean z);
}
