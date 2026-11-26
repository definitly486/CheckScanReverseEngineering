package com.my.target;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl;
import com.iab.omid.library.corpmailru.Omid;
import com.iab.omid.library.corpmailru.adsession.AdEvents;
import com.iab.omid.library.corpmailru.adsession.AdSession;
import com.iab.omid.library.corpmailru.adsession.CreativeType;
import com.iab.omid.library.corpmailru.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.corpmailru.adsession.Partner;
import com.iab.omid.library.corpmailru.adsession.media.InteractionType;
import com.iab.omid.library.corpmailru.adsession.media.MediaEvents;
import defpackage.aga;
import defpackage.ao9;
import defpackage.fg;
import defpackage.kha;
import defpackage.n7;
import defpackage.sh5;
import defpackage.y14;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class e3 {
    public static final Handler k = new Handler(Looper.getMainLooper());
    public static final AtomicBoolean l = new AtomicBoolean();
    public final CreativeType a;
    public final aga b;
    public final kha c;
    public int d = -1;
    public float e = 1.0f;
    public AdEvents f;
    public AdSession g;
    public MediaEvents h;
    public boolean i;
    public d j;

    public static class a implements Runnable {
        public final AdSession b;

        public a(AdSession adSession) {
            this.b = adSession;
        }

        @Override // java.lang.Runnable
        public final void run() {
            y14.r(null, "OmTracker: keep adSession " + this.b);
        }
    }

    public static final class b {
        public final View a;

        public b(View view) {
            this.a = view;
        }
    }

    public interface c {
        public static final Partner a;

        static {
            String str = sh5.a;
            a = Partner.createPartner("Corpmailru", "5.52.5");
        }
    }

    public static class d implements Runnable {
        public final WeakReference b;
        public final AdSession c;

        public d(e3 e3Var, AdSession adSession) {
            this.b = new WeakReference(e3Var);
            this.c = adSession;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((e3) this.b.get()) != null) {
                e3.k.postDelayed(this, Camera2DeviceCloserImpl.CAMERA_CLOSE_TIMEOUT_MS);
            } else {
                y14.r(null, "OmTracker: AdSession finished by cleaning references");
                this.c.finish();
            }
        }
    }

    public e3(CreativeType creativeType, aga agaVar, kha khaVar) {
        this.a = creativeType;
        this.b = agaVar;
        this.c = khaVar;
    }

    public static e3 a(ao9 ao9Var, int i, kha khaVar, Context context) {
        CreativeType creativeType;
        aga agaVar = ao9Var.I;
        if (agaVar == null) {
            return null;
        }
        if (l.compareAndSet(false, true)) {
            try {
                y14.r(null, "OmTracker: activating OmSDK");
                Omid.activate(context);
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("OmTracker: OmSDK initialization failed, "), th);
                return null;
            }
        }
        if (!Omid.isActive()) {
            y14.r(null, "OmTracker: OmTracker initialization failed, OmSDK is unactivated");
            return null;
        }
        if (i == 1) {
            creativeType = CreativeType.HTML_DISPLAY;
        } else if (i == 2) {
            creativeType = CreativeType.NATIVE_DISPLAY;
        } else if (i != 3) {
            creativeType = i != 4 ? CreativeType.DEFINED_BY_JAVASCRIPT : CreativeType.AUDIO;
        } else {
            creativeType = CreativeType.VIDEO;
        }
        return new e3(creativeType, agaVar, khaVar);
    }

    public static void d(b bVar, AdSession adSession) {
        try {
            bVar.getClass();
            adSession.addFriendlyObstruction(bVar.a, FriendlyObstructionPurpose.CLOSE_AD, " ");
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("OmTracker: Unable to addObstruction: "), th);
        }
    }

    public final void b(int i) {
        MediaEvents mediaEvents = this.h;
        if (mediaEvents == null) {
            return;
        }
        try {
            if (i == 0) {
                mediaEvents.pause();
                return;
            }
            if (i == 1) {
                mediaEvents.resume();
                return;
            }
            if (i == 2 || i == 3) {
                mediaEvents.skipped();
            } else {
                if (i != 4) {
                    return;
                }
                mediaEvents.adUserInteraction(InteractionType.CLICK);
            }
        } catch (Throwable th) {
            fg.e(null, n7.c(i, "OmTracker: Unable to track mediaEvent ", ": "), th);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0132, code lost:
    
        r11 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(android.view.View r11, com.my.target.e3.b... r12) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.my.target.e3.c(android.view.View, com.my.target.e3$b[]):void");
    }

    public final void e(b... bVarArr) {
        if (this.g == null) {
            return;
        }
        for (b bVar : bVarArr) {
            d(bVar, this.g);
        }
    }

    public final void f() {
        y14.r(null, "OmTracker: finishing session");
        this.f = null;
        if (this.g == null) {
            y14.r(null, "OmTracker: Unable to finish adSession: adSession is not initialized");
            return;
        }
        d dVar = this.j;
        Handler handler = k;
        if (dVar != null) {
            dVar.b.clear();
            handler.removeCallbacks(this.j);
            this.j = null;
        }
        try {
            this.g.finish();
            handler.postDelayed(new a(this.g), Camera2DeviceCloserImpl.CAMERA_CLOSE_TIMEOUT_MS);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("OmTracker: Unable to finish adSession: "), th);
        }
    }

    public final void g() {
        AdEvents adEvents;
        if (this.i || (adEvents = this.f) == null) {
            return;
        }
        try {
            adEvents.impressionOccurred();
            this.i = true;
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("OmTracker: Unable to call impression: "), th);
        }
    }
}
