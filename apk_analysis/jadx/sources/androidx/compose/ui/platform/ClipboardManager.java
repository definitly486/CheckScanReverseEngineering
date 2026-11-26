package androidx.compose.ui.platform;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public interface ClipboardManager {
    default ClipEntry getClip() {
        return null;
    }

    default android.content.ClipboardManager getNativeClipboard() {
        throw new UnsupportedOperationException("This platform does not offer a native Clipboard");
    }

    AnnotatedString getText();

    default boolean hasText() {
        AnnotatedString text = getText();
        return text != null && text.length() > 0;
    }

    default void setClip(ClipEntry clipEntry) {
    }

    void setText(AnnotatedString annotatedString);
}
