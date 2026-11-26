package androidx.compose.ui.text.font;

import androidx.collection.LruCache;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.r57;
import defpackage.vg;

/* JADX INFO: loaded from: classes2.dex */
public final class AsyncTypefaceCache {
    public static final int $stable = 8;
    private final Object PermanentFailure = AsyncTypefaceResult.m8559constructorimpl(null);
    private final LruCache<Key, AsyncTypefaceResult> resultCache = new LruCache<>(16);
    private final MutableScatterMap<Key, AsyncTypefaceResult> permanentCache = ScatterMapKt.mutableScatterMapOf();
    private final SynchronizedObject cacheLock = new SynchronizedObject();

    public static final class AsyncTypefaceResult {
        private final Object result;

        private /* synthetic */ AsyncTypefaceResult(Object obj) {
            this.result = obj;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ AsyncTypefaceResult m8558boximpl(Object obj) {
            return new AsyncTypefaceResult(obj);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static Object m8559constructorimpl(Object obj) {
            return obj;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m8560equalsimpl(Object obj, Object obj2) {
            return (obj2 instanceof AsyncTypefaceResult) && aa4.e(obj, ((AsyncTypefaceResult) obj2).m8565unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m8561equalsimpl0(Object obj, Object obj2) {
            return aa4.e(obj, obj2);
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m8562hashCodeimpl(Object obj) {
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        /* JADX INFO: renamed from: isPermanentFailure-impl, reason: not valid java name */
        public static final boolean m8563isPermanentFailureimpl(Object obj) {
            return obj == null;
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m8564toStringimpl(Object obj) {
            return "AsyncTypefaceResult(result=" + obj + ')';
        }

        public boolean equals(Object obj) {
            return m8560equalsimpl(this.result, obj);
        }

        public final Object getResult() {
            return this.result;
        }

        public int hashCode() {
            return m8562hashCodeimpl(this.result);
        }

        public String toString() {
            return m8564toStringimpl(this.result);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ Object m8565unboximpl() {
            return this.result;
        }
    }

    public static final class Key {
        public static final int $stable = 8;
        private final Font font;
        private final Object loaderKey;

        public Key(Font font, Object obj) {
            this.font = font;
            this.loaderKey = obj;
        }

        public static /* synthetic */ Key copy$default(Key key, Font font, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                font = key.font;
            }
            if ((i & 2) != 0) {
                obj = key.loaderKey;
            }
            return key.copy(font, obj);
        }

        public final Font component1() {
            return this.font;
        }

        public final Object component2() {
            return this.loaderKey;
        }

        public final Key copy(Font font, Object obj) {
            return new Key(font, obj);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return aa4.e(this.font, key.font) && aa4.e(this.loaderKey, key.loaderKey);
        }

        public final Font getFont() {
            return this.font;
        }

        public final Object getLoaderKey() {
            return this.loaderKey;
        }

        public int hashCode() {
            int iHashCode = this.font.hashCode() * 31;
            Object obj = this.loaderKey;
            return iHashCode + (obj == null ? 0 : obj.hashCode());
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Key(font=");
            sb.append(this.font);
            sb.append(", loaderKey=");
            return vg.d(sb, this.loaderKey, ')');
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.AsyncTypefaceCache$runCached$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.text.font.AsyncTypefaceCache", f = "FontListFontFamilyTypefaceAdapter.kt", l = {412}, m = "runCached", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AsyncTypefaceCache.this.runCached(null, null, false, null, this);
        }
    }

    public static /* synthetic */ void put$default(AsyncTypefaceCache asyncTypefaceCache, Font font, PlatformFontLoader platformFontLoader, Object obj, boolean z, int i, Object obj2) {
        if ((i & 8) != 0) {
            z = false;
        }
        asyncTypefaceCache.put(font, platformFontLoader, obj, z);
    }

    /* JADX INFO: renamed from: get-1ASDuI8, reason: not valid java name */
    public final AsyncTypefaceResult m8557get1ASDuI8(Font font, PlatformFontLoader platformFontLoader) {
        AsyncTypefaceResult asyncTypefaceResult;
        Key key = new Key(font, platformFontLoader.getCacheKey());
        synchronized (this.cacheLock) {
            asyncTypefaceResult = this.resultCache.get(key);
            if (asyncTypefaceResult == null) {
                asyncTypefaceResult = this.permanentCache.get(key);
            }
        }
        return asyncTypefaceResult;
    }

    public final void put(Font font, PlatformFontLoader platformFontLoader, Object obj, boolean z) {
        Key key = new Key(font, platformFontLoader.getCacheKey());
        synchronized (this.cacheLock) {
            try {
                if (obj == null) {
                    this.permanentCache.set(key, AsyncTypefaceResult.m8558boximpl(this.PermanentFailure));
                    j59 j59Var = j59.a;
                } else if (z) {
                    this.permanentCache.set(key, AsyncTypefaceResult.m8558boximpl(AsyncTypefaceResult.m8559constructorimpl(obj)));
                    j59 j59Var2 = j59.a;
                } else {
                    this.resultCache.put(key, AsyncTypefaceResult.m8558boximpl(AsyncTypefaceResult.m8559constructorimpl(obj)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object runCached(Font font, PlatformFontLoader platformFontLoader, boolean z, nl3<? super e02<Object>, ? extends Object> nl3Var, e02<Object> e02Var) {
        AnonymousClass1 anonymousClass1;
        Key key;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            Key key2 = new Key(font, platformFontLoader.getCacheKey());
            synchronized (this.cacheLock) {
                try {
                    AsyncTypefaceResult asyncTypefaceResult = this.resultCache.get(key2);
                    if (asyncTypefaceResult == null) {
                        asyncTypefaceResult = this.permanentCache.get(key2);
                    }
                    if (asyncTypefaceResult != null) {
                        return asyncTypefaceResult.m8565unboximpl();
                    }
                    j59 j59Var = j59.a;
                    anonymousClass1.L$0 = key2;
                    anonymousClass1.Z$0 = z;
                    anonymousClass1.label = 1;
                    Object objInvoke = nl3Var.invoke(anonymousClass1);
                    if (objInvoke == a32Var) {
                        return a32Var;
                    }
                    obj = objInvoke;
                    key = key2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = anonymousClass1.Z$0;
            key = (Key) anonymousClass1.L$0;
            r57.b(obj);
        }
        synchronized (this.cacheLock) {
            try {
                if (obj == null) {
                    this.permanentCache.set(key, AsyncTypefaceResult.m8558boximpl(this.PermanentFailure));
                } else if (z) {
                    this.permanentCache.set(key, AsyncTypefaceResult.m8558boximpl(AsyncTypefaceResult.m8559constructorimpl(obj)));
                } else {
                    this.resultCache.put(key, AsyncTypefaceResult.m8558boximpl(AsyncTypefaceResult.m8559constructorimpl(obj)));
                }
                j59 j59Var2 = j59.a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object runCachedBlocking(Font font, PlatformFontLoader platformFontLoader, ll3<? extends Object> ll3Var) {
        synchronized (this.cacheLock) {
            try {
                Key key = new Key(font, platformFontLoader.getCacheKey());
                AsyncTypefaceResult asyncTypefaceResult = (AsyncTypefaceResult) this.resultCache.get(key);
                if (asyncTypefaceResult == null) {
                    asyncTypefaceResult = (AsyncTypefaceResult) this.permanentCache.get(key);
                }
                if (asyncTypefaceResult != null) {
                    return asyncTypefaceResult.m8565unboximpl();
                }
                j59 j59Var = j59.a;
                Object objInvoke = ll3Var.invoke();
                put$default(this, font, platformFontLoader, objInvoke, false, 8, null);
                return objInvoke;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
