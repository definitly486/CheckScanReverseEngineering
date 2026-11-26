package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.cn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0852cn extends AbstractC0981hn {
    @Override // io.appmetrica.analytics.impl.AbstractC0981hn
    public final ProtobufStateStorage a(Context context, IBinaryDataHelper iBinaryDataHelper) {
        byte[] bArrA;
        byte[] bArrA2;
        M3 m3 = new M3();
        try {
            bArrA = Xa.a(context.getPackageName());
        } catch (Throwable unused) {
            bArrA = new byte[16];
        }
        try {
            bArrA2 = Xa.a(new StringBuilder(context.getPackageName()).reverse().toString());
        } catch (Throwable unused2) {
            bArrA2 = new byte[16];
        }
        return new C0793ag("clids_info", iBinaryDataHelper, new L8(m3, new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, bArrA, bArrA2)), new H3());
    }

    @Override // io.appmetrica.analytics.impl.AbstractC0981hn
    public final IBinaryDataHelper b(Context context) {
        IBinaryDataHelper iBinaryDataHelperA;
        Ok okB = Fa.I.B();
        synchronized (okB) {
            iBinaryDataHelperA = okB.a(context);
        }
        return iBinaryDataHelperA;
    }

    @Override // io.appmetrica.analytics.impl.AbstractC0981hn
    public final IBinaryDataHelper a(Context context) {
        return Fa.I.B().b(context);
    }
}
