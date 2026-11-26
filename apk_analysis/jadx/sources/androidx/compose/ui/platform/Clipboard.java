package androidx.compose.ui.platform;

import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public interface Clipboard {
    Object getClipEntry(e02<? super ClipEntry> e02Var);

    android.content.ClipboardManager getNativeClipboard();

    Object setClipEntry(ClipEntry clipEntry, e02<? super j59> e02Var);
}
