package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutItemContentFactory {
    public static final int $stable = 8;
    private final ll3<LazyLayoutItemProvider> itemProvider;
    private final MutableScatterMap<Object, CachedItemContent> lambdasCache = ScatterMapKt.mutableScatterMapOf();
    private final SaveableStateHolder saveableStateHolder;

    public final class CachedItemContent {
        private bm3<? super Composer, ? super Integer, j59> _content;
        private final Object contentType;
        private int index;
        private final Object key;

        public CachedItemContent(int i, Object obj, Object obj2) {
            this.key = obj;
            this.contentType = obj2;
            this.index = i;
        }

        private final bm3<Composer, Integer, j59> createContentLambda() {
            final LazyLayoutItemContentFactory lazyLayoutItemContentFactory = LazyLayoutItemContentFactory.this;
            return ComposableLambdaKt.composableLambdaInstance(818252804, true, new bm3() { // from class: androidx.compose.foundation.lazy.layout.e
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyLayoutItemContentFactory.CachedItemContent.createContentLambda$lambda$0(lazyLayoutItemContentFactory, this, (Composer) obj, iIntValue);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 createContentLambda$lambda$0(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, final CachedItemContent cachedItemContent, Composer composer, int i) {
            Composer composer2;
            if (composer.shouldExecute((i & 3) != 2, i & 1)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(818252804, i, -1, "androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory.CachedItemContent.createContentLambda.<anonymous> (LazyLayoutItemContentFactory.kt:85)");
                }
                LazyLayoutItemProvider lazyLayoutItemProviderInvoke = lazyLayoutItemContentFactory.getItemProvider().invoke();
                int index = cachedItemContent.index;
                if ((index >= lazyLayoutItemProviderInvoke.getItemCount() || !aa4.e(lazyLayoutItemProviderInvoke.getKey(index), cachedItemContent.key)) && (index = lazyLayoutItemProviderInvoke.getIndex(cachedItemContent.key)) != -1) {
                    cachedItemContent.index = index;
                }
                int i2 = index;
                if (i2 != -1) {
                    composer.startReplaceGroup(-1664741271);
                    composer2 = composer;
                    LazyLayoutItemContentFactoryKt.m2219SkippableItemJVlU9Rs(lazyLayoutItemProviderInvoke, StableValue.m2246constructorimpl(lazyLayoutItemContentFactory.saveableStateHolder), i2, StableValue.m2246constructorimpl(cachedItemContent.key), composer2, 0);
                    composer2.endReplaceGroup();
                } else {
                    composer2 = composer;
                    composer2.startReplaceGroup(-1664505826);
                    composer2.endReplaceGroup();
                }
                Object obj = cachedItemContent.key;
                boolean zChangedInstance = composer2.changedInstance(cachedItemContent);
                Object objRememberedValue = composer2.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new nl3() { // from class: androidx.compose.foundation.lazy.layout.f
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj2) {
                            return LazyLayoutItemContentFactory.CachedItemContent.createContentLambda$lambda$0$0$0(this.b, (DisposableEffectScope) obj2);
                        }
                    };
                    composer2.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.DisposableEffect(obj, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue, composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composer.skipToGroupEnd();
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final DisposableEffectResult createContentLambda$lambda$0$0$0(final CachedItemContent cachedItemContent, DisposableEffectScope disposableEffectScope) {
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$lambda$0$0$0$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void dispose() {
                    this.this$0._content = null;
                }
            };
        }

        public final bm3<Composer, Integer, j59> getContent() {
            bm3 bm3Var = this._content;
            if (bm3Var != null) {
                return bm3Var;
            }
            bm3<Composer, Integer, j59> bm3VarCreateContentLambda = createContentLambda();
            this._content = bm3VarCreateContentLambda;
            return bm3VarCreateContentLambda;
        }

        public final Object getContentType() {
            return this.contentType;
        }

        public final int getIndex() {
            return this.index;
        }

        public final Object getKey() {
            return this.key;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyLayoutItemContentFactory(SaveableStateHolder saveableStateHolder, ll3<? extends LazyLayoutItemProvider> ll3Var) {
        this.saveableStateHolder = saveableStateHolder;
        this.itemProvider = ll3Var;
    }

    public final bm3<Composer, Integer, j59> getContent(int i, Object obj, Object obj2) {
        CachedItemContent cachedItemContent = this.lambdasCache.get(obj);
        if (cachedItemContent != null && cachedItemContent.getIndex() == i && aa4.e(cachedItemContent.getContentType(), obj2)) {
            return cachedItemContent.getContent();
        }
        CachedItemContent cachedItemContent2 = new CachedItemContent(i, obj, obj2);
        this.lambdasCache.set(obj, cachedItemContent2);
        return cachedItemContent2.getContent();
    }

    public final Object getContentType(Object obj) {
        if (obj == null) {
            return null;
        }
        CachedItemContent cachedItemContent = this.lambdasCache.get(obj);
        if (cachedItemContent != null) {
            return cachedItemContent.getContentType();
        }
        LazyLayoutItemProvider lazyLayoutItemProviderInvoke = this.itemProvider.invoke();
        int index = lazyLayoutItemProviderInvoke.getIndex(obj);
        if (index != -1) {
            return lazyLayoutItemProviderInvoke.getContentType(index);
        }
        return null;
    }

    public final ll3<LazyLayoutItemProvider> getItemProvider() {
        return this.itemProvider;
    }
}
