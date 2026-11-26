package com.my.target;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import androidx.media3.common.MimeTypes;
import defpackage.d9a;
import defpackage.fg;
import defpackage.pg;
import defpackage.y14;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements n, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, TextureView.SurfaceTextureListener, MediaPlayer.OnInfoListener {
    public final d9a b;
    public final a c;
    public final d9a d;
    public final a1 e;
    public final MediaPlayer f;
    public n.a g;
    public Surface h;
    public int i;
    public float j;
    public int k;
    public f0 l;
    public Uri m;
    public final AudioManager n;

    public static class a implements Runnable {
        public g b;
        public n.a c;
        public int d;
        public float e;

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            g gVar = this.b;
            if (gVar == null) {
                return;
            }
            float position = gVar.getPosition() / 1000.0f;
            float duration = this.b.getDuration();
            if (this.e == position) {
                i = this.d + 1;
                this.d = i;
            } else {
                n.a aVar = this.c;
                if (aVar != null) {
                    aVar.d(position, duration);
                }
                this.e = position;
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
        }
    }

    public g(Context context) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        a aVar = new a();
        a1 a1Var = new a1();
        this.b = d9a.a(200);
        this.d = d9a.a(30);
        this.i = 0;
        this.j = 1.0f;
        this.f = mediaPlayer;
        this.c = aVar;
        this.e = a1Var;
        aVar.b = this;
        a1Var.b = this;
        this.n = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
    }

    @Override // com.my.target.n
    public final void a() {
        if (this.j == 1.0f) {
            setVolume(0.0f);
        } else {
            setVolume(1.0f);
        }
    }

    @Override // com.my.target.n
    public final void b(f0 f0Var) {
        h();
        if (f0Var == null) {
            this.l = null;
            d(null);
            return;
        }
        this.l = f0Var;
        TextureView textureView = f0Var.getTextureView();
        if (textureView.getSurfaceTextureListener() != null) {
            Log.w("DefaultVideoPlayer", "Replacing existing SurfaceTextureListener");
        }
        textureView.setSurfaceTextureListener(this);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        d(surfaceTexture != null ? new Surface(surfaceTexture) : null);
    }

    @Override // com.my.target.n
    public final void c(Context context, Uri uri) {
        y14.r(null, "DefaultVideoPlayer: Play video in Android MediaPlayer - " + uri);
        int i = this.i;
        if (i == 2 && uri == this.m) {
            resume();
            return;
        }
        this.m = uri;
        MediaPlayer mediaPlayer = this.f;
        if (i != 0) {
            try {
                mediaPlayer.reset();
            } catch (Throwable unused) {
                y14.r(null, "DefaultVideoPlayer: Media player's reset method called in wrong state");
            }
            this.i = 0;
        }
        mediaPlayer.setOnCompletionListener(this);
        mediaPlayer.setOnErrorListener(this);
        mediaPlayer.setOnPreparedListener(this);
        mediaPlayer.setOnInfoListener(this);
        try {
            mediaPlayer.setDataSource(context, uri);
            n.a aVar = this.g;
            if (aVar != null) {
                aVar.g();
            }
            try {
                mediaPlayer.prepareAsync();
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's prepare async method called in wrong state, "), th);
            }
            this.b.b(this.c);
            this.d.b(this.e);
        } catch (Throwable th2) {
            if (this.g != null) {
                this.g.b("DefaultVideoPlayer data source error: " + th2.getMessage());
            }
            fg.e(null, new StringBuilder("DefaultVideoPlayer: Unable to parse video source, "), th2);
            this.i = 5;
            th2.printStackTrace();
        }
    }

    public final void d(Surface surface) {
        try {
            this.f.setSurface(surface);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's set surface method called in wrong state, "), th);
        }
        Surface surface2 = this.h;
        if (surface2 != null && surface2 != surface) {
            surface2.release();
        }
        this.h = surface;
    }

    @Override // com.my.target.n
    public final void destroy() {
        this.g = null;
        this.i = 5;
        this.b.e(this.c);
        d9a d9aVar = this.d;
        a1 a1Var = this.e;
        d9aVar.e(a1Var);
        a1Var.b = null;
        a1Var.c = null;
        h();
        boolean zI = i();
        MediaPlayer mediaPlayer = this.f;
        if (zI) {
            try {
                mediaPlayer.stop();
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's stop method called in wrong state, "), th);
            }
        }
        try {
            mediaPlayer.release();
        } catch (Throwable th2) {
            fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's release method called in wrong state, "), th2);
        }
        this.l = null;
    }

    @Override // com.my.target.n
    public final void e() {
        setVolume(0.2f);
    }

    @Override // com.my.target.n
    public final void f() {
        setVolume(0.0f);
    }

    @Override // com.my.target.n
    public final boolean g() {
        int i = this.i;
        return i >= 1 && i < 3;
    }

    @Override // com.my.target.n
    public final float getDuration() {
        if (!i()) {
            return 0.0f;
        }
        try {
            return this.f.getDuration() / 1000.0f;
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's get duration method called in wrong state, "), th);
            return 0.0f;
        }
    }

    @Override // com.my.target.n
    public final long getPosition() {
        if (i() && this.i != 3) {
            try {
                return this.f.getCurrentPosition();
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("DefaultVideoPlayer: media player's get current position method called in wrong state, "), th);
            }
        }
        return 0L;
    }

    @Override // com.my.target.n
    public final float getVolume() {
        AudioManager audioManager = this.n;
        return new BigDecimal(Double.toString((audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3)) * this.j)).setScale(2, RoundingMode.HALF_UP).floatValue();
    }

    public final void h() {
        f0 f0Var = this.l;
        TextureView textureView = f0Var != null ? f0Var.getTextureView() : null;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this) {
                Log.w("DefaultVideoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                textureView.setSurfaceTextureListener(null);
            }
        }
    }

    public final boolean i() {
        int i = this.i;
        return i >= 1 && i <= 4;
    }

    @Override // com.my.target.n
    public final boolean isPlaying() {
        return this.i == 1;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        n.a aVar;
        float duration = getDuration();
        this.i = 4;
        if (duration > 0.0f && (aVar = this.g) != null) {
            aVar.d(duration, duration);
        }
        n.a aVar2 = this.g;
        if (aVar2 != null) {
            aVar2.c();
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str;
        this.b.e(this.c);
        this.d.b(this.e);
        h();
        d(null);
        String str2 = i == 100 ? "Server died" : "Unknown error";
        if (i2 == -1004) {
            str = "IO error";
        } else if (i2 == -1007) {
            str = "Malformed error";
        } else if (i2 == -1010) {
            str = "Unsupported error";
        } else if (i2 == -110) {
            str = "Timed out error";
        } else {
            str = i2 == Integer.MIN_VALUE ? "Low-level system error" : "Unknown";
        }
        String strG = pg.g(str2, " (reason: ", str, ")");
        y14.r(null, "DefaultVideoPlayer: Video error - ".concat(strG));
        n.a aVar = this.g;
        if (aVar != null) {
            aVar.b(strG);
        }
        if (this.i > 0) {
            try {
                this.f.reset();
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's reset method called in wrong state, "), th);
            }
        }
        this.i = 0;
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        if (i != 3) {
            return false;
        }
        n.a aVar = this.g;
        if (aVar == null) {
            return true;
        }
        aVar.k();
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        try {
            float f = this.j;
            mediaPlayer.setVolume(f, f);
            this.i = 1;
            mediaPlayer.start();
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's start method called in wrong state, "), th);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        d(new Surface(surfaceTexture));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        d(null);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // com.my.target.n
    public final void pause() {
        MediaPlayer mediaPlayer = this.f;
        if (this.i == 1) {
            this.b.e(this.c);
            this.d.e(this.e);
            try {
                this.k = mediaPlayer.getCurrentPosition();
                mediaPlayer.pause();
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's pause or get current position method called in wrong state, "), th);
            }
            this.i = 2;
            n.a aVar = this.g;
            if (aVar != null) {
                aVar.f();
            }
        }
    }

    @Override // com.my.target.n
    public final void resume() {
        MediaPlayer mediaPlayer = this.f;
        if (this.i == 2) {
            this.b.b(this.c);
            this.d.b(this.e);
            try {
                mediaPlayer.start();
            } catch (Throwable unused) {
                y14.r(null, "DefaultVideoPlayer: Media player's start method called in wrong state");
            }
            int i = this.k;
            if (i > 0) {
                try {
                    mediaPlayer.seekTo(i);
                } catch (Throwable unused2) {
                    y14.r(null, "DefaultVideoPlayer: Media player's seek to method called in wrong state");
                }
                this.k = 0;
            }
            this.i = 1;
            n.a aVar = this.g;
            if (aVar != null) {
                aVar.h();
            }
        }
    }

    @Override // com.my.target.n
    public final void setVolume(float f) {
        this.j = f;
        if (i()) {
            try {
                this.f.setVolume(f, f);
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's set volume method called in wrong state, "), th);
            }
        }
        n.a aVar = this.g;
        if (aVar != null) {
            aVar.a(f);
        }
    }

    @Override // com.my.target.n
    public final void stop() {
        this.b.e(this.c);
        this.d.e(this.e);
        try {
            this.f.stop();
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("DefaultVideoPlayer: Media player's stop method called in wrong state, "), th);
        }
        n.a aVar = this.g;
        if (aVar != null) {
            aVar.o();
        }
        this.i = 3;
    }

    @Override // com.my.target.n
    public final void a(n.a aVar) {
        this.g = aVar;
        this.c.c = aVar;
        this.e.c = aVar;
    }

    @Override // com.my.target.n
    public final void d() {
        setVolume(1.0f);
    }

    @Override // com.my.target.n
    public final boolean b() {
        return this.i == 2;
    }

    @Override // com.my.target.n
    public final boolean c() {
        return this.j == 0.0f;
    }
}
