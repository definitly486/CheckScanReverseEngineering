package com.my.target;

import android.graphics.Bitmap;
import android.widget.FrameLayout;
import defpackage.a71;
import defpackage.h14;
import defpackage.ho9;
import defpackage.j2a;
import defpackage.kha;
import defpackage.v2a;
import defpackage.y11;
import defpackage.yu9;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class xj extends o4 implements j2a {
    public static final /* synthetic */ int t = 0;
    public yj q;
    public n r;
    public f0 s;

    @Override // com.my.target.o4
    public final void c(v2a v2aVar) {
        h14 h14Var;
        f1 f1Var = this.o;
        f1.a aVar = new f1.a(f1Var);
        yj yjVar = this.q;
        FrameLayout frameLayout = this.h;
        if (yjVar == null) {
            f0 f0Var = new f0(getContext());
            this.q = new yj(ho9.a(f0Var.getContext(), true), f0Var, getContext(), aVar);
            frameLayout.setBackground(d(new yu9(getContext())));
            frameLayout.setClipToOutline(true);
            frameLayout.addView(this.q, 0);
            a71 a71Var = new a71(1, this, aVar);
            this.q.getVideoControlView().getVideoControlButton().setOnClickListener(a71Var);
            this.q.getVideoControlView().getSoundControlButton().setOnClickListener(a71Var);
        }
        if (this.r == null) {
            this.r = this.q.getVideoPlayer();
        }
        if (this.s == null) {
            this.s = this.q.getVideoView();
        }
        yj yjVar2 = this.q;
        f1Var.getClass();
        f1Var.c = yjVar2.getVideoPlayer();
        f1Var.d = yjVar2.getVideoView();
        f1Var.b = yjVar2;
        f1Var.c.a(f1Var);
        f1Var.d.setAdVideoViewListener(f1Var);
        f1Var.e(v2aVar, this);
        this.j.setOnClickListener(this);
        kha khaVar = v2aVar.a.Z;
        if (khaVar == null || (h14Var = khaVar.S) == null) {
            return;
        }
        this.q.getPreviewView().setImageBitmap((Bitmap) h14Var.d);
        frameLayout.post(new y11(2, this, h14Var));
    }

    @Override // defpackage.j2a
    public yj getVideoContent() {
        yj yjVar = this.q;
        Objects.requireNonNull(yjVar);
        return yjVar;
    }

    @Override // defpackage.j2a
    public n getVideoPlayer() {
        n nVar = this.r;
        Objects.requireNonNull(nVar);
        return nVar;
    }

    @Override // defpackage.j2a
    public f0 getVideoView() {
        f0 f0Var = this.s;
        Objects.requireNonNull(f0Var);
        return f0Var;
    }
}
