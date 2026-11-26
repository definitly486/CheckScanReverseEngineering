package androidx.window.embedding;

import android.app.Activity;
import androidx.window.WindowSdkExtensions;
import defpackage.aa4;
import defpackage.tg;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityStack {
    private final List<Activity> activitiesInProcess;
    private final boolean isEmpty;
    private final androidx.window.extensions.embedding.ActivityStack.Token token;

    /* JADX WARN: Multi-variable type inference failed */
    public ActivityStack(List<? extends Activity> list, boolean z, androidx.window.extensions.embedding.ActivityStack.Token token) {
        list.getClass();
        this.activitiesInProcess = list;
        this.isEmpty = z;
        this.token = token;
    }

    public final boolean contains(Activity activity) {
        activity.getClass();
        return this.activitiesInProcess.contains(activity);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityStack)) {
            return false;
        }
        ActivityStack activityStack = (ActivityStack) obj;
        return aa4.e(this.activitiesInProcess, activityStack.activitiesInProcess) && this.isEmpty == activityStack.isEmpty && aa4.e(this.token, activityStack.token);
    }

    public final List<Activity> getActivitiesInProcess$window_release() {
        return this.activitiesInProcess;
    }

    public final androidx.window.extensions.embedding.ActivityStack.Token getToken$window_release() {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(5);
        androidx.window.extensions.embedding.ActivityStack.Token token = this.token;
        token.getClass();
        return token;
    }

    public int hashCode() {
        int iC = tg.c(this.activitiesInProcess.hashCode() * 31, 31, this.isEmpty);
        androidx.window.extensions.embedding.ActivityStack.Token token = this.token;
        return iC + (token != null ? token.hashCode() : 0);
    }

    public final boolean isEmpty() {
        return this.isEmpty;
    }

    public String toString() {
        return "ActivityStack{activitiesInProcess=" + this.activitiesInProcess + ", isEmpty=" + this.isEmpty + ", token=" + this.token + '}';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ActivityStack(List<? extends Activity> list, boolean z) {
        this(list, z, null);
        list.getClass();
    }
}
