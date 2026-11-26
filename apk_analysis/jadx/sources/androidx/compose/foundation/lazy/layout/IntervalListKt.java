package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.collection.MutableVector;

/* JADX INFO: loaded from: classes.dex */
public final class IntervalListKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> int binarySearch(MutableVector<IntervalList.Interval<T>> mutableVector, int i) {
        int size = mutableVector.getSize() - 1;
        int i2 = 0;
        while (i2 < size) {
            int iB = defpackage.k.b(size, i2, 2, i2);
            int startIndex = mutableVector.content[iB].getStartIndex();
            if (startIndex != i) {
                if (startIndex < i) {
                    i2 = iB + 1;
                    if (i < mutableVector.content[i2].getStartIndex()) {
                    }
                } else {
                    size = iB - 1;
                }
            }
            return iB;
        }
        return i2;
    }
}
