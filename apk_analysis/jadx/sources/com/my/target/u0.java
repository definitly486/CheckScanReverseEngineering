package com.my.target;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.PlaybackException;
import com.my.target.common.MyTargetActivity;
import com.my.target.e6;
import com.my.target.k1;
import com.my.target.n;
import com.my.target.ra;
import com.my.target.v;
import defpackage.ao9;
import defpackage.cha;
import defpackage.ev9;
import defpackage.ex0;
import defpackage.h14;
import defpackage.i01;
import defpackage.j1a;
import defpackage.j3a;
import defpackage.pp9;
import defpackage.rn9;
import defpackage.sn9;
import defpackage.wfa;
import defpackage.y8a;
import defpackage.z3;
import defpackage.z94;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class u0 extends r implements s1 {
    public final n0 j;
    public final j1a k;
    public final e2 l;
    public x0 m;
    public WeakReference n;

    public u0(z94 z94Var, j1a j1aVar, z94.b bVar, z94.b bVar2) {
        super(bVar, z94Var, bVar2);
        this.k = j1aVar;
        this.j = n0.a(j1aVar.a, new defpackage.l2(bVar, j1aVar));
        this.l = new e2(z94Var.a.a);
    }

    @Override // com.my.target.t1.a
    public final void e(ao9 ao9Var) {
        ao9Var.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
        m1.d(ao9Var.a, "closedByUser", 999, new defpackage.m2(this));
        t();
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void f(MyTargetActivity myTargetActivity, Intent intent, FrameLayout frameLayout) {
        Bitmap bitmapA;
        super.f(myTargetActivity, intent, frameLayout);
        j1a j1aVar = this.k;
        pp9 pp9Var = j1aVar.Q;
        ev9 ev9Var = j1aVar.Z;
        pp9Var.c(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
        final k1 k1Var = new k1(j1aVar, this, new defpackage.k2(this, j1aVar), frameLayout.getContext());
        ra raVar = k1Var.b;
        frameLayout.addView(raVar);
        int i = k1Var.i;
        if (i == -1) {
            y8a y8aVar = j1aVar.a0;
            if (y8aVar == null) {
                k1Var.d();
            } else if (i == -1) {
                qa qaVar = raVar.b;
                if (qaVar.getParent() == null) {
                    raVar.i.addView(qaVar, -1, -1);
                }
                k1Var.i = 0;
                rn9 rn9Var = y8aVar.g;
                if (rn9Var != null && k1Var.g != null) {
                    qa videoView = raVar.getVideoView();
                    final n videoPlayer = videoView.getVideoPlayer();
                    f0 adVideoView = videoView.getAdVideoView();
                    ImageView adIcon = videoView.getAdIcon();
                    Button ctaButton = videoView.getCtaButton();
                    final e6 volumeButton = videoView.getVolumeButton();
                    adIcon.setOnClickListener(new j3a(k1Var, 1));
                    dg progressView = videoView.getProgressView();
                    progressView.setMaxTime(y8aVar.h);
                    k0 k0Var = k1Var.g;
                    u0 u0Var = k1Var.c;
                    videoView.setPlayableVideoListener(new k1.b(progressView, k0Var, u0Var));
                    if (y8aVar.e) {
                        videoPlayer.f();
                    }
                    videoPlayer.b(adVideoView);
                    adVideoView.b(rn9Var.b, rn9Var.c);
                    videoPlayer.c(adVideoView.getContext(), Uri.parse(rn9Var.a));
                    h14 h14Var = y8aVar.d;
                    if (h14Var != null) {
                        adIcon.setImageBitmap((Bitmap) h14Var.d);
                    }
                    ctaButton.setBackgroundColor(ev9Var.a);
                    ctaButton.setTextColor(ev9Var.c);
                    ctaButton.setText(j1aVar.g());
                    ctaButton.setOnClickListener(new sn9(k1Var, 1));
                    if (y8aVar.e) {
                        volumeButton.getContext();
                        bitmapA = wfa.a(TypedValues.CycleType.TYPE_EASING, "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");
                    } else {
                        volumeButton.getContext();
                        bitmapA = wfa.a(TypedValues.CycleType.TYPE_EASING, "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");
                    }
                    volumeButton.a(bitmapA, false);
                    volumeButton.setOnClickListener(new View.OnClickListener() { // from class: s7a
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            n nVar = videoPlayer;
                            boolean zC = nVar.c();
                            e6 e6Var = volumeButton;
                            if (zC) {
                                nVar.d();
                                e6Var.getContext();
                                e6Var.a(wfa.a(TypedValues.CycleType.TYPE_EASING, "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"), false);
                            } else {
                                nVar.f();
                                e6Var.getContext();
                                e6Var.a(wfa.a(TypedValues.CycleType.TYPE_EASING, "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"), false);
                            }
                        }
                    });
                    k1Var.b(y8aVar.c);
                    u0Var.o(j1aVar, videoView);
                }
            }
            final q qVar = j1aVar.H;
            if (qVar != null) {
                raVar.getAdChoicesButton().setOnClickListener(new View.OnClickListener() { // from class: r7a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        k1 k1Var2 = k1Var;
                        ra raVar2 = k1Var2.b;
                        v vVar = k1Var2.j;
                        if (vVar == null || !vVar.d()) {
                            v vVar2 = k1Var2.j;
                            if (vVar2 != null) {
                                vVar2.c(raVar2.getContext());
                            } else {
                                y14.n(raVar2.getContext(), qVar.b, null, null, null);
                            }
                        }
                    }
                });
                if (qVar.c != null) {
                    v vVar = new v(qVar, new ex0());
                    k1Var.j = vVar;
                    vVar.c = new z3(k1Var, 5);
                }
            }
            raVar.setBackgroundColor(ev9Var.d);
        }
        this.n = new WeakReference(k1Var);
    }

    @Override // com.my.target.t1.a
    public final void g(ao9 ao9Var, String str, int i, cha chaVar, Context context) {
        this.l.a(this.k, i, chaVar, context);
        z94 z94Var = z94.this;
        z94.a aVar = z94Var.h;
        if (aVar != null) {
            aVar.f(z94Var);
        }
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void k() {
        k1 k1Var;
        this.d = true;
        WeakReference weakReference = this.n;
        if (weakReference == null || (k1Var = (k1) weakReference.get()) == null) {
            return;
        }
        ra raVar = k1Var.b;
        x0 x0Var = this.m;
        if (x0Var != null) {
            x0Var.c(raVar);
        }
        n0 n0Var = this.j;
        n0Var.b(raVar);
        n0Var.c();
        k1Var.resume();
    }

    @Override // com.my.target.t1.a
    public final void n(double d) {
    }

    @Override // com.my.target.t1.a
    public final void o(ao9 ao9Var, View view) {
        x0 x0Var = this.m;
        if (x0Var != null) {
            x0Var.e();
        }
        j1a j1aVar = this.k;
        x0 x0Var2 = new x0(j1aVar.b, j1aVar.a, new defpackage.m2(this));
        this.m = x0Var2;
        if (this.d) {
            x0Var2.c(view);
        }
        i01.d(new StringBuilder("InterstitialAdImagineEngine: Ad shown, banner Id = "), ao9Var.B, null);
    }

    @Override // com.my.target.r, com.my.target.common.MyTargetActivity.a
    public final void p() {
        k1 k1Var;
        super.p();
        WeakReference weakReference = this.n;
        if (weakReference == null || (k1Var = (k1) weakReference.get()) == null) {
            return;
        }
        k1Var.destroy();
    }

    @Override // com.my.target.common.MyTargetActivity.a
    public final void q() {
        k1 k1Var;
        this.d = false;
        x0 x0Var = this.m;
        if (x0Var != null) {
            x0Var.e();
        }
        this.j.b(null);
        WeakReference weakReference = this.n;
        if (weakReference == null || (k1Var = (k1) weakReference.get()) == null) {
            return;
        }
        k1Var.pause();
    }

    @Override // com.my.target.r
    public final boolean u() {
        k1 k1Var;
        WeakReference weakReference = this.n;
        if (weakReference == null || (k1Var = (k1) weakReference.get()) == null) {
            return true;
        }
        return k1Var.i == 2 && k1Var.b.h.getVisibility() == 0;
    }
}
