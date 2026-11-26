package androidx.compose.foundation.text;

import android.database.ContentObserver;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public interface ContentResolverForSecureTextField {
    boolean getShowPassword();

    void registerContentObserver(Uri uri, boolean z, ContentObserver contentObserver);

    void unregisterContentObserver(ContentObserver contentObserver);
}
