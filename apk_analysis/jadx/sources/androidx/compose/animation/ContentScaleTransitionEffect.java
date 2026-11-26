package androidx.compose.animation;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.ContentScale;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class ContentScaleTransitionEffect extends TransitionEffect {
    public static final int $stable = 0;
    public static final Key Key = new Key(null);
    private final Alignment alignment;
    private final ContentScale contentScale;

    public ContentScaleTransitionEffect(ContentScale contentScale, Alignment alignment) {
        super(null);
        this.contentScale = contentScale;
        this.alignment = alignment;
    }

    public static /* synthetic */ ContentScaleTransitionEffect copy$default(ContentScaleTransitionEffect contentScaleTransitionEffect, ContentScale contentScale, Alignment alignment, int i, Object obj) {
        if ((i & 1) != 0) {
            contentScale = contentScaleTransitionEffect.contentScale;
        }
        if ((i & 2) != 0) {
            alignment = contentScaleTransitionEffect.alignment;
        }
        return contentScaleTransitionEffect.copy(contentScale, alignment);
    }

    public final ContentScale component1() {
        return this.contentScale;
    }

    public final Alignment component2() {
        return this.alignment;
    }

    public final ContentScaleTransitionEffect copy(ContentScale contentScale, Alignment alignment) {
        return new ContentScaleTransitionEffect(contentScale, alignment);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentScaleTransitionEffect)) {
            return false;
        }
        ContentScaleTransitionEffect contentScaleTransitionEffect = (ContentScaleTransitionEffect) obj;
        return aa4.e(this.contentScale, contentScaleTransitionEffect.contentScale) && aa4.e(this.alignment, contentScaleTransitionEffect.alignment);
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final ContentScale getContentScale() {
        return this.contentScale;
    }

    @Override // androidx.compose.animation.TransitionEffect
    public TransitionEffectKey<?> getKey$animation() {
        return Key;
    }

    public int hashCode() {
        return this.alignment.hashCode() + (this.contentScale.hashCode() * 31);
    }

    public String toString() {
        return "ContentScaleTransitionEffect(contentScale=" + this.contentScale + ", alignment=" + this.alignment + ')';
    }

    public static final class Key implements TransitionEffectKey<ContentScaleTransitionEffect> {
        public /* synthetic */ Key(jh2 jh2Var) {
            this();
        }

        private Key() {
        }
    }
}
