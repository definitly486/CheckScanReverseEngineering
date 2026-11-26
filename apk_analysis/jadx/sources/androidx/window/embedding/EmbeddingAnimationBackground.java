package androidx.window.embedding;

import android.graphics.Color;
import defpackage.fg;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class EmbeddingAnimationBackground {
    public static final Companion Companion = new Companion(null);
    public static final EmbeddingAnimationBackground DEFAULT = new DefaultBackground();

    public static final class ColorBackground extends EmbeddingAnimationBackground {
        private final int color;

        public ColorBackground(int i) {
            super(null);
            this.color = i;
            if (Color.alpha(i) == 255) {
                return;
            }
            fg.c("Background color must be opaque");
            throw null;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof ColorBackground) && this.color == ((ColorBackground) obj).color;
        }

        public final int getColor() {
            return this.color;
        }

        public int hashCode() {
            return Integer.hashCode(this.color);
        }

        public String toString() {
            return "ColorBackground{color:" + Integer.toHexString(this.color) + '}';
        }
    }

    public static final class DefaultBackground extends EmbeddingAnimationBackground {
        public DefaultBackground() {
            super(null);
        }

        public int hashCode() {
            return toString().hashCode();
        }

        public String toString() {
            return "DefaultBackground";
        }
    }

    public /* synthetic */ EmbeddingAnimationBackground(jh2 jh2Var) {
        this();
    }

    public static final ColorBackground createColorBackground(int i) {
        return Companion.createColorBackground(i);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final EmbeddingAnimationBackground buildFromValue$window_release(int i) {
            return Color.alpha(i) != 255 ? EmbeddingAnimationBackground.DEFAULT : createColorBackground(i);
        }

        public final ColorBackground createColorBackground(int i) {
            return new ColorBackground(i);
        }

        private Companion() {
        }
    }

    private EmbeddingAnimationBackground() {
    }
}
