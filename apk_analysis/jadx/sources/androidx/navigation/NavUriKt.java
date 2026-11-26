package androidx.navigation;

import android.net.Uri;

/* JADX INFO: loaded from: classes3.dex */
public final class NavUriKt {
    public static final Uri NavUri(String str) {
        str.getClass();
        return NavUriUtils.INSTANCE.parse(str);
    }
}
