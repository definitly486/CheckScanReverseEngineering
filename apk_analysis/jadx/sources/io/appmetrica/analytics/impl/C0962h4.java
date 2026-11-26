package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.h4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0962h4 {
    public final Qm a;
    public final X b;

    public C0962h4(Qm qm, X x) {
        this.a = qm;
        this.b = x;
    }

    public final C0936g4 a(HashMap map) {
        C1341vm c1341vmE = this.a.e();
        AdvertisingIdsHolder identifiers = this.b.getIdentifiers();
        return new C0936g4(C0936g4.a(c1341vmE.d), C0936g4.a(c1341vmE.a), C0936g4.a(c1341vmE.b), C0936g4.a(c1341vmE.j), C0936g4.a(c1341vmE.i), C0936g4.a(AbstractC1305ub.a(Vm.a(c1341vmE.k))), C0936g4.a(AbstractC1305ub.a(map)), new IdentifiersResult(identifiers.getGoogle().mAdTrackingInfo == null ? null : identifiers.getGoogle().mAdTrackingInfo.advId, identifiers.getGoogle().mStatus, identifiers.getGoogle().mErrorExplanation), new IdentifiersResult(identifiers.getHuawei().mAdTrackingInfo == null ? null : identifiers.getHuawei().mAdTrackingInfo.advId, identifiers.getHuawei().mStatus, identifiers.getHuawei().mErrorExplanation), new IdentifiersResult(identifiers.getYandex().mAdTrackingInfo != null ? identifiers.getYandex().mAdTrackingInfo.advId : null, identifiers.getYandex().mStatus, identifiers.getYandex().mErrorExplanation), C0936g4.a(AbstractC1305ub.a(c1341vmE.h)), Wn.a(), c1341vmE.o + ((long) c1341vmE.z.a), C0936g4.a(c1341vmE.n.f), new Bundle());
    }
}
