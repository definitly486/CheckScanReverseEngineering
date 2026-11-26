package androidx.core.app;

import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public interface OnPictureInPictureUiStateChangedProvider {
    void addOnPictureInPictureUiStateChangedListener(Consumer<PictureInPictureUiStateCompat> consumer);

    void removeOnPictureInPictureUiStateChangedListener(Consumer<PictureInPictureUiStateCompat> consumer);
}
