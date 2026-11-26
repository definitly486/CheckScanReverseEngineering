package androidx.compose.foundation.lazy;

import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2 implements nl3<Integer, Object> {
    final /* synthetic */ Object[] $items;

    public LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2(Object[] objArr) {
        this.$items = objArr;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return invoke(num.intValue());
    }

    public final Object invoke(int i) {
        Object obj = this.$items[i];
        return null;
    }
}
