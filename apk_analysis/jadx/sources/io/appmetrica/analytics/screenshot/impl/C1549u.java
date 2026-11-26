package io.appmetrica.analytics.screenshot.impl;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;
import io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1549u implements C {
    public final ClientContext a;

    public C1549u(ClientContext clientContext) {
        this.a = clientContext;
    }

    public final void a(String str) {
        InternalClientModuleFacade internalClientModuleFacade = this.a.getInternalClientModuleFacade();
        InternalModuleEvent.Builder builderWithName = InternalModuleEvent.Companion.newBuilder(4).withName("appmetrica_system_event_screenshot");
        Map<String, ? extends Object> mapSingletonMap = Collections.singletonMap(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, str);
        mapSingletonMap.getClass();
        internalClientModuleFacade.reportEvent(builderWithName.withAttributes(mapSingletonMap).withCategory(InternalModuleEvent.Category.SYSTEM).build());
    }
}
