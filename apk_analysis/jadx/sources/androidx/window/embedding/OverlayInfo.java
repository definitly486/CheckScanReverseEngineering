package androidx.window.embedding;

import android.app.Activity;

/* JADX INFO: loaded from: classes3.dex */
public final class OverlayInfo {
    private final ActivityStack activityStack;
    private final OverlayAttributes currentOverlayAttributes;
    private final String overlayTag;

    public OverlayInfo(String str, OverlayAttributes overlayAttributes, ActivityStack activityStack) {
        str.getClass();
        this.overlayTag = str;
        this.currentOverlayAttributes = overlayAttributes;
        this.activityStack = activityStack;
    }

    public final boolean contains(Activity activity) {
        activity.getClass();
        ActivityStack activityStack = this.activityStack;
        if (activityStack != null) {
            return activityStack.contains(activity);
        }
        return false;
    }

    public final ActivityStack getActivityStack() {
        return this.activityStack;
    }

    public final OverlayAttributes getCurrentOverlayAttributes() {
        return this.currentOverlayAttributes;
    }

    public final String getOverlayTag() {
        return this.overlayTag;
    }

    public String toString() {
        return "OverlayInfo: {tag=" + this.overlayTag + ", currentOverlayAttrs=" + this.currentOverlayAttributes + ", activityStack=" + this.activityStack + '}';
    }
}
