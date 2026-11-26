package yads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public final class pm0 {
    public final Spatializer a;
    public final boolean b;
    public Handler c;
    public om0 d;

    public pm0(Spatializer spatializer) {
        this.a = spatializer;
        this.b = spatializer.getImmersiveAudioLevel() != 0;
    }

    public final boolean a(am amVar, vz2 vz2Var) {
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(u56.a((MimeTypes.AUDIO_E_AC3_JOC.equals(vz2Var.m) && vz2Var.z == 16) ? 12 : vz2Var.z));
        int i = vz2Var.A;
        if (i != -1) {
            channelMask.setSampleRate(i);
        }
        Spatializer spatializer = this.a;
        zl zlVar = amVar.g;
        if (zlVar == null) {
            zlVar = new zl(amVar);
            amVar.g = zlVar;
        }
        return spatializer.canBeSpatialized(zlVar.a, channelMask.build());
    }

    public final boolean b() {
        return this.a.isEnabled();
    }

    public final void c() {
        om0 om0Var = this.d;
        if (om0Var == null || this.c == null) {
            return;
        }
        this.a.removeOnSpatializerStateChangedListener(om0Var);
        Handler handler = this.c;
        int i = u56.a;
        handler.removeCallbacksAndMessages(null);
        this.c = null;
        this.d = null;
    }

    public final void a(um0 um0Var, Looper looper) {
        if (this.d == null && this.c == null) {
            this.d = new om0(um0Var);
            Handler handler = new Handler(looper);
            this.c = handler;
            this.a.addOnSpatializerStateChangedListener(new defpackage.h72(handler), this.d);
        }
    }

    public final boolean a() {
        return this.a.isAvailable();
    }

    public static pm0 a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager == null) {
            return null;
        }
        return new pm0(audioManager.getSpatializer());
    }
}
