package yads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class m1 implements u1, h95 {
    public final n1 a;
    public WeakReference b;
    public String c;

    public m1(n1 n1Var) {
        this.a = n1Var;
    }

    public final void a(Activity activity, Bundle bundle) {
        String string;
        Objects.toString(activity);
        if (bundle == null || (string = bundle.getString("monetization_ads_activity_id")) == null || !string.equals(this.c)) {
            return;
        }
        this.a.b();
    }

    @Override // yads.u1
    public final void b(Activity activity) {
        Objects.toString(activity);
        fe5 fe5VarA = yg5.a().a(activity);
        boolean z = false;
        boolean z2 = fe5VarA != null && fe5VarA.M0();
        Intent intent = activity.getIntent();
        if (intent != null && intent.getBooleanExtra("monetization_ads_activity_click", false)) {
            z = true;
        }
        WeakReference weakReference = this.b;
        if ((weakReference == null || !activity.equals((Activity) weakReference.get()) || z2) && (!z2 || z)) {
            return;
        }
        this.a.b();
    }

    @Override // yads.u1
    public final void a(Activity activity) {
        Objects.toString(activity);
        if (this.b == null) {
            this.b = new WeakReference(activity);
        }
    }

    public final void b(Activity activity, Bundle bundle) {
        WeakReference weakReference;
        Objects.toString(activity);
        if (bundle == null || (weakReference = this.b) == null || !defpackage.aa4.e(activity, (Activity) weakReference.get())) {
            return;
        }
        String string = UUID.randomUUID().toString();
        this.c = string;
        bundle.putString("monetization_ads_activity_id", string);
    }
}
