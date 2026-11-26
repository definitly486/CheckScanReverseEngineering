package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.gia;
import defpackage.h14;
import defpackage.j2a;
import defpackage.kha;
import defpackage.r2a;
import defpackage.t2a;
import defpackage.u0a;
import defpackage.up9;
import defpackage.v2a;
import defpackage.xda;
import defpackage.yu9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class nb extends pb implements j2a {
    public final yj n;
    public final u0a o;

    public nb(i0 i0Var, r1 r1Var, yj yjVar, rf rfVar, z0.a aVar, u0a u0aVar, Context context) {
        super(i0Var, r1Var, rfVar, aVar, context);
        this.o = u0aVar;
        this.n = yjVar;
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        yu9 yu9Var = this.i;
        setBackgroundColor(yu9Var.a.get(yu9.r));
        this.c.addView(yjVar, 0);
    }

    @Override // com.my.target.z0
    public final View a() {
        return this;
    }

    @Override // defpackage.j2a
    public yj getVideoContent() {
        return this.n;
    }

    @Override // defpackage.j2a
    public n getVideoPlayer() {
        return this.n.getVideoPlayer();
    }

    @Override // defpackage.j2a
    public f0 getVideoView() {
        return this.n.getVideoView();
    }

    @Override // com.my.target.pb, android.view.View.OnClickListener
    public final void onClick(View view) {
        yj yjVar = this.n;
        e6 videoControlButton = yjVar.getVideoControlView().getVideoControlButton();
        u0a u0aVar = this.o;
        if (view == videoControlButton) {
            u0aVar.c();
            return;
        }
        if (view == yjVar.getVideoControlView().getSoundControlButton()) {
            u0aVar.d();
            return;
        }
        f0 videoView = yjVar.getVideoView();
        z0.a aVar = this.e;
        if (view == videoView) {
            aVar.c(1, this.g ? new up9(8192, this.f) : new gia());
            return;
        }
        if (view == yjVar.getPreviewView() && yjVar.getPreviewView().getVisibility() == 0) {
            aVar.c(1, this.g ? new up9(8, this.f) : new gia());
        } else if (this.g) {
            d(view);
        } else {
            e(view);
        }
    }

    @Override // com.my.target.pb, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        yu9 yu9Var = this.i;
        this.n.setBackgroundColor(yu9Var.a.get(yu9.x));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0028  */
    @Override // com.my.target.pb, com.my.target.z0
    public void setBanner(xda xdaVar) {
        LinearLayout.LayoutParams layoutParamsB;
        kha khaVar = xdaVar.Z;
        if (khaVar == null) {
            return;
        }
        h14 h14Var = khaVar.S;
        yj yjVar = this.n;
        if (h14Var != null) {
            Object obj = h14Var.d;
            if (((Bitmap) obj) != null) {
                Bitmap bitmap = (Bitmap) obj;
                yjVar.getPreviewView().setImageBitmap(bitmap);
                layoutParamsB = b(bitmap.getWidth(), bitmap.getHeight());
            } else {
                layoutParamsB = b(khaVar.c(), khaVar.j());
            }
        } else {
            layoutParamsB = b(khaVar.c(), khaVar.j());
        }
        yjVar.setLayoutParams(layoutParamsB);
        yjVar.getVideoView().b(khaVar.c(), khaVar.j());
        FrameLayout.LayoutParams layoutParams = yjVar.getContext().getResources().getConfiguration().orientation == 2 ? new FrameLayout.LayoutParams(-1, -2) : new FrameLayout.LayoutParams(-2, -1);
        layoutParams.gravity = 17;
        yjVar.c.setLayoutParams(layoutParams);
        super.setBanner(xdaVar);
    }

    @Override // com.my.target.pb
    public void setClickAreaActual(t2a t2aVar) {
        super.setClickAreaActual(t2aVar);
        yj yjVar = this.n;
        e6 videoControlButton = yjVar.getVideoControlView().getVideoControlButton();
        c1 c1Var = this.l;
        videoControlButton.setOnTouchListener(c1Var);
        yjVar.getVideoControlView().getSoundControlButton().setOnTouchListener(c1Var);
        yjVar.getVideoView().setOnTouchListener(c1Var);
        yjVar.getPreviewView().setOnTouchListener(c1Var);
        yjVar.getDomainTextView().setOnTouchListener(c1Var);
        yjVar.getVideoControlView().getVideoControlButton().setOnClickListener(this);
        yjVar.getVideoControlView().getSoundControlButton().setOnClickListener(this);
        if (t2aVar.m) {
            yjVar.getDomainTextView().setOnClickListener(this);
            yjVar.getPreviewView().setOnClickListener(this);
            yjVar.getVideoView().setOnClickListener(this);
        } else {
            yjVar.getVideoView().setOnClickListener(t2aVar.n ? this : null);
            yjVar.getPreviewView().setOnClickListener(t2aVar.d ? this : null);
            TextView domainTextView = yjVar.getDomainTextView();
            if (!t2aVar.j) {
                this = null;
            }
            domainTextView.setOnClickListener(this);
        }
    }

    @Override // com.my.target.pb
    public void setClickAreaLegacy(t2a t2aVar) {
        super.setClickAreaLegacy(t2aVar);
        yj yjVar = this.n;
        yjVar.getVideoControlView().getVideoControlButton().setOnClickListener(this);
        yjVar.getVideoControlView().getSoundControlButton().setOnClickListener(this);
        f0 videoView = yjVar.getVideoView();
        boolean z = t2aVar.n;
        boolean z2 = t2aVar.m;
        videoView.setOnClickListener((z || z2) ? this : null);
        yjVar.getPreviewView().setOnClickListener((t2aVar.d || z2) ? this : null);
        TextView domainTextView = yjVar.getDomainTextView();
        if (!t2aVar.j && !z2) {
            this = null;
        }
        domainTextView.setOnClickListener(this);
    }

    @Override // com.my.target.pb
    public void setDomain(String str) {
        super.setDomain(str);
        s3 s3Var = this.h;
        boolean z = s3Var instanceof uh;
        yj yjVar = this.n;
        if (z) {
            if (TextUtils.isEmpty(str)) {
                yjVar.getDomainTextView().setVisibility(8);
            } else {
                yjVar.getDomainTextView().setText(str);
                yjVar.getDomainTextView().setVisibility(0);
            }
            yjVar.getDomainContainer().setVisibility(0);
            return;
        }
        if (s3Var == null || s3Var.getDomainTextView() == null || TextUtils.isEmpty(str)) {
            return;
        }
        yjVar.getDomainContainer().setVisibility(8);
    }

    @Override // com.my.target.pb, com.my.target.z0
    public void setDoubleBanners(List<v2a> list) {
    }

    @Override // com.my.target.pb
    public void setIcon(h14 h14Var) {
        super.setIcon(h14Var);
        if (h14Var == null || ((Bitmap) h14Var.d) == null || !(this.h instanceof uh)) {
            return;
        }
        this.n.getLogoImageView().setImageBitmap(r2a.a((Bitmap) h14Var.d));
    }
}
