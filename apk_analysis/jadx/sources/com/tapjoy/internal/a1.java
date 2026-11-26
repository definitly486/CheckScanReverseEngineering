package com.tapjoy.internal;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import com.tapjoy.TJTaskHandler;
import com.tapjoy.TapjoyLog;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class a1 implements OnSuccessListener {
    public final /* synthetic */ TJTaskHandler a;

    public a1(TJTaskHandler tJTaskHandler) {
        this.a = tJTaskHandler;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
        int scope = appSetIdInfo.getScope();
        String id = appSetIdInfo.getId();
        Locale locale = Locale.ENGLISH;
        TapjoyLog.d("Scope: " + scope + ". AppSetId: " + id);
        this.a.onComplete(id);
    }
}
