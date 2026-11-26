package yads;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.net.Uri;
import androidx.webkit.internal.AssetHelper;

/* JADX INFO: loaded from: classes6.dex */
public final class vy0 implements yy0 {
    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        ClipData clipData;
        if (ry0Var instanceof cy0) {
            lt0 lt0Var = ((cy0) ry0Var).a.a;
            Object systemService = vq0Var.l.getSystemService("clipboard");
            ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
            if (clipboardManager == null) {
                return true;
            }
            if (lt0Var instanceof jt0) {
                clipData = new ClipData("Copied text", new String[]{AssetHelper.DEFAULT_MIME_TYPE}, new ClipData.Item((String) ((jt0) lt0Var).a.a.a(fs2Var)));
            } else if (lt0Var instanceof kt0) {
                clipData = new ClipData("Copied url", new String[]{"text/uri-list"}, new ClipData.Item((Uri) ((kt0) lt0Var).a.a.a(fs2Var)));
            } else {
                defpackage.me0.e();
            }
            clipboardManager.setPrimaryClip(clipData);
            return true;
        }
        return false;
    }
}
