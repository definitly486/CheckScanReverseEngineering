package com.google.firebase.inappmessaging.internal.injection.modules;

import android.app.Application;
import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import com.google.firebase.inappmessaging.internal.ForegroundNotifier;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.AppForeground;
import defpackage.iw1;
import defpackage.kw1;

/* JADX INFO: loaded from: classes4.dex */
@Module
public class ForegroundFlowableModule {
    @Provides
    @AppForeground
    public kw1<String> providesAppForegroundEventStream(Application application) {
        ForegroundNotifier foregroundNotifier = new ForegroundNotifier();
        kw1<String> kw1VarForegroundFlowable = foregroundNotifier.foregroundFlowable();
        kw1VarForegroundFlowable.i(new iw1());
        application.registerActivityLifecycleCallbacks(foregroundNotifier);
        return kw1VarForegroundFlowable;
    }
}
