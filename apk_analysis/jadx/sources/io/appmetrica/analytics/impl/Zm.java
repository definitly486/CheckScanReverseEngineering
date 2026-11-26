package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;

/* JADX INFO: loaded from: classes5.dex */
public final class Zm extends AbstractC0981hn {
    @Override // io.appmetrica.analytics.impl.AbstractC0981hn
    public final ProtobufStateStorage a(Context context, IBinaryDataHelper iBinaryDataHelper) {
        byte[] bArrA;
        byte[] bArrA2;
        Nm nm = new Nm();
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
        return new C0793ag("startup_state", iBinaryDataHelper, new L8(nm, new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, bArrA, bArrA2)), new C1366wm());
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
