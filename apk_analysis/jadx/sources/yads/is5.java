package yads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public final class is5 {
    public final Context a;
    public final Handler b;
    public final gs5 c;
    public final AudioManager d;
    public hs5 e;
    public HandlerThread f;
    public int g;
    public int h;
    public boolean i;

    public is5(Context context, Handler handler, gs5 gs5Var) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = handler;
        this.c = gs5Var;
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager == null) {
            defpackage.ud.g();
            throw null;
        }
        this.d = audioManager;
        this.g = 3;
        this.h = a(audioManager, 3);
        int i = this.g;
        this.i = u56.a >= 23 ? audioManager.isStreamMute(i) : a(audioManager, i) == 0;
        hs5 hs5Var = new hs5(this);
        IntentFilter intentFilter = new IntentFilter("android.media.VOLUME_CHANGED_ACTION");
        try {
            HandlerThread handlerThread = new HandlerThread("StreamVolumeReceiver");
            this.f = handlerThread;
            handlerThread.start();
            applicationContext.registerReceiver(hs5Var, intentFilter, null, new Handler(this.f.getLooper()));
            this.e = hs5Var;
        } catch (RuntimeException e) {
            sv3.d("StreamVolumeManager", sv3.a("Error registering stream volume receiver", e));
            HandlerThread handlerThread2 = this.f;
            if (handlerThread2 != null) {
                handlerThread2.quitSafely();
                this.f = null;
            }
        }
    }

    public static int a(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            sv3.d("StreamVolumeManager", sv3.a("Could not retrieve stream volume for stream type " + i, e));
            return audioManager.getStreamMaxVolume(i);
        }
    }

    public final void b() {
        hs5 hs5Var = this.e;
        if (hs5Var != null) {
            try {
                this.a.unregisterReceiver(hs5Var);
            } catch (RuntimeException e) {
                sv3.d("StreamVolumeManager", sv3.a("Error unregistering stream volume receiver", e));
            }
            this.e = null;
        }
        HandlerThread handlerThread = this.f;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.f = null;
        }
    }

    public final void c() {
        boolean zIsStreamMute;
        int iA = a(this.d, this.g);
        AudioManager audioManager = this.d;
        int i = this.g;
        if (u56.a >= 23) {
            zIsStreamMute = audioManager.isStreamMute(i);
        } else {
            zIsStreamMute = a(audioManager, i) == 0;
        }
        if (this.h == iA && this.i == zIsStreamMute) {
            return;
        }
        this.h = iA;
        this.i = zIsStreamMute;
        ((bq2) this.c).a(iA, zIsStreamMute);
    }

    public final int a() {
        if (u56.a >= 28) {
            return this.d.getStreamMinVolume(this.g);
        }
        return 0;
    }
}
