package com.google.firebase.inappmessaging.display.internal.injection.components;

import android.app.Application;
import android.util.DisplayMetrics;
import com.google.firebase.inappmessaging.display.dagger.Component;
import com.google.firebase.inappmessaging.display.internal.BindingWrapperFactory;
import com.google.firebase.inappmessaging.display.internal.FiamWindowManager;
import com.google.firebase.inappmessaging.display.internal.InAppMessageLayoutConfig;
import com.google.firebase.inappmessaging.display.internal.injection.modules.ApplicationModule;
import com.google.firebase.inappmessaging.display.internal.injection.modules.InflaterConfigModule;
import defpackage.ws6;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@Component(modules = {ApplicationModule.class, InflaterConfigModule.class})
public interface UniversalComponent {
    DisplayMetrics displayMetrics();

    FiamWindowManager fiamWindowManager();

    BindingWrapperFactory inflaterClient();

    Map<String, ws6<InAppMessageLayoutConfig>> myKeyStringMap();

    Application providesApplication();
}
