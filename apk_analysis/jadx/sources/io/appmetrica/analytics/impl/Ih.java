package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ICrashTransformer;

/* JADX INFO: loaded from: classes5.dex */
public final class Ih extends AbstractC1300u6 {
    public final AbstractC1007io d;

    public Ih(Context context, AbstractC1007io abstractC1007io, InterfaceC1274t6 interfaceC1274t6, ICrashTransformer iCrashTransformer) {
        this(abstractC1007io, interfaceC1274t6, iCrashTransformer, new Z9(context));
    }

    public Ih(AbstractC1007io abstractC1007io, InterfaceC1274t6 interfaceC1274t6, ICrashTransformer iCrashTransformer, Z9 z9) {
        super(interfaceC1274t6, iCrashTransformer, z9);
        this.d = abstractC1007io;
    }
}
