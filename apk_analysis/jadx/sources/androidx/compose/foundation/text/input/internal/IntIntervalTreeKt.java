package androidx.compose.foundation.text.input.internal;

/* JADX INFO: loaded from: classes.dex */
public final class IntIntervalTreeKt {
    public static final int LeftVisited = 1;
    public static final int RightVisited = 2;
    public static final int TreeColorBlack = 1;
    public static final int TreeColorDeleted = 2;
    public static final int TreeColorRed = 0;
    public static final int Unvisited = 0;

    public static final boolean intersect(int i, int i2, int i3, int i4) {
        return ((i < i4) & (i3 < i2)) | (((i == i2) | (i3 == i4)) & (i == i3));
    }
}
