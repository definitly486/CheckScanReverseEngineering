package androidx.activity;

import android.os.Build;
import android.window.BackEvent;
import androidx.navigationevent.NavigationEvent;
import defpackage.jh2;
import defpackage.lg;
import defpackage.wz;
import defpackage.xz;
import defpackage.yz;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
public final class BackEventCompat {
    public static final Companion Companion = new Companion(null);
    public static final int EDGE_LEFT = 0;
    public static final int EDGE_NONE = 2;
    public static final int EDGE_RIGHT = 1;
    private final long frameTimeMillis;
    private final float progress;
    private final int swipeEdge;
    private final float touchX;
    private final float touchY;

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface SwipeEdge {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BackEventCompat(BackEvent backEvent) {
        this(backEvent.getTouchX(), backEvent.getTouchY(), backEvent.getProgress(), backEvent.getSwipeEdge(), Build.VERSION.SDK_INT >= 36 ? backEvent.getFrameTimeMillis() : 0L);
        backEvent.getClass();
    }

    public final long getFrameTimeMillis() {
        return this.frameTimeMillis;
    }

    public final float getProgress() {
        return this.progress;
    }

    public final int getSwipeEdge() {
        return this.swipeEdge;
    }

    public final float getTouchX() {
        return this.touchX;
    }

    public final float getTouchY() {
        return this.touchY;
    }

    public final BackEvent toBackEvent() {
        if (Build.VERSION.SDK_INT >= 36) {
            yz.a();
            return wz.a(this.touchX, this.touchY, this.progress, this.swipeEdge, this.frameTimeMillis);
        }
        yz.a();
        return xz.a(this.touchX, this.touchY, this.progress, this.swipeEdge);
    }

    public final NavigationEvent toNavigationEvent() {
        float f = this.touchX;
        float f2 = this.touchY;
        return new NavigationEvent(this.swipeEdge, this.progress, f, f2, this.frameTimeMillis);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BackEventCompat(touchX=");
        sb.append(this.touchX);
        sb.append(", touchY=");
        sb.append(this.touchY);
        sb.append(", progress=");
        sb.append(this.progress);
        sb.append(", swipeEdge=");
        sb.append(this.swipeEdge);
        sb.append(", frameTimeMillis=");
        return lg.f(sb, this.frameTimeMillis, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public BackEventCompat(float f, float f2, float f3, int i, long j) {
        this.touchX = f;
        this.touchY = f2;
        this.progress = f3;
        this.swipeEdge = i;
        this.frameTimeMillis = j;
    }

    public /* synthetic */ BackEventCompat(float f, float f2, float f3, int i, long j, int i2, jh2 jh2Var) {
        this(f, f2, f3, i, (i2 & 16) != 0 ? 0L : j);
    }

    public BackEventCompat(float f, float f2, float f3, int i) {
        this(f, f2, f3, i, 0L, 16, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BackEventCompat(NavigationEvent navigationEvent) {
        this(navigationEvent.getTouchX(), navigationEvent.getTouchY(), navigationEvent.getProgress(), navigationEvent.getSwipeEdge(), navigationEvent.getFrameTimeMillis());
        navigationEvent.getClass();
    }
}
