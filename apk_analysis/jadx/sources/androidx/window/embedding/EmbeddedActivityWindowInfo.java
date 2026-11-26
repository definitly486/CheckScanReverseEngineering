package androidx.window.embedding;

import android.graphics.Rect;
import defpackage.aa4;

/* JADX INFO: loaded from: classes3.dex */
public final class EmbeddedActivityWindowInfo {
    private final Rect boundsInParentHost;
    private final boolean isEmbedded;
    private final Rect parentHostBounds;

    public EmbeddedActivityWindowInfo(boolean z, Rect rect, Rect rect2) {
        rect.getClass();
        rect2.getClass();
        this.isEmbedded = z;
        this.parentHostBounds = rect;
        this.boundsInParentHost = rect2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EmbeddedActivityWindowInfo)) {
            return false;
        }
        EmbeddedActivityWindowInfo embeddedActivityWindowInfo = (EmbeddedActivityWindowInfo) obj;
        return this.isEmbedded == embeddedActivityWindowInfo.isEmbedded && aa4.e(this.parentHostBounds, embeddedActivityWindowInfo.parentHostBounds) && aa4.e(this.boundsInParentHost, embeddedActivityWindowInfo.boundsInParentHost);
    }

    public final Rect getBoundsInParentHost() {
        return this.boundsInParentHost;
    }

    public final Rect getParentHostBounds() {
        return this.parentHostBounds;
    }

    public int hashCode() {
        return this.boundsInParentHost.hashCode() + ((this.parentHostBounds.hashCode() + (Boolean.hashCode(this.isEmbedded) * 31)) * 31);
    }

    public final boolean isEmbedded() {
        return this.isEmbedded;
    }

    public String toString() {
        return "EmbeddedActivityWindowInfo{isEmbedded=" + this.isEmbedded + ", parentHostBounds=" + this.parentHostBounds + ", boundsInParentHost=" + this.boundsInParentHost + '}';
    }
}
