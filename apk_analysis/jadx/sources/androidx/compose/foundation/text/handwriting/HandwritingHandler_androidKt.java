package androidx.compose.foundation.text.handwriting;

import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes.dex */
public final class HandwritingHandler_androidKt {
    public static final Modifier handwritingHandler(Modifier modifier) {
        return StylusHandwriting_androidKt.isStylusHandwritingSupported() ? modifier.then(new HandwritingHandlerElement()) : modifier;
    }
}
