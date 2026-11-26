package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.tapjoy.TJPlacement;

/* JADX INFO: loaded from: classes4.dex */
public final class sk8 {
    public final Context a;
    public final rk8 b;

    /* JADX INFO: loaded from: classes.dex */
    public static final class a implements nu5 {
        public final TJPlacement a;

        public a(TJPlacement tJPlacement) {
            this.a = tJPlacement;
        }

        @Override // defpackage.nu5
        public final void a() {
            this.a.showContent();
        }

        @Override // defpackage.nu5
        public final boolean b() {
            return this.a.isContentAvailable();
        }
    }

    public sk8(Context context) {
        this.a = context;
        rk8 rk8Var = new rk8();
        ((Application) context).registerActivityLifecycleCallbacks(new qk8(rk8Var));
        this.b = rk8Var;
    }

    public final void a() {
        Activity activity = this.b.a;
        if (activity == null) {
            TJPlacement.dismissContent();
        } else {
            activity.finish();
        }
    }
}
