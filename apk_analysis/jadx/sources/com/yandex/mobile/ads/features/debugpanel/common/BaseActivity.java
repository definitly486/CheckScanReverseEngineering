package com.yandex.mobile.ads.features.debugpanel.common;

import android.app.Activity;
import android.os.Bundle;
import defpackage.eh1;
import defpackage.rm9;
import defpackage.y22;
import defpackage.z22;
import yads.ap;
import yads.gf0;
import yads.i90;
import yads.in3;
import yads.kg6;
import yads.xn;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseActivity<T extends in3> extends Activity {
    private final y22 a = xn.a(rm9.b(), new i90());
    private in3 c;

    public BaseActivity() {
        getLastNonConfigurationInstance();
    }

    public final y22 a() {
        return this.a;
    }

    public final in3 b() {
        in3 in3Var = this.c;
        if (in3Var != null) {
            return in3Var;
        }
        in3 in3VarS = gf0.s((gf0) ((eh1) c()).b);
        this.c = in3VarS;
        return in3VarS;
    }

    public abstract kg6 c();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Object lastNonConfigurationInstance = getLastNonConfigurationInstance();
        ap apVar = lastNonConfigurationInstance instanceof ap ? (ap) lastNonConfigurationInstance : null;
        if (apVar != null) {
            in3 in3Var = apVar.a;
            this.c = in3Var != null ? in3Var : null;
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        in3 in3Var;
        super.onDestroy();
        z22.b(this.a, null);
        if (isChangingConfigurations() || (in3Var = this.c) == null) {
            return;
        }
        z22.b(in3Var.a, null);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        return new ap(b());
    }
}
