package androidx.compose.runtime;

import androidx.compose.runtime.composer.linkbuffer.LinkAnchor;

/* JADX INFO: loaded from: classes2.dex */
public final class ReusableLinkRememberObserverHolder extends LinkRememberObserverHolder implements ReusableRememberObserverHolder {
    public static final int $stable = 8;

    public ReusableLinkRememberObserverHolder(RememberObserver rememberObserver, LinkAnchor linkAnchor) {
        super(rememberObserver, linkAnchor);
    }
}
