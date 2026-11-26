package com.yandex.mobile.ads.common;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.activity.ComponentActivity;
import defpackage.j59;
import java.util.Iterator;
import java.util.Map;
import yads.bf5;
import yads.bh6;
import yads.d2;
import yads.e2;
import yads.f2;
import yads.h2;
import yads.h75;
import yads.i2;
import yads.id0;
import yads.iq4;
import yads.j2;
import yads.jd0;
import yads.kd0;
import yads.lq4;
import yads.n2;
import yads.w2;

/* JADX INFO: loaded from: classes6.dex */
public final class AdActivity extends ComponentActivity {
    private iq4 a;
    private d2 b;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        d2 d2Var = this.b;
        if (d2Var == null || d2Var.c.d()) {
            super.onBackPressed();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d2 d2Var = this.b;
        if (d2Var != null) {
            i2 i2Var = d2Var.d;
            int i = configuration.orientation;
            if (i != i2Var.c) {
                Iterator it = i2Var.a.iterator();
                if (it.hasNext()) {
                    it.next().getClass();
                    throw new ClassCastException();
                }
                i2Var.c = i;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0046  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Long lValueOf;
        jd0 jd0Var;
        h2 h2Var;
        super.onCreate(bundle);
        i2 i2Var = new i2(this);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        h2 h2Var2 = h2.c;
        if (h2Var2 == null) {
            synchronized (h2.b) {
                h2Var = h2.c;
                if (h2Var == null) {
                    h2Var = new h2();
                    h2.c = h2Var;
                }
            }
            h2Var2 = h2Var;
        }
        j59 j59Var = null;
        Object[] objArr = 0;
        try {
            Intent intent = getIntent();
            if (intent == null || !intent.hasExtra("data_identifier")) {
                lValueOf = null;
            } else {
                long longExtra = intent.getLongExtra("data_identifier", -1L);
                lValueOf = Long.valueOf(longExtra);
                if (longExtra == -1) {
                    lValueOf = null;
                }
            }
        } catch (Exception unused) {
        }
        f2 f2VarA = lValueOf != null ? h2Var2.a(lValueOf.longValue()) : null;
        if (w2.a == null && f2VarA != null) {
            bf5 bf5Var = f2VarA.d;
            Context applicationContext = getApplicationContext();
            if (applicationContext == null) {
                applicationContext = this;
            }
            w2.a = new kd0(applicationContext, bf5Var);
        }
        kd0 kd0Var = w2.a;
        if (kd0Var != null) {
            jd0Var = new jd0(kd0Var.a, new h75((Map) (objArr == true ? 1 : 0), 3));
        } else {
            jd0Var = null;
        }
        if (f2VarA != null) {
            if (jd0Var != null) {
                jd0Var.a(id0.ACTIVITY_OPENED);
            }
        } else if (jd0Var != null) {
            jd0Var.a(id0.ACTIVITY_RESTARTED);
        }
        n2 n2VarA = e2.a(this, relativeLayout, i2Var, f2VarA);
        d2 d2Var = n2VarA != null ? new d2(this, relativeLayout, n2VarA, i2Var) : null;
        this.b = d2Var;
        if (d2Var != null) {
            d2Var.c.f();
            d2Var.c.c();
            d2Var.b.setTag(bh6.a("root_layout"));
            d2Var.a.setContentView(d2Var.b);
            j59Var = j59.a;
        }
        if (j59Var == null) {
            finish();
        }
        iq4 iq4VarA = lq4.a(this, this.b);
        this.a = iq4VarA;
        if (iq4VarA != null) {
            iq4VarA.a();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        d2 d2Var = this.b;
        if (d2Var != null) {
            d2Var.c.onAdClosed();
            d2Var.c.g();
            d2Var.b.removeAllViews();
        }
        iq4 iq4Var = this.a;
        if (iq4Var != null) {
            iq4Var.destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        d2 d2Var = this.b;
        if (d2Var != null) {
            d2Var.c.b();
            Iterator it = d2Var.d.b.iterator();
            while (it.hasNext()) {
                ((j2) it.next()).b();
            }
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        d2 d2Var = this.b;
        if (d2Var != null) {
            d2Var.c.a();
            Iterator it = d2Var.d.b.iterator();
            while (it.hasNext()) {
                ((j2) it.next()).a();
            }
        }
    }
}
