package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.kh;
import defpackage.kma;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zae extends zai {
    public final BaseImplementation.ApiMethodImpl a;

    public zae(int i, BaseImplementation.ApiMethodImpl apiMethodImpl) {
        super(i);
        this.a = (BaseImplementation.ApiMethodImpl) Preconditions.checkNotNull(apiMethodImpl, "Null methods are not runnable.");
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Status status) {
        try {
            this.a.setFailedResult(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        try {
            this.a.setFailedResult(new Status(10, kh.c(new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length()), simpleName, ": ", localizedMessage)));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zaaa zaaaVar, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        Map map = zaaaVar.a;
        BaseImplementation.ApiMethodImpl apiMethodImpl = this.a;
        map.put(apiMethodImpl, boolValueOf);
        apiMethodImpl.addStatusListener(new kma(zaaaVar, apiMethodImpl));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zag(zabk zabkVar) throws DeadObjectException {
        try {
            this.a.run(zabkVar.zaf());
        } catch (RuntimeException e) {
            zae(e);
        }
    }
}
