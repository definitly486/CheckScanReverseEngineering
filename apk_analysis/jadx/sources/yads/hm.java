package yads;

import android.media.AudioManager;
import android.os.Handler;

/* JADX INFO: loaded from: classes6.dex */
public final class hm implements AudioManager.OnAudioFocusChangeListener {
    public final Handler a;
    public final /* synthetic */ jm b;

    public hm(jm jmVar, Handler handler) {
        this.b = jmVar;
        this.a = handler;
    }

    public final void a(int i) {
        jm jmVar = this.b;
        if (i == -3 || i == -2) {
            if (i != -2) {
                jmVar.getClass();
                jmVar.b(3);
                return;
            } else {
                jmVar.a(0);
                jmVar.b(2);
                return;
            }
        }
        if (i == -1) {
            jmVar.a(-1);
            jmVar.a();
        } else if (i == 1) {
            jmVar.b(1);
            jmVar.a(1);
        } else {
            jmVar.getClass();
            sv3.d("AudioFocusManager", "Unknown focus change type: " + i);
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(final int i) {
        this.a.post(new Runnable() { // from class: kx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(i);
            }
        });
    }
}
