package defpackage;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemKt;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wm4 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return LazyLayoutMeasuredItemKt.LazyLayoutMeasuredItemIndexComparator$lambda$0((LazyLayoutMeasuredItem) obj, (LazyLayoutMeasuredItem) obj2);
    }
}
