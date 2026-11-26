package androidx.compose.foundation.style;

/* JADX INFO: loaded from: classes.dex */
public final class StyleScopeKt {
    public static final void apply(StyleScope styleScope, Style style) {
        style.applyStyle(styleScope);
    }

    public static final void fillHeight(StyleScope styleScope) {
        styleScope.height(1.0f);
    }

    public static final void fillSize(StyleScope styleScope) {
        styleScope.width(1.0f);
        styleScope.height(1.0f);
    }

    public static final void fillWidth(StyleScope styleScope) {
        styleScope.width(1.0f);
    }
}
