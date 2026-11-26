package androidx.compose.foundation.content;

import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes.dex */
public final class ReceiveContentKt {
    public static final Modifier contentReceiver(Modifier modifier, ReceiveContentListener receiveContentListener) {
        return modifier.then(new ReceiveContentElement(receiveContentListener));
    }
}
