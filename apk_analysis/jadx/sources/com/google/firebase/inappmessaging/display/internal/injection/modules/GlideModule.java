package com.google.firebase.inappmessaging.display.internal.injection.modules;

import android.app.Application;
import com.bumptech.glide.a;
import com.google.firebase.inappmessaging.display.dagger.Module;
import com.google.firebase.inappmessaging.display.dagger.Provides;
import defpackage.p37;

/* JADX INFO: loaded from: classes4.dex */
@Module
public class GlideModule {
    @Provides
    public p37 providesGlideRequestManager(Application application) {
        return a.d(application);
    }
}
