package androidx.navigation;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import defpackage.d31;
import defpackage.ef4;
import defpackage.ne4;
import defpackage.ul2;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@NavDestinationDsl
public final class ActivityNavigatorDestinationBuilder extends NavDestinationBuilder<ActivityNavigator.Destination> {
    private String action;
    private ne4<? extends Activity> activityClass;
    private Context context;
    private Uri data;
    private String dataPattern;
    private String targetPackage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityNavigatorDestinationBuilder(ActivityNavigator activityNavigator, ne4<? extends Object> ne4Var, Map<ef4, NavType<?>> map) {
        super(activityNavigator, ne4Var, map);
        activityNavigator.getClass();
        ne4Var.getClass();
        map.getClass();
        this.context = activityNavigator.getContext();
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public ActivityNavigator.Destination build() {
        ActivityNavigator.Destination destination = (ActivityNavigator.Destination) super.build();
        destination.setTargetPackage(this.targetPackage);
        ne4<? extends Activity> ne4Var = this.activityClass;
        if (ne4Var != null) {
            destination.setComponentName(new ComponentName(this.context, (Class<?>) d31.n(ne4Var)));
        }
        destination.setAction(this.action);
        destination.setData(this.data);
        destination.setDataPattern(this.dataPattern);
        return destination;
    }

    public final String getAction() {
        return this.action;
    }

    public final ne4<? extends Activity> getActivityClass() {
        return this.activityClass;
    }

    public final Uri getData() {
        return this.data;
    }

    public final String getDataPattern() {
        return this.dataPattern;
    }

    public final String getTargetPackage() {
        return this.targetPackage;
    }

    public final void setAction(String str) {
        this.action = str;
    }

    public final void setActivityClass(ne4<? extends Activity> ne4Var) {
        this.activityClass = ne4Var;
    }

    public final void setData(Uri uri) {
        this.data = uri;
    }

    public final void setDataPattern(String str) {
        this.dataPattern = str;
    }

    public final void setTargetPackage(String str) {
        this.targetPackage = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityNavigatorDestinationBuilder(ActivityNavigator activityNavigator, String str) {
        super(activityNavigator, str);
        activityNavigator.getClass();
        str.getClass();
        this.context = activityNavigator.getContext();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @ul2
    public ActivityNavigatorDestinationBuilder(ActivityNavigator activityNavigator, int i) {
        super(activityNavigator, i);
        activityNavigator.getClass();
        this.context = activityNavigator.getContext();
    }
}
