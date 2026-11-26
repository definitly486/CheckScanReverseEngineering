package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends AsyncTask {
    public final /* synthetic */ Context a;
    public final /* synthetic */ ProviderInstaller.ProviderInstallListener b;

    public a(Context context, ProviderInstaller.ProviderInstallListener providerInstallListener) {
        this.a = context;
        this.b = providerInstallListener;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        try {
            ProviderInstaller.installIfNeeded(this.a);
            return 0;
        } catch (GooglePlayServicesNotAvailableException e) {
            return Integer.valueOf(e.errorCode);
        } catch (GooglePlayServicesRepairableException e2) {
            return Integer.valueOf(e2.getConnectionStatusCode());
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(Object obj) {
        Integer num = (Integer) obj;
        int iIntValue = num.intValue();
        ProviderInstaller.ProviderInstallListener providerInstallListener = this.b;
        if (iIntValue == 0) {
            providerInstallListener.onProviderInstalled();
            return;
        }
        String str = ProviderInstaller.PROVIDER_NAME;
        providerInstallListener.onProviderInstallFailed(num.intValue(), ProviderInstaller.a.getErrorResolutionIntent(this.a, num.intValue(), "pi"));
    }
}
