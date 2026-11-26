package androidx.window.core;

import android.content.ComponentName;
import defpackage.aa4;
import defpackage.me0;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityComponentInfo {
    private final String className;
    private final String packageName;

    /* JADX WARN: Illegal instructions before constructor call */
    public ActivityComponentInfo(ComponentName componentName) {
        componentName.getClass();
        String packageName = componentName.getPackageName();
        packageName.getClass();
        String className = componentName.getClassName();
        className.getClass();
        this(packageName, className);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!ActivityComponentInfo.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        ActivityComponentInfo activityComponentInfo = (ActivityComponentInfo) obj;
        return aa4.e(this.packageName, activityComponentInfo.packageName) && aa4.e(this.className, activityComponentInfo.className);
    }

    public final String getClassName() {
        return this.className;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        return this.className.hashCode() + (this.packageName.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClassInfo { packageName: ");
        sb.append(this.packageName);
        sb.append(", className: ");
        return me0.d(sb, this.className, " }");
    }

    public ActivityComponentInfo(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.packageName = str;
        this.className = str2;
    }
}
