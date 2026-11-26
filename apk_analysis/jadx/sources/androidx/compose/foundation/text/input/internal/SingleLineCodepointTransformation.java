package androidx.compose.foundation.text.input.internal;

/* JADX INFO: loaded from: classes.dex */
public final class SingleLineCodepointTransformation implements CodepointTransformation {
    public static final int $stable = 0;
    private static final int CARRIAGE_RETURN = 13;
    public static final SingleLineCodepointTransformation INSTANCE = new SingleLineCodepointTransformation();
    private static final int LINE_FEED = 10;
    private static final int WHITESPACE = 32;
    private static final int ZERO_WIDTH_SPACE = 65279;

    private SingleLineCodepointTransformation() {
    }

    public String toString() {
        return "SingleLineCodepointTransformation";
    }

    @Override // androidx.compose.foundation.text.input.internal.CodepointTransformation
    public int transform(int i, int i2) {
        if (i2 == 10) {
            return 32;
        }
        return i2 == 13 ? ZERO_WIDTH_SPACE : i2;
    }
}
