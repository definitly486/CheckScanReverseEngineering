package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ih, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1000ih extends Ug {
    public final Ge b;
    public final ProtobufStateStorage c;
    public final N2 d;
    public final C1218r2 e;
    public final G2 f;

    public C1000ih(C0989i5 c0989i5, Ge ge) {
        this(c0989i5, ge, ((AbstractC0981hn) C0929fn.a(C0986i2.class)).create(c0989i5.getContext()), new N2(c0989i5.getContext()), new C1218r2(), new G2(c0989i5.getContext()));
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        C0989i5 c0989i5 = this.a;
        c0989i5.b.toString();
        if (!c0989i5.t.c() || !c0989i5.x()) {
            return false;
        }
        C0986i2 c0986i2 = (C0986i2) this.c.read();
        List list = c0986i2.a;
        M2 m2 = c0986i2.b;
        N2 n2 = this.d;
        n2.getClass();
        C0986i2 c0986i3 = null;
        M2 m2A = AndroidUtils.isApiAchieved(28) ? J2.a(n2.a, n2.b) : null;
        List list2 = c0986i2.c;
        List list3 = (List) SystemServiceUtils.accessSystemServiceSafelyOrDefault(this.f.a, "getting available providers", "location manager", Collections.EMPTY_LIST, new F2());
        Ge ge = this.b;
        Context context = this.a.a;
        ge.getClass();
        ArrayList arrayListA = new C0848cj(context, new SafePackageManager()).a();
        if (CollectionUtils.areCollectionsEqual(arrayListA, list)) {
            arrayListA = null;
        }
        if (arrayListA != null || !xo.a(m2, m2A) || !CollectionUtils.areCollectionsEqual(list2, list3)) {
            if (arrayListA != null) {
                list = arrayListA;
            }
            c0986i3 = new C0986i2(list, m2A, list3);
        }
        if (c0986i3 != null) {
            C1353w9 c1353w9 = c0989i5.n;
            C0783a6 c0783a6A = C0783a6.a(c0783a6, c0986i3.a, c0986i3.b, this.e, c0986i3.c);
            c1353w9.a(c0783a6A, C1030jl.a(c1353w9.c.b(c0783a6A), c0783a6A.i));
            long jCurrentTimeSeconds = c1353w9.i.currentTimeSeconds();
            c1353w9.k = jCurrentTimeSeconds;
            c1353w9.a.a(jCurrentTimeSeconds);
            this.c.save(c0986i3);
            return false;
        }
        if (!c0989i5.A()) {
            return false;
        }
        C1353w9 c1353w10 = c0989i5.n;
        C0783a6 c0783a6A2 = C0783a6.a(c0783a6, c0986i2.a, c0986i2.b, this.e, c0986i2.c);
        c1353w10.a(c0783a6A2, C1030jl.a(c1353w10.c.b(c0783a6A2), c0783a6A2.i));
        long jCurrentTimeSeconds2 = c1353w10.i.currentTimeSeconds();
        c1353w10.k = jCurrentTimeSeconds2;
        c1353w10.a.a(jCurrentTimeSeconds2);
        return false;
    }

    public C1000ih(C0989i5 c0989i5, Ge ge, ProtobufStateStorage protobufStateStorage, N2 n2, C1218r2 c1218r2, G2 g2) {
        super(c0989i5);
        this.b = ge;
        this.c = protobufStateStorage;
        this.d = n2;
        this.e = c1218r2;
        this.f = g2;
    }
}
