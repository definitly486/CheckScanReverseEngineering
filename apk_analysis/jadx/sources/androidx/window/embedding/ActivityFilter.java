package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ActivityComponentInfo;
import defpackage.aa4;
import defpackage.xp;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityFilter {
    private final ActivityComponentInfo activityComponentInfo;
    private final String intentAction;

    public ActivityFilter(ActivityComponentInfo activityComponentInfo, String str) {
        activityComponentInfo.getClass();
        this.activityComponentInfo = activityComponentInfo;
        this.intentAction = str;
        MatcherUtils.INSTANCE.validateComponentName$window_release(activityComponentInfo.getPackageName(), activityComponentInfo.getClassName());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityFilter)) {
            return false;
        }
        ActivityFilter activityFilter = (ActivityFilter) obj;
        return aa4.e(this.activityComponentInfo, activityFilter.activityComponentInfo) && aa4.e(this.intentAction, activityFilter.intentAction);
    }

    public final ActivityComponentInfo getActivityComponentInfo$window_release() {
        return this.activityComponentInfo;
    }

    public final ComponentName getComponentName() {
        return new ComponentName(this.activityComponentInfo.getPackageName(), this.activityComponentInfo.getClassName());
    }

    public final String getIntentAction() {
        return this.intentAction;
    }

    public int hashCode() {
        int iHashCode = this.activityComponentInfo.hashCode() * 31;
        String str = this.intentAction;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final boolean matchesActivity(Activity activity) {
        activity.getClass();
        if (!MatcherUtils.INSTANCE.isActivityMatching$window_release(activity, this.activityComponentInfo)) {
            return false;
        }
        String str = this.intentAction;
        if (str == null) {
            return true;
        }
        Intent intent = activity.getIntent();
        return aa4.e(str, intent != null ? intent.getAction() : null);
    }

    public final boolean matchesIntent(Intent intent) {
        intent.getClass();
        if (!MatcherUtils.INSTANCE.isIntentMatching$window_release(intent, this.activityComponentInfo)) {
            return false;
        }
        String str = this.intentAction;
        return str == null || aa4.e(str, intent.getAction());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ActivityFilter(componentName=");
        sb.append(this.activityComponentInfo);
        sb.append(", intentAction=");
        return xp.e(sb, this.intentAction, ')');
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ActivityFilter(ComponentName componentName, String str) {
        this(new ActivityComponentInfo(componentName), str);
        componentName.getClass();
    }
}
