package com.my.tracker.campaign;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.my.tracker.obfuscated.b3;
import com.my.tracker.obfuscated.m;
import com.my.tracker.obfuscated.t0;
import defpackage.ed0;
import defpackage.o21;

/* JADX INFO: loaded from: classes4.dex */
public final class CampaignService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        b3.a("CampaignService: onCreate");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        b3.a("CampaignService: onDestroy");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        ed0 ed0Var = new ed0(this, 1);
        if (intent != null) {
            String stringExtra = intent.getStringExtra("referrer");
            if (!TextUtils.isEmpty(stringExtra)) {
                m.a(new o21(this, stringExtra, ed0Var, 0));
                return super.onStartCommand(null, i, i2);
            }
        }
        m.a(ed0Var);
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        t0.a(str, this, runnable);
    }
}
