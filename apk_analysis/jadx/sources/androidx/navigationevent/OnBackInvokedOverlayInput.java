package androidx.navigationevent;

import android.window.OnBackInvokedDispatcher;
import androidx.media3.common.PlaybackException;

/* JADX INFO: loaded from: classes3.dex */
public final class OnBackInvokedOverlayInput extends OnBackInvokedInput {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnBackInvokedOverlayInput(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        super(onBackInvokedDispatcher, PlaybackException.CUSTOM_ERROR_CODE_BASE, null);
        onBackInvokedDispatcher.getClass();
    }
}
