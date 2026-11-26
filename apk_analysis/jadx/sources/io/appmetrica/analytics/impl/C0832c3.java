package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.BatteryInfo;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeType;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeChangeListener;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.c3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0832c3 extends SafeRunnable {
    public final /* synthetic */ BatteryInfo a;
    public final /* synthetic */ C0858d3 b;

    public C0832c3(C0858d3 c0858d3, BatteryInfo batteryInfo) {
        this.b = c0858d3;
        this.a = batteryInfo;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C0883e3 c0883e3 = this.b.a;
        ChargeType chargeType = this.a.chargeType;
        ChargeType chargeType2 = C0883e3.d;
        synchronized (c0883e3) {
            Iterator it = c0883e3.c.iterator();
            while (it.hasNext()) {
                ((ChargeTypeChangeListener) it.next()).onChargeTypeChanged(chargeType);
            }
        }
    }
}
