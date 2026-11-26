package androidx.navigationevent;

import android.os.Build;
import android.window.BackEvent;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationEvent_androidKt {
    public static final NavigationEvent NavigationEvent(BackEvent backEvent) {
        backEvent.getClass();
        float touchX = backEvent.getTouchX();
        float touchY = backEvent.getTouchY();
        return new NavigationEvent(backEvent.getSwipeEdge(), backEvent.getProgress(), touchX, touchY, Build.VERSION.SDK_INT >= 36 ? backEvent.getFrameTimeMillis() : 0L);
    }
}
