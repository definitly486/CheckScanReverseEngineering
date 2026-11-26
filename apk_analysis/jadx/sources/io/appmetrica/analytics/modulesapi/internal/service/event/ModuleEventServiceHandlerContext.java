package io.appmetrica.analytics.modulesapi.internal.service.event;

import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;

/* JADX INFO: loaded from: classes5.dex */
public interface ModuleEventServiceHandlerContext {
    ModuleEventServiceHandlerReporter getEventReporter();

    ModulePreferences getLegacyModulePreferences();

    ModulePreferences getModulePreferences();
}
