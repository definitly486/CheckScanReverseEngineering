package defpackage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.OnTokenCanceledListener;

/* JADX INFO: loaded from: classes4.dex */
public final class boa implements OnSuccessListener {
    public final /* synthetic */ OnTokenCanceledListener b;

    public boa(iwa iwaVar, OnTokenCanceledListener onTokenCanceledListener) {
        this.b = onTokenCanceledListener;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* bridge */ /* synthetic */ void onSuccess(Object obj) {
        this.b.onCanceled();
    }
}
