package yads;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import defpackage.hu2;
import defpackage.s77;
import java.util.List;
import yads.iw4;

/* JADX INFO: loaded from: classes6.dex */
public final class bq2 implements oe6, om, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, ap5, im, cm, gs5, vp2 {
    public final /* synthetic */ eq2 a;

    public bq2(eq2 eq2Var) {
        this.a = eq2Var;
    }

    public final void a(h84 h84Var) {
        eq2 eq2Var = this.a;
        t04 t04Var = eq2Var.a0;
        t04Var.getClass();
        s04 s04Var = new s04(t04Var);
        int i = 0;
        while (true) {
            g84[] g84VarArr = h84Var.b;
            if (i >= g84VarArr.length) {
                break;
            }
            g84VarArr[i].a(s04Var);
            i++;
        }
        eq2Var.a0 = new t04(s04Var);
        t04 t04VarC = this.a.c();
        if (!t04VarC.equals(this.a.I)) {
            eq2 eq2Var2 = this.a;
            eq2Var2.I = t04VarC;
            eq2Var2.k.a(14, new defpackage.kk2(this));
        }
        this.a.k.a(28, new defpackage.x3(h84Var, 5));
        this.a.k.a();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.a.a(surfaceTexture);
        this.a.a(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.a.a((Surface) null);
        this.a.a(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.a.a(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.a.a(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        eq2 eq2Var = this.a;
        if (eq2Var.O) {
            eq2Var.a(surfaceHolder.getSurface());
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        eq2 eq2Var = this.a;
        if (eq2Var.O) {
            eq2Var.a((Surface) null);
        }
        this.a.a(0, 0);
    }

    public final void a(Object obj, long j) {
        ((cj0) this.a.p).a(obj, j);
        eq2 eq2Var = this.a;
        if (eq2Var.K == obj) {
            wt3 wt3Var = eq2Var.k;
            wt3Var.a(26, new defpackage.bh());
            wt3Var.a();
        }
    }

    public final void a(final boolean z) {
        eq2 eq2Var = this.a;
        if (eq2Var.W == z) {
            return;
        }
        eq2Var.W = z;
        wt3 wt3Var = eq2Var.k;
        wt3Var.a(23, new tt3() { // from class: wo9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                ((iw4) obj).onSkipSilenceEnabledChanged(z);
            }
        });
        wt3Var.a();
    }

    public final void a(List list) {
        wt3 wt3Var = this.a.k;
        wt3Var.a(27, new s77(list));
        wt3Var.a();
    }

    public final void a(ub0 ub0Var) {
        this.a.getClass();
        wt3 wt3Var = this.a.k;
        wt3Var.a(27, new hu2(ub0Var));
        wt3Var.a();
    }

    public final void a(ye6 ye6Var) {
        this.a.getClass();
        wt3 wt3Var = this.a.k;
        wt3Var.a(25, new defpackage.c21(ye6Var, 4));
        wt3Var.a();
    }

    public final /* synthetic */ void a(iw4 iw4Var) {
        iw4Var.a(this.a.I);
    }

    public final void a() {
        is5 is5Var = this.a.x;
        yn0 yn0Var = new yn0(0, is5Var.a(), is5Var.d.getStreamMaxVolume(is5Var.g));
        if (yn0Var.equals(this.a.Z)) {
            return;
        }
        eq2 eq2Var = this.a;
        eq2Var.Z = yn0Var;
        wt3 wt3Var = eq2Var.k;
        wt3Var.a(29, new defpackage.ea(yn0Var));
        wt3Var.a();
    }

    public final void a(final int i, final boolean z) {
        wt3 wt3Var = this.a.k;
        wt3Var.a(30, new tt3() { // from class: vo9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                ((iw4) obj).onDeviceVolumeChanged(i, z);
            }
        });
        wt3Var.a();
    }
}
