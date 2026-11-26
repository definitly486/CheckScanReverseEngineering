package androidx.compose.ui.text.font;

import android.content.Context;
import defpackage.e02;
import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AndroidFont implements Font {
    public static final int $stable = 0;
    private final int loadingStrategy;
    private final TypefaceLoader typefaceLoader;
    private final FontVariation.Settings variationSettings;

    public interface TypefaceLoader {
        Object awaitLoad(Context context, AndroidFont androidFont, e02<? super android.graphics.Typeface> e02Var);

        android.graphics.Typeface loadBlocking(Context context, AndroidFont androidFont);
    }

    private AndroidFont(int i, TypefaceLoader typefaceLoader) {
        this(i, typefaceLoader, new FontVariation.Settings(new FontVariation.Setting[0]), null);
    }

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: getLoadingStrategy-PKNRLFQ, reason: not valid java name */
    public final int mo8548getLoadingStrategyPKNRLFQ() {
        return this.loadingStrategy;
    }

    public final TypefaceLoader getTypefaceLoader() {
        return this.typefaceLoader;
    }

    public final FontVariation.Settings getVariationSettings() {
        return this.variationSettings;
    }

    public /* synthetic */ AndroidFont(int i, TypefaceLoader typefaceLoader, FontVariation.Settings settings, jh2 jh2Var) {
        this(i, typefaceLoader, settings);
    }

    private AndroidFont(int i, TypefaceLoader typefaceLoader, FontVariation.Settings settings) {
        this.loadingStrategy = i;
        this.typefaceLoader = typefaceLoader;
        this.variationSettings = settings;
    }

    @ul2
    public /* synthetic */ AndroidFont(int i, TypefaceLoader typefaceLoader, jh2 jh2Var) {
        this(i, typefaceLoader);
    }
}
