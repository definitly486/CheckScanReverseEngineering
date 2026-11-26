package androidx.core.util;

import android.util.LruCache;
import defpackage.bm3;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class LruCacheKt {

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* JADX INFO: renamed from: androidx.core.util.LruCacheKt$lruCache$4, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    public static final class AnonymousClass4<K, V> extends LruCache<K, V> {
        final /* synthetic */ nl3<K, V> $create;
        final /* synthetic */ fm3<Boolean, K, V, V, j59> $onEntryRemoved;
        final /* synthetic */ bm3<K, V, Integer> $sizeOf;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(int i, bm3<? super K, ? super V, Integer> bm3Var, nl3<? super K, ? extends V> nl3Var, fm3<? super Boolean, ? super K, ? super V, ? super V, j59> fm3Var) {
            super(i);
            this.$sizeOf = bm3Var;
            this.$create = nl3Var;
            this.$onEntryRemoved = fm3Var;
        }

        @Override // android.util.LruCache
        public V create(K k) {
            return this.$create.invoke(k);
        }

        @Override // android.util.LruCache
        public void entryRemoved(boolean z, K k, V v, V v2) {
            this.$onEntryRemoved.invoke(Boolean.valueOf(z), k, v, v2);
        }

        @Override // android.util.LruCache
        public int sizeOf(K k, V v) {
            return this.$sizeOf.invoke(k, v).intValue();
        }
    }

    public static final <K, V> LruCache<K, V> lruCache(int i, bm3<? super K, ? super V, Integer> bm3Var, nl3<? super K, ? extends V> nl3Var, fm3<? super Boolean, ? super K, ? super V, ? super V, j59> fm3Var) {
        return new AnonymousClass4(i, bm3Var, nl3Var, fm3Var);
    }

    public static /* synthetic */ LruCache lruCache$default(int i, bm3 bm3Var, nl3 nl3Var, fm3 fm3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bm3Var = new bm3() { // from class: androidx.core.util.LruCacheKt.lruCache.1
                @Override // defpackage.bm3
                public final Integer invoke(Object obj2, Object obj3) {
                    return 1;
                }
            };
        }
        if ((i2 & 4) != 0) {
            nl3Var = new nl3() { // from class: androidx.core.util.LruCacheKt.lruCache.2
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return null;
                }
            };
        }
        if ((i2 & 8) != 0) {
            fm3Var = new fm3() { // from class: androidx.core.util.LruCacheKt.lruCache.3
                @Override // defpackage.fm3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke(((Boolean) obj2).booleanValue(), obj3, obj4, obj5);
                    return j59.a;
                }

                public final void invoke(boolean z, Object obj2, Object obj3, Object obj4) {
                }
            };
        }
        return new AnonymousClass4(i, bm3Var, nl3Var, fm3Var);
    }
}
