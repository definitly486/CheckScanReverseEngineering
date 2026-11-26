package androidx.window.embedding;

import android.app.Activity;
import android.os.IBinder;
import androidx.window.WindowSdkExtensions;
import defpackage.aa4;
import defpackage.fg;
import defpackage.ul2;
import defpackage.y74;

/* JADX INFO: loaded from: classes3.dex */
public final class SplitInfo {
    private final IBinder binder;
    private final ActivityStack primaryActivityStack;
    private final ActivityStack secondaryActivityStack;
    private final SplitAttributes splitAttributes;
    private final androidx.window.extensions.embedding.SplitInfo.Token token;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplitInfo(ActivityStack activityStack, ActivityStack activityStack2, SplitAttributes splitAttributes, IBinder iBinder) {
        this(activityStack, activityStack2, splitAttributes, iBinder, null);
        activityStack.getClass();
        activityStack2.getClass();
        splitAttributes.getClass();
        iBinder.getClass();
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(new y74(3, 4, 1));
    }

    @ul2
    private static /* synthetic */ void getBinder$annotations() {
    }

    public final boolean contains(Activity activity) {
        activity.getClass();
        return this.primaryActivityStack.contains(activity) || this.secondaryActivityStack.contains(activity);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitInfo)) {
            return false;
        }
        SplitInfo splitInfo = (SplitInfo) obj;
        return aa4.e(this.primaryActivityStack, splitInfo.primaryActivityStack) && aa4.e(this.secondaryActivityStack, splitInfo.secondaryActivityStack) && aa4.e(this.splitAttributes, splitInfo.splitAttributes) && aa4.e(this.token, splitInfo.token) && aa4.e(this.binder, splitInfo.binder);
    }

    public final IBinder getBinder$window_release() {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(new y74(3, 4, 1));
        IBinder iBinder = this.binder;
        if (iBinder != null) {
            return iBinder;
        }
        fg.c("Required value was null.");
        return null;
    }

    public final ActivityStack getPrimaryActivityStack() {
        return this.primaryActivityStack;
    }

    public final ActivityStack getSecondaryActivityStack() {
        return this.secondaryActivityStack;
    }

    public final SplitAttributes getSplitAttributes() {
        return this.splitAttributes;
    }

    public final androidx.window.extensions.embedding.SplitInfo.Token getToken$window_release() {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(5);
        androidx.window.extensions.embedding.SplitInfo.Token token = this.token;
        if (token != null) {
            return token;
        }
        fg.c("Required value was null.");
        return null;
    }

    public int hashCode() {
        int iHashCode = (this.splitAttributes.hashCode() + ((this.secondaryActivityStack.hashCode() + (this.primaryActivityStack.hashCode() * 31)) * 31)) * 31;
        androidx.window.extensions.embedding.SplitInfo.Token token = this.token;
        int iHashCode2 = (iHashCode + (token != null ? token.hashCode() : 0)) * 31;
        IBinder iBinder = this.binder;
        return iHashCode2 + (iBinder != null ? iBinder.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SplitInfo:{");
        sb.append("primaryActivityStack=" + this.primaryActivityStack + ", ");
        sb.append("secondaryActivityStack=" + this.secondaryActivityStack + ", ");
        sb.append("splitAttributes=" + this.splitAttributes + ", ");
        if (this.token != null) {
            sb.append("token=" + this.token);
        }
        if (this.binder != null) {
            sb.append("binder=" + this.binder);
        }
        sb.append("}");
        return sb.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplitInfo(ActivityStack activityStack, ActivityStack activityStack2, SplitAttributes splitAttributes, androidx.window.extensions.embedding.SplitInfo.Token token) {
        this(activityStack, activityStack2, splitAttributes, null, token);
        activityStack.getClass();
        activityStack2.getClass();
        splitAttributes.getClass();
        token.getClass();
    }

    private SplitInfo(ActivityStack activityStack, ActivityStack activityStack2, SplitAttributes splitAttributes, IBinder iBinder, androidx.window.extensions.embedding.SplitInfo.Token token) {
        this.primaryActivityStack = activityStack;
        this.secondaryActivityStack = activityStack2;
        this.splitAttributes = splitAttributes;
        this.binder = iBinder;
        this.token = token;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplitInfo(ActivityStack activityStack, ActivityStack activityStack2, SplitAttributes splitAttributes) {
        this(activityStack, activityStack2, splitAttributes, null, null);
        activityStack.getClass();
        activityStack2.getClass();
        splitAttributes.getClass();
    }
}
