package yads;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public final class jm {
    public final AudioManager a;
    public final hm b;
    public im c;
    public int d;
    public int e;
    public float f = 1.0f;

    public jm(Context context, Handler handler, im imVar) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        audioManager.getClass();
        this.a = audioManager;
        this.c = imVar;
        this.b = new hm(this, handler);
        this.d = 0;
    }

    public final int a(int i, boolean z) {
        if (i == 1 || this.e != 1) {
            a();
            return z ? 1 : -1;
        }
        if (!z) {
            return -1;
        }
        if (this.d == 1) {
            return 1;
        }
        if (u56.a < 26) {
            throw null;
        }
        new AudioFocusRequest.Builder(this.e);
        throw null;
    }

    public final void b(int i) {
        if (this.d == i) {
            return;
        }
        this.d = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.f == f) {
            return;
        }
        this.f = f;
        im imVar = this.c;
        if (imVar != null) {
            eq2 eq2Var = ((bq2) imVar).a;
            eq2Var.a(1, 2, Float.valueOf(eq2Var.V * eq2Var.w.f));
        }
    }

    public final void a() {
        if (this.d == 0) {
            return;
        }
        if (u56.a < 26) {
            this.a.abandonAudioFocus(this.b);
        }
        b(0);
    }

    public final void a(int i) {
        im imVar = this.c;
        if (imVar != null) {
            bq2 bq2Var = (bq2) imVar;
            eq2 eq2Var = bq2Var.a;
            eq2Var.q();
            boolean z = eq2Var.b0.l;
            eq2 eq2Var2 = bq2Var.a;
            int i2 = 1;
            if (z && i != 1) {
                i2 = 2;
            }
            eq2Var2.a(i, i2, z);
        }
    }
}
