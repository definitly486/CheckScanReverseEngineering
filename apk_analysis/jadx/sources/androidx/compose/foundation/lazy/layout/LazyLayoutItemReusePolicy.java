package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.SieveCacheKt;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
final class LazyLayoutItemReusePolicy implements SubcomposeSlotReusePolicy {
    private final MutableObjectIntMap<Object> countPerType = ObjectIntMapKt.mutableObjectIntMapOf();
    private final LazyLayoutItemContentFactory factory;

    public LazyLayoutItemReusePolicy(LazyLayoutItemContentFactory lazyLayoutItemContentFactory) {
        this.factory = lazyLayoutItemContentFactory;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean areCompatible(Object obj, Object obj2) {
        return aa4.e(this.factory.getContentType(obj), this.factory.getContentType(obj2));
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void getSlotsToRetain(SubcomposeSlotReusePolicy.SlotIdsSet slotIdsSet) {
        this.countPerType.clear();
        MutableOrderedScatterSet<Object> set = slotIdsSet.getSet();
        Object[] objArr = set.elements;
        long[] jArr = set.nodes;
        int i = set.tail;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
            Object obj = objArr[i];
            Object contentType = this.factory.getContentType(obj);
            int orDefault = this.countPerType.getOrDefault(contentType, 0);
            if (orDefault == 7) {
                slotIdsSet.remove(obj);
            } else {
                this.countPerType.set(contentType, orDefault + 1);
            }
            i = i2;
        }
    }
}
