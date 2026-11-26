package androidx.core.content;

import android.content.ContentProvider;
import android.content.Context;
import defpackage.ah;

/* JADX INFO: loaded from: classes5.dex */
public final class ContentProviderCompat {
    private ContentProviderCompat() {
    }

    public static Context requireContext(ContentProvider contentProvider) {
        Context context = contentProvider.getContext();
        if (context != null) {
            return context;
        }
        ah.f("Cannot find context from the provider.");
        return null;
    }
}
