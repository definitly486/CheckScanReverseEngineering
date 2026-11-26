package io.appmetrica.analytics.impl;

import android.app.Activity;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1190q {
    public final WeakHashMap a = new WeakHashMap();

    public final boolean a(Activity activity, EnumC1164p enumC1164p) {
        if (activity != null && this.a.get(activity) == enumC1164p) {
            return false;
        }
        if (activity == null) {
            return true;
        }
        this.a.put(activity, enumC1164p);
        return true;
    }
}
