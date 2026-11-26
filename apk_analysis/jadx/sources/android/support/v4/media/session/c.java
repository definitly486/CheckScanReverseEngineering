package android.support.v4.media.session;

import android.os.IBinder;
import defpackage.k85;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements IBinder.DeathRecipient {

    public static class a {
        public final WeakReference<c> a;

        public a(c cVar) {
            this.a = new WeakReference<>(cVar);
        }
    }

    public static class b extends android.support.v4.media.session.a {
        public final WeakReference<c> a;

        public b(c cVar) {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
            this.a = new WeakReference<>(cVar);
        }
    }

    public c() {
        new k85(new a(this));
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
    }
}
