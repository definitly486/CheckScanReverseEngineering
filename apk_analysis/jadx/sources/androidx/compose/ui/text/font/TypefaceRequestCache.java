package androidx.compose.ui.text.font;

import androidx.collection.LruCache;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.platform.SynchronizedObject;
import defpackage.h2;
import defpackage.j59;
import defpackage.nl3;
import defpackage.zx;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TypefaceRequestCache {
    public static final int $stable = 8;
    private final SynchronizedObject lock = new SynchronizedObject();
    private final LruCache<TypefaceRequest, TypefaceResult> resultCache = new LruCache<>(16);

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 runCached$lambda$1(TypefaceRequestCache typefaceRequestCache, TypefaceRequest typefaceRequest, TypefaceResult typefaceResult) {
        synchronized (typefaceRequestCache.lock) {
            try {
                boolean cacheable = typefaceResult.getCacheable();
                LruCache<TypefaceRequest, TypefaceResult> lruCache = typefaceRequestCache.resultCache;
                if (cacheable) {
                    lruCache.put(typefaceRequest, typefaceResult);
                } else {
                    lruCache.remove(typefaceRequest);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return j59.a;
    }

    public final TypefaceResult get$ui_text(TypefaceRequest typefaceRequest) {
        TypefaceResult typefaceResult;
        synchronized (this.lock) {
            typefaceResult = this.resultCache.get(typefaceRequest);
        }
        return typefaceResult;
    }

    public final SynchronizedObject getLock$ui_text() {
        return this.lock;
    }

    public final int getSize$ui_text() {
        int size;
        synchronized (this.lock) {
            size = this.resultCache.size();
        }
        return size;
    }

    public final void preWarmCache(List<TypefaceRequest> list, nl3<? super TypefaceRequest, ? extends TypefaceResult> nl3Var) {
        TypefaceResult typefaceResult;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            TypefaceRequest typefaceRequest = list.get(i);
            synchronized (this.lock) {
                typefaceResult = this.resultCache.get(typefaceRequest);
            }
            if (typefaceResult == null) {
                try {
                    TypefaceResult typefaceResultInvoke = nl3Var.invoke(typefaceRequest);
                    if (typefaceResultInvoke instanceof TypefaceResult.Async) {
                        continue;
                    } else {
                        synchronized (this.lock) {
                            this.resultCache.put(typefaceRequest, typefaceResultInvoke);
                        }
                    }
                } catch (Exception e) {
                    h2.e("Could not load font", e);
                    return;
                }
            }
        }
    }

    public final State<Object> runCached(TypefaceRequest typefaceRequest, nl3<? super nl3<? super TypefaceResult, j59>, ? extends TypefaceResult> nl3Var) {
        synchronized (this.lock) {
            TypefaceResult typefaceResult = this.resultCache.get(typefaceRequest);
            if (typefaceResult != null) {
                if (typefaceResult.getCacheable()) {
                    return typefaceResult;
                }
                this.resultCache.remove(typefaceRequest);
            }
            try {
                TypefaceResult typefaceResultInvoke = nl3Var.invoke(new zx(1, this, typefaceRequest));
                synchronized (this.lock) {
                    try {
                        if (this.resultCache.get(typefaceRequest) == null && typefaceResultInvoke.getCacheable()) {
                            this.resultCache.put(typefaceRequest, typefaceResultInvoke);
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return typefaceResultInvoke;
            } catch (Exception e) {
                h2.e("Could not load font", e);
                return null;
            }
        }
    }
}
