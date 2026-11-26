package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceModuleCounterReport;

/* JADX INFO: loaded from: classes5.dex */
public final class Jk {
    public static C0783a6 a(ServiceModuleCounterReport serviceModuleCounterReport) {
        String value;
        C0783a6 c0783a6 = new C0783a6("", "", 0);
        c0783a6.d = serviceModuleCounterReport.getType();
        String name = serviceModuleCounterReport.getName();
        if (name != null) {
            c0783a6.a = name;
        }
        if (serviceModuleCounterReport.getValueBytes() == null && (value = serviceModuleCounterReport.getValue()) != null) {
            c0783a6.b = value;
        }
        byte[] valueBytes = serviceModuleCounterReport.getValueBytes();
        if (valueBytes != null) {
            c0783a6.setValueBytes(valueBytes);
        }
        return c0783a6;
    }
}
