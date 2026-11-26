package yads;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public final class pp0 {
    public static File a(Context context, String str) {
        return new File(defpackage.cg.d(context.getCacheDir().getPath(), File.separator, str));
    }
}
