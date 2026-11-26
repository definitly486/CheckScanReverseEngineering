package defpackage;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import defpackage.g85;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class h85<T extends g85> extends f85<T> {
    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
        MediaSessionCompat.a(bundle);
        this.a.a(list);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onError(String str, Bundle bundle) {
        MediaSessionCompat.a(bundle);
    }
}
