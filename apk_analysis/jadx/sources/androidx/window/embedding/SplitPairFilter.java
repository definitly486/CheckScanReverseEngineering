package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ActivityComponentInfo;
import defpackage.aa4;
import defpackage.xp;

/* JADX INFO: loaded from: classes3.dex */
public final class SplitPairFilter {
    private final ActivityComponentInfo _primaryActivityName;
    private final ActivityComponentInfo _secondaryActivityName;
    private final String secondaryActivityIntentAction;

    public SplitPairFilter(ActivityComponentInfo activityComponentInfo, ActivityComponentInfo activityComponentInfo2, String str) {
        activityComponentInfo.getClass();
        activityComponentInfo2.getClass();
        this._primaryActivityName = activityComponentInfo;
        this._secondaryActivityName = activityComponentInfo2;
        this.secondaryActivityIntentAction = str;
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        matcherUtils.validateComponentName$window_release(activityComponentInfo.getPackageName(), activityComponentInfo.getClassName());
        matcherUtils.validateComponentName$window_release(activityComponentInfo2.getPackageName(), activityComponentInfo2.getClassName());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!SplitPairFilter.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        SplitPairFilter splitPairFilter = (SplitPairFilter) obj;
        return aa4.e(this._primaryActivityName, splitPairFilter._primaryActivityName) && aa4.e(this._secondaryActivityName, splitPairFilter._secondaryActivityName) && aa4.e(this.secondaryActivityIntentAction, splitPairFilter.secondaryActivityIntentAction);
    }

    public final ComponentName getPrimaryActivityName() {
        return new ComponentName(this._primaryActivityName.getPackageName(), this._primaryActivityName.getClassName());
    }

    public final String getSecondaryActivityIntentAction() {
        return this.secondaryActivityIntentAction;
    }

    public final ComponentName getSecondaryActivityName() {
        return new ComponentName(this._secondaryActivityName.getPackageName(), this._secondaryActivityName.getClassName());
    }

    public int hashCode() {
        int iHashCode = (this._secondaryActivityName.hashCode() + (this._primaryActivityName.hashCode() * 31)) * 31;
        String str = this.secondaryActivityIntentAction;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final boolean matchesActivityIntentPair(Activity activity, Intent intent) {
        activity.getClass();
        intent.getClass();
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        if (!matcherUtils.isActivityMatching$window_release(activity, this._primaryActivityName) || !matcherUtils.isIntentMatching$window_release(intent, this._secondaryActivityName)) {
            return false;
        }
        String str = this.secondaryActivityIntentAction;
        return str == null || aa4.e(str, intent.getAction());
    }

    public final boolean matchesActivityPair(Activity activity, Activity activity2) {
        activity.getClass();
        activity2.getClass();
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        if (!matcherUtils.isActivityMatching$window_release(activity, this._primaryActivityName) || !matcherUtils.isActivityMatching$window_release(activity2, this._secondaryActivityName)) {
            return false;
        }
        String str = this.secondaryActivityIntentAction;
        if (str == null) {
            return true;
        }
        Intent intent = activity2.getIntent();
        return aa4.e(str, intent != null ? intent.getAction() : null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SplitPairFilter{primaryActivityName=");
        sb.append(getPrimaryActivityName());
        sb.append(", secondaryActivityName=");
        sb.append(getSecondaryActivityName());
        sb.append(", secondaryActivityAction=");
        return xp.e(sb, this.secondaryActivityIntentAction, '}');
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplitPairFilter(ComponentName componentName, ComponentName componentName2, String str) {
        this(new ActivityComponentInfo(componentName), new ActivityComponentInfo(componentName2), str);
        componentName.getClass();
        componentName2.getClass();
    }
}
