package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import defpackage.fg;
import defpackage.g85;
import defpackage.h85;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaBrowserCompat {
    public static final boolean b = Log.isLoggable("MediaBrowserCompat", 3);
    public final e a;

    public static class CustomActionResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void a(int i, Bundle bundle) {
        }
    }

    public static class ItemReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void a(int i, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                throw null;
            }
            Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
            if (parcelable != null && !(parcelable instanceof MediaItem)) {
                throw null;
            }
            throw null;
        }
    }

    public static class SearchResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void a(int i, Bundle bundle) {
            Parcelable[] parcelableArray;
            MediaSessionCompat.a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS) || (parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) == null) {
                throw null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            throw null;
        }
    }

    public static class a extends Handler {
        public final WeakReference<f> a;
        public WeakReference<Messenger> b;

        public a(c cVar) {
            this.a = new WeakReference<>(cVar);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            WeakReference<f> weakReference2 = this.a;
            if (weakReference2.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.a(data);
            f fVar = weakReference2.get();
            Messenger messenger = this.b.get();
            try {
                int i = message.what;
                if (i == 1) {
                    MediaSessionCompat.a(data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS));
                    data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID);
                    fVar.getClass();
                    return;
                }
                if (i == 2) {
                    fVar.getClass();
                    return;
                }
                if (i != 3) {
                    Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                    return;
                }
                Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                MediaSessionCompat.a(bundle);
                MediaSessionCompat.a(data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS));
                String string = data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID);
                data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST);
                fVar.a(messenger, string, bundle);
            } catch (BadParcelableException unused) {
                Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                if (message.what == 1) {
                    fVar.getClass();
                }
            }
        }
    }

    public static class b {
        a mConnectionCallbackInternal;
        final Object mConnectionCallbackObj = new android.support.v4.media.a(new C0001b());

        public interface a {
        }

        /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$b$b, reason: collision with other inner class name */
        public class C0001b {
            public C0001b() {
            }
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }

        public void setInternalConnectionCallback(a aVar) {
            this.mConnectionCallbackInternal = aVar;
        }
    }

    public static class c implements f, b.a {
        public final Context a;
        public final MediaBrowser b;
        public final Bundle c;
        public final a d = new a(this);
        public final ArrayMap<String, h> e = new ArrayMap<>();
        public g f;
        public Messenger g;
        public MediaSessionCompat.Token h;

        public c(Context context, ComponentName componentName, b bVar) {
            this.a = context;
            Bundle bundle = new Bundle();
            this.c = bundle;
            bundle.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bVar.setInternalConnectionCallback(this);
            this.b = new MediaBrowser(context, componentName, (MediaBrowser.ConnectionCallback) bVar.mConnectionCallbackObj, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public final void a(Messenger messenger, String str, Bundle bundle) {
            if (this.g != messenger) {
                return;
            }
            h hVar = this.e.get(str);
            if (hVar == null) {
                if (MediaBrowserCompat.b) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                    return;
                }
                return;
            }
            ArrayList arrayList = hVar.b;
            for (int i = 0; i < arrayList.size(); i++) {
                if (MediaBrowserCompatUtils.areSameOptions((Bundle) arrayList.get(i), bundle)) {
                    return;
                }
            }
        }
    }

    public static class d extends c {
    }

    public static class e extends d {
    }

    public interface f {
        void a(Messenger messenger, String str, Bundle bundle);
    }

    public static class g {
        public Messenger a;
        public Bundle b;
    }

    public static class h {
        public final ArrayList a = new ArrayList();
        public final ArrayList b = new ArrayList();
    }

    public static abstract class i {

        public class a {
        }

        public class b extends a implements g85 {
            @Override // defpackage.g85
            public final void a(List list) {
                MediaItem.a(list);
            }
        }

        public i() {
            new Binder();
            new h85(new b());
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar) {
        this.a = new e(context, componentName, bVar);
    }

    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new a();
        public final int b;
        public final MediaDescriptionCompat c;

        public static class a implements Parcelable.Creator<MediaItem> {
            @Override // android.os.Parcelable.Creator
            public final MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                fg.c("description cannot be null");
                throw null;
            }
            if (TextUtils.isEmpty(mediaDescriptionCompat.b)) {
                fg.c("description must have a non-empty media id");
                throw null;
            }
            this.b = i;
            this.c = mediaDescriptionCompat;
        }

        public static void a(List list) {
            MediaItem mediaItem;
            if (list != null) {
                ArrayList arrayList = new ArrayList(list.size());
                for (Object obj : list) {
                    if (obj != null) {
                        MediaBrowser.MediaItem mediaItem2 = (MediaBrowser.MediaItem) obj;
                        mediaItem = new MediaItem(MediaDescriptionCompat.a(mediaItem2.getDescription()), mediaItem2.getFlags());
                    } else {
                        mediaItem = null;
                    }
                    arrayList.add(mediaItem);
                }
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "MediaItem{mFlags=" + this.b + ", mDescription=" + this.c + '}';
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.b);
            this.c.writeToParcel(parcel, i);
        }

        public MediaItem(Parcel parcel) {
            this.b = parcel.readInt();
            this.c = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }
}
