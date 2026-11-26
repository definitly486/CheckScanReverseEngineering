package defpackage;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;

/* JADX INFO: loaded from: classes4.dex */
public final class rfa extends CustomTabsServiceConnection {
    public final /* synthetic */ qfa b;

    public rfa(qfa qfaVar) {
        this.b = qfaVar;
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        qfa qfaVar = this.b;
        qfaVar.d = customTabsClient.newSession(qfaVar.e);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
