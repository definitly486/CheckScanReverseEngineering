package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.tapjoy.TJAdUnitConstants;
import defpackage.d39;
import defpackage.hz;
import defpackage.kg6;
import defpackage.q89;
import defpackage.r89;
import defpackage.s29;
import defpackage.vb;

/* JADX INFO: loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter(TJAdUnitConstants.String.EXTRAS);
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        d39.b(context);
        hz.a aVarA = s29.a();
        aVarA.b(queryParameter);
        aVarA.c = kg6.b(iIntValue);
        if (queryParameter2 != null) {
            aVarA.b = Base64.decode(queryParameter2, 0);
        }
        r89 r89Var = d39.a().d;
        r89Var.e.execute(new q89(r89Var, aVarA.a(), i, new vb()));
    }
}
