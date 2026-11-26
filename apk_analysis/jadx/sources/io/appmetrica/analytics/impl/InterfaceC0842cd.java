package io.appmetrica.analytics.impl;

import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleLocationSourcesServiceController;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.cd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public interface InterfaceC0842cd extends Ad {
    List<ModuleServicesDatabase> a();

    /* synthetic */ Map b();

    /* synthetic */ Map c();

    List<Consumer<Location>> d();

    ModuleLocationSourcesServiceController e();

    Toggle f();

    /* synthetic */ List g();
}
