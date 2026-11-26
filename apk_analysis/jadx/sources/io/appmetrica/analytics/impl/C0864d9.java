package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.d9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0864d9 {
    public final C0812b9 a;
    public final C0838c9 b;
    public final IBinaryDataHelper c;

    public C0864d9(Context context, C0808b5 c0808b5) {
        this(new C0838c9(), new C0812b9(), Fa.k().B().a(context, c0808b5));
    }

    public C0864d9(C0838c9 c0838c9, C0812b9 c0812b9, IBinaryDataHelper iBinaryDataHelper) {
        this.b = c0838c9;
        this.a = c0812b9;
        this.c = iBinaryDataHelper;
    }
}
