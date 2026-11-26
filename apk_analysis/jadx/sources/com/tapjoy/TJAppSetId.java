package com.tapjoy;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.tapjoy.internal.a1;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class TJAppSetId {
    public void fetch(Context context, TJTaskHandler<String> tJTaskHandler) {
        try {
            AppSet.getClient(context.getApplicationContext()).getAppSetIdInfo().addOnSuccessListener(new a1(tJTaskHandler));
        } catch (Exception e) {
            Locale locale = Locale.ENGLISH;
            TapjoyLog.d("AppSetId class not found: " + e.getMessage());
            tJTaskHandler.onComplete("");
        }
    }
}
