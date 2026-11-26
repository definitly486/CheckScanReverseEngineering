package yads;

import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;

/* JADX INFO: loaded from: classes6.dex */
public final class tj0 extends AudioTrack$StreamEventCallback {
    public final /* synthetic */ uj0 a;

    public tj0(uj0 uj0Var) {
        this.a = uj0Var;
    }

    public final void onDataRequest(AudioTrack audioTrack, int i) {
        m65 m65Var;
        vj0 vj0Var = this.a.c;
        if (audioTrack != vj0Var.u) {
            defpackage.ud.g();
            return;
        }
        ry3 ry3Var = vj0Var.r;
        if (ry3Var == null || !vj0Var.U || (m65Var = ry3Var.a.Q0) == null) {
            return;
        }
        ((gq2) m65Var).a.i.a.sendEmptyMessage(2);
    }

    public final void onTearDown(AudioTrack audioTrack) {
        m65 m65Var;
        vj0 vj0Var = this.a.c;
        if (audioTrack != vj0Var.u) {
            defpackage.ud.g();
            return;
        }
        ry3 ry3Var = vj0Var.r;
        if (ry3Var == null || !vj0Var.U || (m65Var = ry3Var.a.Q0) == null) {
            return;
        }
        ((gq2) m65Var).a.i.a.sendEmptyMessage(2);
    }
}
