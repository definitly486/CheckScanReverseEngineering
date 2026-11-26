package androidx.compose.foundation.lazy.staggeredgrid;

import defpackage.bm3;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridDslKt$itemsIndexed$2$1 implements nl3<Integer, Object> {
    final /* synthetic */ List<T> $items;
    final /* synthetic */ bm3<Integer, T, Object> $key;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridDslKt$itemsIndexed$2$1(bm3<? super Integer, ? super T, ? extends Object> bm3Var, List<? extends T> list) {
        this.$key = bm3Var;
        this.$items = list;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final Object invoke(int i) {
        return this.$key.invoke(Integer.valueOf(i), (T) this.$items.get(i));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return invoke(num.intValue());
    }
}
