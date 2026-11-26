package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.cm3;
import defpackage.mm3;
import defpackage.qm3;
import io.appmetrica.analytics.coreutils.internal.buffering.BatchProcessor;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class C1116n3 implements BatchProcessor, mm3 {
    public final /* synthetic */ C1142o3 a;

    public C1116n3(C1142o3 c1142o3) {
        this.a = c1142o3;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof BatchProcessor) && (obj instanceof mm3)) {
            return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final cm3 getFunctionDelegate() {
        return new qm3(1, this.a, C1142o3.class, "processTasks", "processTasks(Ljava/util/List;)V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.BatchProcessor
    public final void processBatch(List list) {
        C1142o3 c1142o3 = this.a;
        c1142o3.getClass();
        try {
            c1142o3.a.invoke(list);
        } catch (Exception unused) {
        }
    }
}
