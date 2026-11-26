package androidx.collection;

import defpackage.bm3;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LruCacheKt {
    private static final long MAX_SIZE = 2147483647L;

    /* JADX INFO: renamed from: androidx.collection.LruCacheKt$lruCache$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        @Override // defpackage.bm3
        public final Integer invoke(Object obj, Object obj2) {
            obj.getClass();
            obj2.getClass();
            return 1;
        }
    }

    /* JADX INFO: renamed from: androidx.collection.LruCacheKt$lruCache$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3 {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Object invoke(Object obj) {
            obj.getClass();
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* JADX INFO: renamed from: androidx.collection.LruCacheKt$lruCache$4, reason: invalid class name */
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

        @Override // androidx.collection.LruCache
        public V create(K k) {
            k.getClass();
            return this.$create.invoke(k);
        }

        @Override // androidx.collection.LruCache
        public void entryRemoved(boolean z, K k, V v, V v2) {
            k.getClass();
            v.getClass();
            this.$onEntryRemoved.invoke(Boolean.valueOf(z), k, v, v2);
        }

        @Override // androidx.collection.LruCache
        public int sizeOf(K k, V v) {
            k.getClass();
            v.getClass();
            return this.$sizeOf.invoke(k, v).intValue();
        }
    }

    public static final <K, V> LruCache<K, V> lruCache(int i, bm3<? super K, ? super V, Integer> bm3Var, nl3<? super K, ? extends V> nl3Var, fm3<? super Boolean, ? super K, ? super V, ? super V, j59> fm3Var) {
        bm3Var.getClass();
        nl3Var.getClass();
        fm3Var.getClass();
        return new AnonymousClass4(i, bm3Var, nl3Var, fm3Var);
    }

    public static /* synthetic */ LruCache lruCache$default(int i, bm3 bm3Var, nl3 nl3Var, fm3 fm3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bm3Var = AnonymousClass1.INSTANCE;
        }
        if ((i2 & 4) != 0) {
            nl3Var = AnonymousClass2.INSTANCE;
        }
        if ((i2 & 8) != 0) {
            fm3Var = AnonymousClass3.INSTANCE;
        }
        bm3Var.getClass();
        nl3Var.getClass();
        fm3Var.getClass();
        return new AnonymousClass4(i, bm3Var, nl3Var, fm3Var);
    }

    /* JADX INFO: renamed from: androidx.collection.LruCacheKt$lruCache$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements fm3 {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        public AnonymousClass3() {
            super(4);
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
            invoke(((Boolean) obj).booleanValue(), obj2, obj3, obj4);
            return j59.a;
        }

        public final void invoke(boolean z, Object obj, Object obj2, Object obj3) {
            obj.getClass();
            obj2.getClass();
        }
    }
}
