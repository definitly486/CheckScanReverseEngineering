package androidx.navigationevent;

import defpackage.ej0;
import defpackage.jh2;
import defpackage.jn;
import defpackage.lg;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationEvent {
    public static final Companion Companion = new Companion(null);
    public static final int EDGE_LEFT = 0;
    public static final int EDGE_NONE = 2;
    public static final int EDGE_RIGHT = 1;
    private final long frameTimeMillis;
    private final float progress;
    private final int swipeEdge;
    private final float touchX;
    private final float touchY;

    @Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface SwipeEdge {
    }

    public /* synthetic */ NavigationEvent(int i, float f, float f2, float f3, long j, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 2 : i, (i2 & 2) != 0 ? 0.0f : f, (i2 & 4) != 0 ? 0.0f : f2, (i2 & 8) != 0 ? 0.0f : f3, (i2 & 16) != 0 ? 0L : j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && NavigationEvent.class == obj.getClass()) {
            NavigationEvent navigationEvent = (NavigationEvent) obj;
            return this.touchX == navigationEvent.touchX && this.touchY == navigationEvent.touchY && this.progress == navigationEvent.progress && this.swipeEdge == navigationEvent.swipeEdge && this.frameTimeMillis == navigationEvent.frameTimeMillis;
        }
        return false;
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

    public int hashCode() {
        return Long.hashCode(this.frameTimeMillis) + ej0.b(this.swipeEdge, jn.b(this.progress, jn.b(this.touchY, Float.hashCode(this.touchX) * 31, 31), 31), 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavigationEvent(touchX=");
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

    public NavigationEvent(int i) {
        this(i, 0.0f, 0.0f, 0.0f, 0L, 30, null);
    }

    public NavigationEvent(int i, float f) {
        this(i, f, 0.0f, 0.0f, 0L, 28, null);
    }

    public NavigationEvent(int i, float f, float f2) {
        this(i, f, f2, 0.0f, 0L, 24, null);
    }

    public NavigationEvent(int i, float f, float f2, float f3) {
        this(i, f, f2, f3, 0L, 16, null);
    }

    public NavigationEvent(int i, float f, float f2, float f3, long j) {
        this.swipeEdge = i;
        this.progress = f;
        this.touchX = f2;
        this.touchY = f3;
        this.frameTimeMillis = j;
    }

    public NavigationEvent() {
        this(0, 0.0f, 0.0f, 0.0f, 0L, 31, null);
    }
}
