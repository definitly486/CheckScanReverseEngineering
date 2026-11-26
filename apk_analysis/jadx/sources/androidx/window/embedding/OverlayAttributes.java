package androidx.window.embedding;

import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class OverlayAttributes {
    private final EmbeddingBounds bounds;

    public static final class Builder {
        private EmbeddingBounds bounds = EmbeddingBounds.BOUNDS_EXPANDED;

        public final OverlayAttributes build() {
            return new OverlayAttributes(this.bounds);
        }

        public final Builder setBounds(EmbeddingBounds embeddingBounds) {
            embeddingBounds.getClass();
            this.bounds = embeddingBounds;
            return this;
        }
    }

    public /* synthetic */ OverlayAttributes(EmbeddingBounds embeddingBounds, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? EmbeddingBounds.BOUNDS_EXPANDED : embeddingBounds);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OverlayAttributes) {
            return aa4.e(this.bounds, ((OverlayAttributes) obj).bounds);
        }
        return false;
    }

    public final EmbeddingBounds getBounds() {
        return this.bounds;
    }

    public int hashCode() {
        return this.bounds.hashCode();
    }

    public String toString() {
        return "OverlayAttributes: {bounds=" + this.bounds + '}';
    }

    public OverlayAttributes(EmbeddingBounds embeddingBounds) {
        embeddingBounds.getClass();
        this.bounds = embeddingBounds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OverlayAttributes() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
