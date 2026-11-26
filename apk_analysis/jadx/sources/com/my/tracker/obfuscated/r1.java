package com.my.tracker.obfuscated;

import android.app.Application;
import com.my.tracker.plugins.MyTrackerPlugin;
import com.my.tracker.plugins.MyTrackerPluginConfig;
import com.my.tracker.plugins.PluginEventTracker;
import defpackage.wt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class r1 {
    private final List a = new ArrayList();
    private final AtomicBoolean b = new AtomicBoolean();
    private final PluginEventTracker c;
    private final Application d;

    private r1(PluginEventTracker pluginEventTracker, Application application) {
        this.c = pluginEventTracker;
        this.d = application;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MyTrackerPluginConfig myTrackerPluginConfig = (MyTrackerPluginConfig) it.next();
            String pluginName = myTrackerPluginConfig.getPluginName();
            b3.c("PluginHandler: initializing plugin " + pluginName);
            try {
                MyTrackerPlugin myTrackerPlugin = (MyTrackerPlugin) Class.forName(myTrackerPluginConfig.getPluginClass()).newInstance();
                myTrackerPlugin.init(myTrackerPluginConfig, this.c, this.d);
                this.a.add(myTrackerPlugin);
                b3.c("PluginHandler: plugin " + pluginName + " is initialized");
            } catch (Throwable th) {
                b3.b("PluginHandler: exception occurred while initialization plugin " + pluginName, th);
            }
        }
    }

    public void a(List list) {
        if (this.b.compareAndSet(false, true)) {
            m.a(new wt(3, this, list));
        } else {
            b3.a("PluginHandler: instance has already been initialized");
        }
    }

    public static r1 a(i0 i0Var, Application application) {
        return new r1(PluginEventTracker.a(i0Var), application);
    }
}
