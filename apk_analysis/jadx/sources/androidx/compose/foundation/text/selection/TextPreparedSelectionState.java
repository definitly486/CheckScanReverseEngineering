package androidx.compose.foundation.text.selection;

/* JADX INFO: loaded from: classes.dex */
public final class TextPreparedSelectionState {
    public static final int $stable = 8;
    private Float cachedX;

    public final Float getCachedX() {
        return this.cachedX;
    }

    public final void resetCachedX() {
        this.cachedX = null;
    }

    public final void setCachedX(Float f) {
        this.cachedX = f;
    }
}
