package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.b;
import android.util.Log;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserProtocol;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class a<T> extends MediaBrowser.ConnectionCallback {
    public final MediaBrowserCompat.b.C0001b a;

    public a(MediaBrowserCompat.b.C0001b c0001b) {
        this.a = c0001b;
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnected() {
        b bVar;
        MediaBrowserCompat.b bVar2 = MediaBrowserCompat.b.this;
        MediaBrowserCompat.b.a aVar = bVar2.mConnectionCallbackInternal;
        if (aVar != null) {
            MediaBrowserCompat.c cVar = (MediaBrowserCompat.c) aVar;
            MediaBrowserCompat.a aVar2 = cVar.d;
            MediaBrowser mediaBrowser = cVar.b;
            Bundle extras = mediaBrowser.getExtras();
            if (extras != null) {
                extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                if (binder != null) {
                    Bundle bundle = cVar.c;
                    MediaBrowserCompat.g gVar = new MediaBrowserCompat.g();
                    gVar.a = new Messenger(binder);
                    gVar.b = bundle;
                    cVar.f = gVar;
                    Messenger messenger = new Messenger(aVar2);
                    cVar.g = messenger;
                    aVar2.getClass();
                    aVar2.b = new WeakReference<>(messenger);
                    try {
                        MediaBrowserCompat.g gVar2 = cVar.f;
                        Context context = cVar.a;
                        Messenger messenger2 = cVar.g;
                        gVar2.getClass();
                        Bundle bundle2 = new Bundle();
                        bundle2.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
                        bundle2.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, gVar2.b);
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 6;
                        messageObtain.arg1 = 1;
                        messageObtain.setData(bundle2);
                        messageObtain.replyTo = messenger2;
                        gVar2.a.send(messageObtain);
                    } catch (RemoteException unused) {
                        Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                    }
                }
                IBinder binder2 = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER);
                int i = b.a.a;
                if (binder2 == null) {
                    bVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = binder2.queryLocalInterface("android.support.v4.media.session.IMediaSession");
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) {
                        b.a.C0002a c0002a = new b.a.C0002a();
                        c0002a.a = binder2;
                        bVar = c0002a;
                    } else {
                        bVar = (b) iInterfaceQueryLocalInterface;
                    }
                }
                if (bVar != null) {
                    cVar.h = MediaSessionCompat.Token.a(mediaBrowser.getSessionToken(), bVar);
                }
            }
        }
        bVar2.onConnected();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionFailed() {
        MediaBrowserCompat.b.this.onConnectionFailed();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionSuspended() {
        MediaBrowserCompat.b bVar = MediaBrowserCompat.b.this;
        MediaBrowserCompat.b.a aVar = bVar.mConnectionCallbackInternal;
        if (aVar != null) {
            MediaBrowserCompat.c cVar = (MediaBrowserCompat.c) aVar;
            cVar.f = null;
            cVar.g = null;
            cVar.h = null;
            MediaBrowserCompat.a aVar2 = cVar.d;
            aVar2.getClass();
            aVar2.b = new WeakReference<>(null);
        }
        bVar.onConnectionSuspended();
    }
}
