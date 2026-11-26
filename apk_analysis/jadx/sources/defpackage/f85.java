package defpackage;

import android.media.browse.MediaBrowser;
import android.support.v4.media.MediaBrowserCompat;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f85<T> extends MediaBrowser.SubscriptionCallback {
    public final MediaBrowserCompat.i.b a;

    public f85(MediaBrowserCompat.i.b bVar) {
        this.a = bVar;
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
        MediaBrowserCompat.MediaItem.a(list);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onError(String str) {
    }
}
