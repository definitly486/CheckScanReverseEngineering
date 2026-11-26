package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import defpackage.he7;
import defpackage.ne7;
import defpackage.rj;

/* JADX INFO: loaded from: classes4.dex */
@Module
public class SchedulerModule {
    @Provides
    public he7 providesComputeScheduler() {
        return ne7.b;
    }

    @Provides
    public he7 providesIOScheduler() {
        return ne7.c;
    }

    @Provides
    public he7 providesMainThreadScheduler() {
        return rj.a();
    }
}
