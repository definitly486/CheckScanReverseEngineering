package androidx.compose.ui.text.font;

import android.content.Context;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AndroidPreloadedFont extends AndroidFont {
    public static final int $stable = 0;
    private boolean didInitWithContext;
    private final int style;
    private android.graphics.Typeface typeface;
    private final FontWeight weight;

    private AndroidPreloadedFont(FontWeight fontWeight, int i, FontVariation.Settings settings) {
        super(FontLoadingStrategy.Companion.m8595getBlockingPKNRLFQ(), AndroidPreloadedFontTypefaceLoader.INSTANCE, settings, null);
        this.weight = fontWeight;
        this.style = i;
    }

    public abstract android.graphics.Typeface doLoad$ui_text(Context context);

    public abstract String getCacheKey();

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: getStyle-_-LCdwA, reason: not valid java name */
    public final int mo8556getStyle_LCdwA() {
        return this.style;
    }

    public final android.graphics.Typeface getTypeface$ui_text() {
        return this.typeface;
    }

    @Override // androidx.compose.ui.text.font.Font
    public final FontWeight getWeight() {
        return this.weight;
    }

    public final android.graphics.Typeface loadCached$ui_text(Context context) {
        if (!this.didInitWithContext && this.typeface == null) {
            this.typeface = doLoad$ui_text(context);
        }
        this.didInitWithContext = true;
        return this.typeface;
    }

    public final void setTypeface$ui_text(android.graphics.Typeface typeface) {
        this.typeface = typeface;
    }

    public /* synthetic */ AndroidPreloadedFont(FontWeight fontWeight, int i, FontVariation.Settings settings, jh2 jh2Var) {
        this(fontWeight, i, settings);
    }
}
