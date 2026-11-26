package androidx.compose.ui.text;

import androidx.collection.LruCache;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextLayoutCache {
    public static final int $stable = 8;
    private final LruCache<CacheTextLayoutInput, TextLayoutResult> cache;
    private CacheTextLayoutInput singleSizeCacheInput;
    private TextLayoutResult singleSizeCacheResult;

    public TextLayoutCache(int i) {
        this.cache = i != 1 ? new LruCache<>(i) : null;
    }

    public final TextLayoutResult get(TextLayoutInput textLayoutInput) {
        TextLayoutResult textLayoutResult;
        CacheTextLayoutInput cacheTextLayoutInput = new CacheTextLayoutInput(textLayoutInput);
        LruCache<CacheTextLayoutInput, TextLayoutResult> lruCache = this.cache;
        if (lruCache != null) {
            textLayoutResult = lruCache.get(cacheTextLayoutInput);
        } else {
            if (!aa4.e(this.singleSizeCacheInput, cacheTextLayoutInput)) {
                return null;
            }
            textLayoutResult = this.singleSizeCacheResult;
        }
        if (textLayoutResult == null || textLayoutResult.getMultiParagraph().getIntrinsics().getHasStaleResolvedFonts()) {
            return null;
        }
        return textLayoutResult;
    }

    public final void put(TextLayoutInput textLayoutInput, TextLayoutResult textLayoutResult) {
        LruCache<CacheTextLayoutInput, TextLayoutResult> lruCache = this.cache;
        if (lruCache != null) {
            lruCache.put(new CacheTextLayoutInput(textLayoutInput), textLayoutResult);
        } else {
            this.singleSizeCacheInput = new CacheTextLayoutInput(textLayoutInput);
            this.singleSizeCacheResult = textLayoutResult;
        }
    }

    public TextLayoutCache() {
        this(0, 1, null);
    }

    public /* synthetic */ TextLayoutCache(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 8 : i);
    }
}
