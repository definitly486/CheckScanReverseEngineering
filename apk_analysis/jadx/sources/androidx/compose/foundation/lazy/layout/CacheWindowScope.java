package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.unit.Density;
import defpackage.bm3;
import defpackage.j59;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CacheWindowScope {
    Density getDensity();

    int getFirstVisibleLineIndex();

    boolean getHasVisibleItems();

    int getLastIndexInLine(int i);

    int getLastLineIndex();

    int getLastVisibleLineIndex();

    int getMainAxisExtraSpaceEnd();

    int getMainAxisExtraSpaceStart();

    int getMainAxisViewportSize();

    int getTotalItemsCount();

    int getVisibleItemLine(int i);

    int getVisibleItemSize(int i);

    int getVisibleLineCount();

    Object getVisibleLineKey(int i);

    List<LazyLayoutPrefetchState.PrefetchHandle> schedulePrefetch(int i, bm3<? super Integer, ? super Integer, j59> bm3Var);
}
