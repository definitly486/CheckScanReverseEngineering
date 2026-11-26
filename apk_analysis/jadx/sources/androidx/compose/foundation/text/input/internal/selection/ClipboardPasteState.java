package androidx.compose.foundation.text.input.internal.selection;

import android.content.ClipDescription;
import androidx.compose.ui.platform.Clipboard;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class ClipboardPasteState {
    public static final int $stable = 8;
    private boolean _hasClip;
    private boolean _hasText;
    private final Clipboard clipboard;

    public ClipboardPasteState(Clipboard clipboard) {
        this.clipboard = clipboard;
    }

    public final boolean getHasClip() {
        return this._hasClip;
    }

    public final boolean getHasText() {
        return this._hasText;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0024  */
    public final Object update(e02<? super j59> e02Var) {
        boolean z;
        ClipDescription primaryClipDescription;
        boolean zHasPrimaryClip = this.clipboard.getNativeClipboard().hasPrimaryClip();
        this._hasClip = zHasPrimaryClip;
        if (zHasPrimaryClip && (primaryClipDescription = this.clipboard.getNativeClipboard().getPrimaryClipDescription()) != null) {
            z = primaryClipDescription.hasMimeType("text/*");
        }
        this._hasText = z;
        return j59.a;
    }
}
