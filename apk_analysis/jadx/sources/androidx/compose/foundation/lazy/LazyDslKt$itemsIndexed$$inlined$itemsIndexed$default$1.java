package androidx.compose.foundation.lazy;

import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1 implements nl3<Integer, Object> {
    final /* synthetic */ List $items;

    public LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1(List list) {
        this.$items = list;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return invoke(num.intValue());
    }

    public final Object invoke(int i) {
        this.$items.get(i);
        return null;
    }
}
