package androidx.compose.ui.platform;

import android.content.Context;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidClipboard implements Clipboard {
    public static final int $stable = 8;
    private final AndroidClipboardManager androidClipboardManager;

    public AndroidClipboard(Context context) {
        this(new AndroidClipboardManager(context));
    }

    @Override // androidx.compose.ui.platform.Clipboard
    public Object getClipEntry(e02<? super ClipEntry> e02Var) {
        return this.androidClipboardManager.getClip();
    }

    @Override // androidx.compose.ui.platform.Clipboard
    public android.content.ClipboardManager getNativeClipboard() {
        return this.androidClipboardManager.getNativeClipboard();
    }

    @Override // androidx.compose.ui.platform.Clipboard
    public Object setClipEntry(ClipEntry clipEntry, e02<? super j59> e02Var) {
        this.androidClipboardManager.setClip(clipEntry);
        return j59.a;
    }

    public AndroidClipboard(AndroidClipboardManager androidClipboardManager) {
        this.androidClipboardManager = androidClipboardManager;
    }
}
