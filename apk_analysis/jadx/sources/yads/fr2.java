package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class fr2 implements iw4 {
    public boolean a;
    public boolean b;
    public boolean c;
    public final /* synthetic */ gr2 d;

    public fr2(gr2 gr2Var) {
        this.d = gr2Var;
    }

    @Override // yads.iw4
    public final void b(zv4 zv4Var) {
        this.a = false;
        this.d.g.b.a();
        this.d.a.n();
        String message = zv4Var.getMessage();
        fe6 fe6Var = this.d.c;
        h75 h75VarA = fe6Var.b.a();
        h75VarA.b(message, "error_message");
        e75 e75Var = e75.AD_LOADING_RESULT;
        Map map = h75VarA.a;
        fe6Var.a.a(new g75("video_ad_player_error", defpackage.n05.n(map), h75VarA.b));
        gr2 gr2Var = this.d;
        hb6 hb6Var = gr2Var.i;
        ol4 ol4Var = gr2Var.h;
        if (hb6Var == null || ol4Var == null) {
            return;
        }
        gr2Var.d.getClass();
        hb6Var.a(new gb6(tk4.a(zv4Var), zv4Var));
    }

    @Override // yads.iw4
    public final void onIsPlayingChanged(boolean z) {
        if (!z) {
            if (this.b) {
                return;
            }
            this.c = true;
            gr2 gr2Var = this.d;
            hb6 hb6Var = gr2Var.i;
            ol4 ol4Var = gr2Var.h;
            if (hb6Var == null || ol4Var == null) {
                return;
            }
            hb6Var.i();
            return;
        }
        if (!this.a) {
            gr2 gr2Var2 = this.d;
            hb6 hb6Var2 = gr2Var2.i;
            ol4 ol4Var2 = gr2Var2.h;
            if (hb6Var2 == null || ol4Var2 == null) {
                return;
            }
            this.a = true;
            hb6Var2.c();
            return;
        }
        if (this.c) {
            this.c = false;
            gr2 gr2Var3 = this.d;
            hb6 hb6Var3 = gr2Var3.i;
            ol4 ol4Var3 = gr2Var3.h;
            if (hb6Var3 == null || ol4Var3 == null) {
                return;
            }
            hb6Var3.f();
        }
    }

    @Override // yads.iw4
    public final void onPlaybackStateChanged(int i) {
        if (i == 2) {
            this.b = true;
            gr2 gr2Var = this.d;
            hb6 hb6Var = gr2Var.i;
            ol4 ol4Var = gr2Var.h;
            if (hb6Var == null || ol4Var == null) {
                return;
            }
            hb6Var.b();
            return;
        }
        if (i != 3) {
            if (i != 4) {
                return;
            }
            this.a = false;
            gr2 gr2Var2 = this.d;
            hb6 hb6Var2 = gr2Var2.i;
            ol4 ol4Var2 = gr2Var2.h;
            if (hb6Var2 == null || ol4Var2 == null) {
                return;
            }
            hb6Var2.d();
            return;
        }
        this.d.g.b.a();
        gr2 gr2Var3 = this.d;
        hb6 hb6Var3 = gr2Var3.i;
        ol4 ol4Var3 = gr2Var3.h;
        if (hb6Var3 != null && ol4Var3 != null) {
            hb6Var3.h();
        }
        if (this.b) {
            this.b = false;
            gr2 gr2Var4 = this.d;
            hb6 hb6Var4 = gr2Var4.i;
            ol4 ol4Var4 = gr2Var4.h;
            if (hb6Var4 == null || ol4Var4 == null) {
                return;
            }
            hb6Var4.a();
        }
    }
}
