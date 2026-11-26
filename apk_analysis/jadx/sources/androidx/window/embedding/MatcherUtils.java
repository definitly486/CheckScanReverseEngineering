package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.webkit.ProxyConfig;
import androidx.window.core.ActivityComponentInfo;
import defpackage.aa4;
import defpackage.fg;
import defpackage.ra8;
import defpackage.ta8;

/* JADX INFO: loaded from: classes3.dex */
public final class MatcherUtils {
    public static final MatcherUtils INSTANCE = new MatcherUtils();
    public static final boolean sDebugMatchers = false;
    public static final String sMatchersTag = "SplitRuleResolution";

    private MatcherUtils() {
    }

    private final boolean wildcardMatch(String str, String str2) {
        if (!ta8.D(str2, ProxyConfig.MATCH_ALL_SCHEMES, false)) {
            return false;
        }
        if (str2.equals(ProxyConfig.MATCH_ALL_SCHEMES)) {
            return true;
        }
        if (ta8.K(str2, ProxyConfig.MATCH_ALL_SCHEMES, 0, false, 6) == ta8.N(6, str2, ProxyConfig.MATCH_ALL_SCHEMES) && ra8.u(str2, ProxyConfig.MATCH_ALL_SCHEMES, false)) {
            return ra8.C(str, str2.substring(0, str2.length() - 1), false);
        }
        fg.c("Name pattern with a wildcard must only contain a single wildcard in the end");
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x006d A[RETURN] */
    public final boolean areComponentsMatching$window_release(ActivityComponentInfo activityComponentInfo, ActivityComponentInfo activityComponentInfo2) {
        activityComponentInfo2.getClass();
        if (activityComponentInfo == null) {
            if (aa4.e(activityComponentInfo2.getPackageName(), ProxyConfig.MATCH_ALL_SCHEMES) && aa4.e(activityComponentInfo2.getClassName(), ProxyConfig.MATCH_ALL_SCHEMES)) {
                return true;
            }
            return false;
        }
        if (ta8.D(activityComponentInfo.toString(), ProxyConfig.MATCH_ALL_SCHEMES, false)) {
            fg.c("Wildcard can only be part of the rule.");
            return false;
        }
        boolean z = aa4.e(activityComponentInfo.getPackageName(), activityComponentInfo2.getPackageName()) || wildcardMatch(activityComponentInfo.getPackageName(), activityComponentInfo2.getPackageName());
        boolean z2 = aa4.e(activityComponentInfo.getClassName(), activityComponentInfo2.getClassName()) || wildcardMatch(activityComponentInfo.getClassName(), activityComponentInfo2.getClassName());
        if (z && z2) {
            return true;
        }
        return false;
    }

    public final boolean isActivityMatching$window_release(Activity activity, ActivityComponentInfo activityComponentInfo) {
        activity.getClass();
        activityComponentInfo.getClass();
        ComponentName componentName = activity.getComponentName();
        componentName.getClass();
        if (areComponentsMatching$window_release(new ActivityComponentInfo(componentName), activityComponentInfo)) {
            return true;
        }
        Intent intent = activity.getIntent();
        if (intent != null) {
            return INSTANCE.isIntentMatching$window_release(intent, activityComponentInfo);
        }
        return false;
    }

    public final boolean isIntentMatching$window_release(Intent intent, ActivityComponentInfo activityComponentInfo) {
        String str;
        intent.getClass();
        activityComponentInfo.getClass();
        ComponentName component = intent.getComponent();
        if (areComponentsMatching$window_release(component != null ? new ActivityComponentInfo(component) : null, activityComponentInfo)) {
            return true;
        }
        if (intent.getComponent() == null && (str = intent.getPackage()) != null) {
            return (str.equals(activityComponentInfo.getPackageName()) || wildcardMatch(str, activityComponentInfo.getPackageName())) && aa4.e(activityComponentInfo.getClassName(), ProxyConfig.MATCH_ALL_SCHEMES);
        }
        return false;
    }

    public final void validateComponentName$window_release(String str, String str2) {
        str.getClass();
        str2.getClass();
        if (str.length() <= 0) {
            fg.c("Package name must not be empty");
            return;
        }
        if (str2.length() <= 0) {
            fg.c("Activity class name must not be empty");
            return;
        }
        if (ta8.D(str, ProxyConfig.MATCH_ALL_SCHEMES, false) && ta8.K(str, ProxyConfig.MATCH_ALL_SCHEMES, 0, false, 6) != str.length() - 1) {
            fg.c("Wildcard in package name is only allowed at the end.");
        } else {
            if (!ta8.D(str2, ProxyConfig.MATCH_ALL_SCHEMES, false) || ta8.K(str2, ProxyConfig.MATCH_ALL_SCHEMES, 0, false, 6) == str2.length() - 1) {
                return;
            }
            fg.c("Wildcard in class name is only allowed at the end.");
        }
    }
}
