package androidx.compose.foundation.lazy.staggeredgrid;

import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridDslKt$items$2$1 implements nl3<Integer, Object> {
    final /* synthetic */ List<T> $items;
    final /* synthetic */ nl3<T, Object> $key;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridDslKt$items$2$1(nl3<? super T, ? extends Object> nl3Var, List<? extends T> list) {
        this.$key = nl3Var;
        this.$items = list;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final Object invoke(int i) {
        return this.$key.invoke((T) this.$items.get(i));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return invoke(num.intValue());
    }
}
