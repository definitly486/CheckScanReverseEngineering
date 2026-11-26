package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import defpackage.qz3;
import defpackage.vz3;

/* JADX INFO: loaded from: classes.dex */
public class PostMessageService extends Service {
    private vz3.a mBinder = new vz3.a() { // from class: androidx.browser.customtabs.PostMessageService.1
        @Override // defpackage.vz3
        public int getInterfaceVersion() {
            return 1;
        }

        @Override // defpackage.vz3
        public void onMessageChannelReady(qz3 qz3Var, Bundle bundle) {
            qz3Var.onMessageChannelReady(bundle);
        }

        @Override // defpackage.vz3
        public void onPostMessage(qz3 qz3Var, String str, Bundle bundle) {
            qz3Var.onPostMessage(str, bundle);
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
