package androidx.window.embedding;

import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;
import defpackage.xp;

/* JADX INFO: loaded from: classes3.dex */
public final class EmbeddingAspectRatio {
    private final String description;
    private final float value;
    public static final Companion Companion = new Companion(null);
    public static final EmbeddingAspectRatio ALWAYS_ALLOW = new EmbeddingAspectRatio("ALWAYS_ALLOW", 0.0f);
    public static final EmbeddingAspectRatio ALWAYS_DISALLOW = new EmbeddingAspectRatio("ALWAYS_DISALLOW", -1.0f);

    private EmbeddingAspectRatio(String str, float f) {
        this.description = str;
        this.value = f;
    }

    public static final EmbeddingAspectRatio ratio(float f) {
        return Companion.ratio(f);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EmbeddingAspectRatio)) {
            return false;
        }
        EmbeddingAspectRatio embeddingAspectRatio = (EmbeddingAspectRatio) obj;
        return this.value == embeddingAspectRatio.value && aa4.e(this.description, embeddingAspectRatio.description);
    }

    public final String getDescription$window_release() {
        return this.description;
    }

    public final float getValue$window_release() {
        return this.value;
    }

    public int hashCode() {
        return (Float.hashCode(this.value) * 31) + this.description.hashCode();
    }

    public String toString() {
        return xp.e(new StringBuilder("EmbeddingAspectRatio("), this.description, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final EmbeddingAspectRatio buildAspectRatioFromValue$window_release(float f) {
            EmbeddingAspectRatio embeddingAspectRatio = EmbeddingAspectRatio.ALWAYS_ALLOW;
            if (f == embeddingAspectRatio.getValue$window_release()) {
                return embeddingAspectRatio;
            }
            EmbeddingAspectRatio embeddingAspectRatio2 = EmbeddingAspectRatio.ALWAYS_DISALLOW;
            return f == embeddingAspectRatio2.getValue$window_release() ? embeddingAspectRatio2 : ratio(f);
        }

        public final EmbeddingAspectRatio ratio(float f) {
            jh2 jh2Var = null;
            if (f <= 1.0f) {
                fg.c("Ratio must be greater than 1.");
                return null;
            }
            return new EmbeddingAspectRatio("ratio:" + f, f, jh2Var);
        }

        private Companion() {
        }
    }

    public /* synthetic */ EmbeddingAspectRatio(String str, float f, jh2 jh2Var) {
        this(str, f);
    }
}
