package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.core.app.BundleCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MediaControllerCompat$MediaControllerImplApi21 {
    public final MediaController a;
    public final Object b = new Object();
    public final ArrayList c = new ArrayList();
    public final HashMap<c, a> d = new HashMap<>();
    public final MediaSessionCompat.Token e;

    public static class ExtraBinderRequestResultReceiver extends ResultReceiver {
        public WeakReference<MediaControllerCompat$MediaControllerImplApi21> b;

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            b bVar;
            MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21 = this.b.get();
            if (mediaControllerCompat$MediaControllerImplApi21 == null || bundle == null) {
                return;
            }
            synchronized (mediaControllerCompat$MediaControllerImplApi21.b) {
                MediaSessionCompat.Token token = mediaControllerCompat$MediaControllerImplApi21.e;
                IBinder binder = BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER");
                int i2 = b.a.a;
                if (binder == null) {
                    bVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = binder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) {
                        b.a.C0002a c0002a = new b.a.C0002a();
                        c0002a.a = binder;
                        bVar = c0002a;
                    } else {
                        bVar = (b) iInterfaceQueryLocalInterface;
                    }
                }
                token.c = bVar;
                MediaSessionCompat.Token token2 = mediaControllerCompat$MediaControllerImplApi21.e;
                bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE");
                token2.getClass();
                mediaControllerCompat$MediaControllerImplApi21.a();
            }
        }
    }

    public static class a extends c.b {
    }

    public MediaControllerCompat$MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
        this.e = token;
        MediaController mediaController = new MediaController(context, (MediaSession.Token) token.b);
        this.a = mediaController;
        if (token.c == null) {
            ExtraBinderRequestResultReceiver extraBinderRequestResultReceiver = new ExtraBinderRequestResultReceiver(null);
            extraBinderRequestResultReceiver.b = new WeakReference<>(this);
            mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, extraBinderRequestResultReceiver);
        }
    }

    public final void a() {
        MediaSessionCompat.Token token = this.e;
        if (token.c == null) {
            return;
        }
        ArrayList<c> arrayList = this.c;
        for (c cVar : arrayList) {
            a aVar = new a(cVar);
            this.d.put(cVar, aVar);
            cVar.getClass();
            try {
                token.c.c(aVar);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
            }
        }
        arrayList.clear();
    }
}
