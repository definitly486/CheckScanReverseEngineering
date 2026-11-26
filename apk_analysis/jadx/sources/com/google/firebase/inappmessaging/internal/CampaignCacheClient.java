package com.google.firebase.inappmessaging.internal;

import android.app.Application;
import androidx.compose.material3.internal.CalendarModelKt;
import com.google.firebase.inappmessaging.internal.injection.modules.ProtoStorageClientModule;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.CampaignCache;
import com.google.firebase.inappmessaging.internal.time.Clock;
import defpackage.a75;
import defpackage.f73;
import defpackage.g21;
import defpackage.h6;
import defpackage.h75;
import defpackage.m75;
import defpackage.qp1;
import defpackage.qx1;
import defpackage.rm3;
import defpackage.w75;
import defpackage.z75;
import java.io.File;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public class CampaignCacheClient {
    private final Application application;
    private f73 cachedResponse;
    private final Clock clock;
    private final ProtoStorageClient storageClient;

    public CampaignCacheClient(@CampaignCache ProtoStorageClient protoStorageClient, Application application, Clock clock) {
        this.storageClient = protoStorageClient;
        this.application = application;
        this.clock = clock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isResponseValid(f73 f73Var) {
        long jC = f73Var.c();
        long jNow = this.clock.now();
        File file = new File(this.application.getApplicationContext().getFilesDir(), ProtoStorageClientModule.CAMPAIGN_CACHE_FILE);
        if (jC != 0) {
            return jNow < jC;
        }
        return !file.exists() || jNow < file.lastModified() + CalendarModelKt.MillisecondsIn24Hours;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ f73 lambda$get$1() {
        return this.cachedResponse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$get$2(f73 f73Var) {
        this.cachedResponse = f73Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$get$3(Throwable th) {
        this.cachedResponse = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$put$0(f73 f73Var) {
        this.cachedResponse = f73Var;
    }

    public a75<f73> get() {
        m75 m75Var = new m75(new Callable() { // from class: e21
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.b.lambda$get$1();
            }
        });
        a75 a75Var = this.storageClient.read(f73.parser());
        qx1 qx1Var = new qx1() { // from class: f21
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                this.b.lambda$get$2((f73) obj);
            }
        };
        a75Var.getClass();
        rm3.e eVar = rm3.d;
        return new w75(new h75(new z75(m75Var, new w75(a75Var, qx1Var, eVar)), new g21(this)), eVar, new qx1() { // from class: h21
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                this.b.lambda$get$3((Throwable) obj);
            }
        });
    }

    public qp1 put(final f73 f73Var) {
        return this.storageClient.write(f73Var).e(new h6() { // from class: d21
            @Override // defpackage.h6
            public final void run() {
                this.a.lambda$put$0(f73Var);
            }
        });
    }
}
