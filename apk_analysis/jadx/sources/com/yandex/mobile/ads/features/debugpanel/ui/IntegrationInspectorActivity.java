package com.yandex.mobile.ads.features.debugpanel.ui;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.yandex.mobile.ads.R$id;
import com.yandex.mobile.ads.R$layout;
import com.yandex.mobile.ads.features.debugpanel.common.BaseActivity;
import defpackage.av0;
import defpackage.cl4;
import defpackage.d84;
import defpackage.e84;
import defpackage.f84;
import defpackage.fh8;
import defpackage.g84;
import defpackage.y22;
import java.util.Iterator;
import yads.an3;
import yads.cy;
import yads.ge0;
import yads.gf0;
import yads.hh0;
import yads.in3;
import yads.jh0;
import yads.kg6;
import yads.sg0;
import yads.tf0;
import yads.vg0;
import yads.xm3;
import yads.yg0;
import yads.zm3;

/* JADX INFO: loaded from: classes6.dex */
public final class IntegrationInspectorActivity extends BaseActivity<in3> {
    private final cl4 d = new fh8(new d84(this, 0));
    private final cl4 e = new fh8(new e84(this, 0));
    private final cl4 f = new fh8(new f84(this, 0));

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(IntegrationInspectorActivity integrationInspectorActivity, View view) {
        integrationInspectorActivity.b().a(yg0.a);
    }

    public static final jh0 b(IntegrationInspectorActivity integrationInspectorActivity) {
        return (jh0) integrationInspectorActivity.e.getValue();
    }

    private final void d() {
        ((ImageButton) findViewById(R$id.toolbar_share_button)).setOnClickListener(new g84(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hh0 e(IntegrationInspectorActivity integrationInspectorActivity) {
        return new hh0(integrationInspectorActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jh0 f(IntegrationInspectorActivity integrationInspectorActivity) {
        an3 an3Var = new an3(integrationInspectorActivity.b());
        return new jh0(integrationInspectorActivity, an3Var, new LinearLayoutManager(integrationInspectorActivity, 1, false), new ge0(an3Var, (tf0) ((gf0) integrationInspectorActivity.d.getValue()).r.getValue()));
    }

    @Override // com.yandex.mobile.ads.features.debugpanel.common.BaseActivity
    public final kg6 c() {
        return ((gf0) this.d.getValue()).o();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        b().a(vg0.a);
    }

    @Override // com.yandex.mobile.ads.features.debugpanel.common.BaseActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_debug);
        d();
        b().a(sg0.a);
        y22 y22VarA = a();
        av0.c(y22VarA, null, null, new xm3(this, null), 3);
        av0.c(y22VarA, null, null, new zm3(this, null), 3);
    }

    @Override // com.yandex.mobile.ads.features.debugpanel.common.BaseActivity, android.app.Activity
    public final void onDestroy() {
        tf0 tf0Var = (tf0) ((gf0) this.d.getValue()).r.getValue();
        Iterator it = tf0Var.b.iterator();
        while (it.hasNext()) {
            ((cy) it.next()).cancel();
        }
        tf0Var.b.clear();
        super.onDestroy();
    }

    public static final hh0 a(IntegrationInspectorActivity integrationInspectorActivity) {
        return (hh0) integrationInspectorActivity.f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final gf0 d(IntegrationInspectorActivity integrationInspectorActivity) {
        return new gf0(integrationInspectorActivity.getApplicationContext());
    }
}
