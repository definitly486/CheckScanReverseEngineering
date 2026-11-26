package io.appmetrica.analytics.billingv8.internal;

import android.content.Context;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.PendingPurchasesParams;
import defpackage.aa4;
import defpackage.jh2;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.monitor.BillingMonitor;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage;
import io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy;
import io.appmetrica.analytics.billingv8.impl.b;
import io.appmetrica.analytics.billingv8.impl.c;
import io.appmetrica.analytics.billingv8.impl.d;
import io.appmetrica.analytics.billingv8.impl.l;
import io.appmetrica.analytics.billingv8.impl.n;
import io.appmetrica.analytics.billingv8.impl.o;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class BillingLibraryMonitor implements BillingMonitor, n {
    private final Context a;
    private final Executor b;
    private final Executor c;
    private final BillingInfoSender d;
    private final BillingInfoManager e;
    private final UpdatePolicy f;
    private BillingConfig g;
    private boolean h;

    public /* synthetic */ BillingLibraryMonitor(Context context, Executor executor, Executor executor2, BillingInfoStorage billingInfoStorage, BillingInfoSender billingInfoSender, BillingInfoManager billingInfoManager, UpdatePolicy updatePolicy, int i, jh2 jh2Var) {
        this(context, executor, executor2, billingInfoStorage, billingInfoSender, (i & 32) != 0 ? new c(billingInfoStorage) : billingInfoManager, (i & 64) != 0 ? new o(null, 1, null) : updatePolicy);
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.config.BillingConfigChangedListener
    public synchronized void onBillingConfigChanged(BillingConfig billingConfig) {
        BillingLibraryMonitor billingLibraryMonitor;
        try {
            if (!aa4.e(this.g, billingConfig)) {
                this.g = billingConfig;
                if (billingConfig != null && !this.h) {
                    this.h = true;
                    BillingClient billingClientBuild = BillingClient.newBuilder(this.a).setListener(new l()).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
                    billingLibraryMonitor = this;
                    try {
                        billingClientBuild.startConnection(new b(billingConfig, billingClientBuild, new BillingLibraryMonitor$updateBilling$1(this), new d(billingClientBuild), billingLibraryMonitor));
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        billingLibraryMonitor = this;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.monitor.BillingMonitor
    public void onSessionResumed() {
        try {
            BillingConfig billingConfig = this.g;
            if (billingConfig != null && !this.h) {
                this.h = true;
                BillingClient billingClientBuild = BillingClient.newBuilder(this.a).setListener(new l()).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
                billingClientBuild.startConnection(new b(billingConfig, billingClientBuild, new BillingLibraryMonitor$updateBilling$1(this), new d(billingClientBuild), this));
            }
        } catch (Throwable unused) {
        }
    }

    @Override // io.appmetrica.analytics.billingv8.impl.n
    public synchronized void onUpdateFinished() {
        this.h = false;
    }

    public BillingLibraryMonitor(Context context, Executor executor, Executor executor2, BillingInfoStorage billingInfoStorage, BillingInfoSender billingInfoSender, BillingInfoManager billingInfoManager, UpdatePolicy updatePolicy) {
        this.a = context;
        this.b = executor;
        this.c = executor2;
        this.d = billingInfoSender;
        this.e = billingInfoManager;
        this.f = updatePolicy;
    }
}
