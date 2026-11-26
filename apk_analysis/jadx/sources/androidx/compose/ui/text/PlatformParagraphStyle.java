package androidx.compose.ui.text;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformParagraphStyle {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final PlatformParagraphStyle Default = new PlatformParagraphStyle();
    private final int emojiSupportMatch;
    private final boolean includeFontPadding;

    public /* synthetic */ PlatformParagraphStyle(int i, boolean z, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? EmojiSupportMatch.Companion.m8346getDefault_3YsG6Y() : i, (i2 & 2) != 0 ? false : z, (jh2) null);
    }

    public static /* synthetic */ void getIncludeFontPadding$annotations() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlatformParagraphStyle)) {
            return false;
        }
        PlatformParagraphStyle platformParagraphStyle = (PlatformParagraphStyle) obj;
        return this.includeFontPadding == platformParagraphStyle.includeFontPadding && EmojiSupportMatch.m8341equalsimpl0(this.emojiSupportMatch, platformParagraphStyle.emojiSupportMatch);
    }

    /* JADX INFO: renamed from: getEmojiSupportMatch-_3YsG6Y, reason: not valid java name */
    public final int m8419getEmojiSupportMatch_3YsG6Y() {
        return this.emojiSupportMatch;
    }

    public final boolean getIncludeFontPadding() {
        return this.includeFontPadding;
    }

    public int hashCode() {
        return EmojiSupportMatch.m8342hashCodeimpl(this.emojiSupportMatch) + (Boolean.hashCode(this.includeFontPadding) * 31);
    }

    public final PlatformParagraphStyle merge(PlatformParagraphStyle platformParagraphStyle) {
        return platformParagraphStyle == null ? this : platformParagraphStyle;
    }

    public String toString() {
        return "PlatformParagraphStyle(includeFontPadding=" + this.includeFontPadding + ", emojiSupportMatch=" + ((Object) EmojiSupportMatch.m8343toStringimpl(this.emojiSupportMatch)) + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final PlatformParagraphStyle getDefault() {
            return PlatformParagraphStyle.Default;
        }

        private Companion() {
        }
    }

    public /* synthetic */ PlatformParagraphStyle(int i, boolean z, jh2 jh2Var) {
        this(i, z);
    }

    public PlatformParagraphStyle(boolean z) {
        this.includeFontPadding = z;
        this.emojiSupportMatch = EmojiSupportMatch.Companion.m8346getDefault_3YsG6Y();
    }

    public /* synthetic */ PlatformParagraphStyle(boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? false : z);
    }

    public /* synthetic */ PlatformParagraphStyle(int i, jh2 jh2Var) {
        this(i);
    }

    private PlatformParagraphStyle(int i, boolean z) {
        this.includeFontPadding = z;
        this.emojiSupportMatch = i;
    }

    private PlatformParagraphStyle(int i) {
        this.includeFontPadding = false;
        this.emojiSupportMatch = i;
    }

    public /* synthetic */ PlatformParagraphStyle(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? EmojiSupportMatch.Companion.m8346getDefault_3YsG6Y() : i, (jh2) null);
    }

    public PlatformParagraphStyle() {
        this(EmojiSupportMatch.Companion.m8346getDefault_3YsG6Y(), false, (jh2) null);
    }
}
