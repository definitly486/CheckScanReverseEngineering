package com.my.target;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import defpackage.bx9;
import defpackage.d9a;
import defpackage.fg;
import defpackage.y14;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements Player.Listener, n {
    public final ExoPlayer c;
    public final a d;
    public final AudioManager e;
    public final a1 g;
    public n.a h;
    public BaseMediaSource i;
    public boolean j;
    public boolean k;
    public final d9a b = d9a.a(200);
    public final d9a f = d9a.a(30);

    public static final class a implements Runnable {
        public final ExoPlayer b;
        public n.a c;
        public int d;
        public float e;

        public a(ExoPlayer exoPlayer) {
            this.b = exoPlayer;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            ExoPlayer exoPlayer = this.b;
            try {
                float currentPosition = exoPlayer.getCurrentPosition() / 1000.0f;
                float duration = exoPlayer.getDuration() / 1000.0f;
                if (this.e == currentPosition) {
                    i = this.d + 1;
                    this.d = i;
                } else {
                    n.a aVar = this.c;
                    if (aVar != null) {
                        aVar.d(currentPosition, duration);
                    }
                    this.e = currentPosition;
                    i = this.d;
                    if (i > 0) {
                        this.d = 0;
                        i = 0;
                    }
                }
                if (i > 50) {
                    n.a aVar2 = this.c;
                    if (aVar2 != null) {
                        aVar2.j();
                    }
                    this.d = 0;
                }
            } catch (Throwable th) {
                String str = "ExoVideoPlayer: Error - " + th.getMessage();
                y14.r(null, str);
                n.a aVar3 = this.c;
                if (aVar3 != null) {
                    aVar3.b(str);
                }
            }
        }
    }

    public h(Context context) {
        ExoPlayer exoPlayerBuild = new ExoPlayer.Builder(context).build();
        this.c = exoPlayerBuild;
        exoPlayerBuild.addListener(this);
        this.e = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.d = new a(exoPlayerBuild);
        a1 a1Var = new a1();
        a1Var.b = this;
        this.g = a1Var;
    }

    @Override // com.my.target.n
    public final void a() {
        try {
            setVolume(((double) this.c.getVolume()) == 1.0d ? 0.0f : 1.0f);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("ExoVideoPlayer: error - "), th);
        }
    }

    @Override // com.my.target.n
    public final void b(f0 f0Var) {
        ExoPlayer exoPlayer = this.c;
        try {
            if (f0Var != null) {
                f0Var.setExoPlayer(exoPlayer);
            } else {
                exoPlayer.setVideoTextureView(null);
            }
        } catch (Throwable th) {
            d(th);
        }
    }

    @Override // com.my.target.n
    public final void c(Context context, Uri uri) {
        ExoPlayer exoPlayer = this.c;
        y14.r(null, "ExoVideoPlayer: prepare to play video in ExoPlayer");
        this.k = false;
        n.a aVar = this.h;
        if (aVar != null) {
            aVar.g();
        }
        try {
            this.b.b(this.d);
            this.f.b(this.g);
            exoPlayer.setPlayWhenReady(true);
            if (this.j) {
                y14.u(null, "ExoVideoPlayer: New source url not set! Will play previous video! started = true");
                return;
            }
            BaseMediaSource baseMediaSourceA = bx9.a(context, uri);
            this.i = baseMediaSourceA;
            exoPlayer.setMediaSource(baseMediaSourceA);
            exoPlayer.prepare();
            y14.r(null, "ExoVideoPlayer: Play new video in ExoPlayer");
        } catch (Throwable th) {
            String str = "ExoVideoPlayer: Error - " + th.getMessage();
            y14.r(null, str);
            n.a aVar2 = this.h;
            if (aVar2 != null) {
                aVar2.b(str);
            }
        }
    }

    public final void d(Throwable th) {
        String str = "ExoVideoPlayer: Error - " + th.getMessage();
        y14.r(null, str);
        n.a aVar = this.h;
        if (aVar != null) {
            aVar.b(str);
        }
    }

    @Override // com.my.target.n
    public final void destroy() {
        ExoPlayer exoPlayer = this.c;
        this.j = false;
        this.k = false;
        this.h = null;
        this.b.e(this.d);
        d9a d9aVar = this.f;
        a1 a1Var = this.g;
        d9aVar.e(a1Var);
        a1Var.b = null;
        a1Var.c = null;
        try {
            exoPlayer.setVideoTextureView(null);
            exoPlayer.stop();
            exoPlayer.release();
            exoPlayer.removeListener(this);
        } catch (Throwable unused) {
        }
    }

    @Override // com.my.target.n
    public final void e() {
        try {
            this.c.setVolume(0.2f);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("ExoVideoPlayer: Error - "), th);
        }
    }

    @Override // com.my.target.n
    public final void f() {
        try {
            this.c.setVolume(0.0f);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("ExoVideoPlayer: Error - "), th);
        }
        n.a aVar = this.h;
        if (aVar != null) {
            aVar.a(0.0f);
        }
    }

    @Override // com.my.target.n
    public final boolean g() {
        return this.j;
    }

    @Override // com.my.target.n
    public final float getDuration() {
        try {
            return this.c.getDuration() / 1000.0f;
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("ExoVideoPlayer: Error - "), th);
            return 0.0f;
        }
    }

    @Override // com.my.target.n
    public final long getPosition() {
        try {
            return this.c.getCurrentPosition();
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("ExoVideoPlayer: Error - "), th);
            return 0L;
        }
    }

    @Override // com.my.target.n
    public final float getVolume() {
        AudioManager audioManager = this.e;
        return new BigDecimal(Double.toString((audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3)) * this.c.getVolume())).setScale(2, RoundingMode.HALF_UP).floatValue();
    }

    @Override // com.my.target.n
    public final boolean isPlaying() {
        return this.j && !this.k;
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlayerError(PlaybackException playbackException) {
        this.k = false;
        this.j = false;
        if (this.h != null) {
            StringBuilder sb = new StringBuilder("ExoVideoPlayer: Error - ");
            sb.append(playbackException != null ? playbackException.getMessage() : "unknown video error");
            this.h.b(sb.toString());
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlayerStateChanged(boolean z, int i) {
        a1 a1Var = this.g;
        d9a d9aVar = this.f;
        a aVar = this.d;
        d9a d9aVar2 = this.b;
        if (i == 1) {
            y14.r(null, "ExoVideoPlayer: Player state is changed to IDLE");
            if (this.j) {
                this.j = false;
                n.a aVar2 = this.h;
                if (aVar2 != null) {
                    aVar2.o();
                }
            }
            d9aVar2.e(aVar);
            d9aVar.e(a1Var);
            return;
        }
        if (i == 2) {
            y14.r(null, "ExoVideoPlayer: Player state is changed to BUFFERING");
            if (!z || this.j) {
                return;
            }
            d9aVar2.b(aVar);
            d9aVar.b(a1Var);
            return;
        }
        if (i != 3) {
            if (i != 4) {
                return;
            }
            y14.r(null, "ExoVideoPlayer: Player state is changed to ENDED");
            this.k = false;
            this.j = false;
            float duration = getDuration();
            n.a aVar3 = this.h;
            if (aVar3 != null) {
                aVar3.d(duration, duration);
            }
            n.a aVar4 = this.h;
            if (aVar4 != null) {
                aVar4.c();
            }
            d9aVar2.e(aVar);
            d9aVar.e(a1Var);
            return;
        }
        y14.r(null, "ExoVideoPlayer: Player state is changed to READY");
        if (!z) {
            if (!this.k) {
                this.k = true;
                n.a aVar5 = this.h;
                if (aVar5 != null) {
                    aVar5.f();
                }
            }
            d9aVar2.e(aVar);
            d9aVar.e(a1Var);
            return;
        }
        n.a aVar6 = this.h;
        if (aVar6 != null) {
            aVar6.k();
        }
        if (!this.j) {
            this.j = true;
        } else if (this.k) {
            this.k = false;
            n.a aVar7 = this.h;
            if (aVar7 != null) {
                aVar7.h();
            }
        }
        d9aVar2.b(aVar);
        d9aVar.b(a1Var);
    }

    @Override // com.my.target.n
    public final void pause() {
        if (!this.j || this.k) {
            return;
        }
        try {
            this.c.setPlayWhenReady(false);
        } catch (Throwable th) {
            d(th);
        }
    }

    @Override // com.my.target.n
    public final void resume() {
        try {
            boolean z = this.j;
            ExoPlayer exoPlayer = this.c;
            if (z) {
                exoPlayer.setPlayWhenReady(true);
                return;
            }
            BaseMediaSource baseMediaSource = this.i;
            if (baseMediaSource != null) {
                exoPlayer.setMediaSource((MediaSource) baseMediaSource, true);
                exoPlayer.prepare();
            }
        } catch (Throwable th) {
            d(th);
        }
    }

    @Override // com.my.target.n
    public final void setVolume(float f) {
        try {
            this.c.setVolume(f);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("ExoVideoPlayer: Error - "), th);
        }
        n.a aVar = this.h;
        if (aVar != null) {
            aVar.a(f);
        }
    }

    @Override // com.my.target.n
    public final void stop() {
        ExoPlayer exoPlayer = this.c;
        try {
            exoPlayer.stop();
            exoPlayer.clearMediaItems();
        } catch (Throwable th) {
            d(th);
        }
    }

    @Override // com.my.target.n
    public final boolean b() {
        return this.j && this.k;
    }

    @Override // com.my.target.n
    public final void d() {
        try {
            this.c.setVolume(1.0f);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("ExoVideoPlayer: Error - "), th);
        }
        n.a aVar = this.h;
        if (aVar != null) {
            aVar.a(1.0f);
        }
    }

    @Override // com.my.target.n
    public final void a(n.a aVar) {
        this.h = aVar;
        this.d.c = aVar;
        this.g.c = aVar;
    }

    @Override // com.my.target.n
    public final boolean c() {
        try {
            return this.c.getVolume() == 0.0f;
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("ExoVideoPlayer: Error - "), th);
            return false;
        }
    }
}
