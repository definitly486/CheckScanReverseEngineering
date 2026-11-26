package yads;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import defpackage.j59;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;
import yads.xn2;

/* JADX INFO: loaded from: classes6.dex */
public final class xn2 {
    public final gh5 a;
    public final qi5 b;
    public final zn0 c;
    public final kv3 d;
    public final fd e;
    public final yn2 f;
    public final ed g;
    public final vn2 h;

    public xn2(Context context, e4 e4Var) {
        gh5 gh5Var = new gh5();
        qi5 qi5Var = new qi5();
        zn0 zn0Var = new zn0();
        kv3 kv3VarA = jv3.a(context);
        fd fdVar = new fd();
        yn2 yn2Var = new yn2();
        this.a = gh5Var;
        this.b = qi5Var;
        this.c = zn0Var;
        this.d = kv3VarA;
        this.e = fdVar;
        this.f = yn2Var;
        c40 c40Var = e4Var.b;
        this.g = c40Var.b;
        this.h = c40Var.a;
    }

    public final void a(Context context, defpackage.bm3 bm3Var) {
        String strValueOf;
        String str;
        Location locationA;
        bm3Var.invoke(CommonUrlParts.APP_ID, context.getPackageName());
        boolean z = false;
        try {
            strValueOf = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception unused) {
            strValueOf = null;
        }
        bm3Var.invoke("app_version_code", strValueOf);
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused2) {
            str = null;
        }
        bm3Var.invoke(CommonUrlParts.APP_VERSION, str);
        bm3Var.invoke("vast-integration-type", "inapp_sdk");
        bm3Var.invoke("sdk_version", this.a.a("%d.%d%d"));
        bm3Var.invoke("sdk_version_name", this.a.a("%d.%d.%d"));
        bm3Var.invoke("sdk_vendor", "yandex");
        bm3Var.invoke(this.f.b(), this.c.a(context));
        this.c.b.getClass();
        bm3Var.invoke(CommonUrlParts.LOCALE, dv3.a(context.getResources().getConfiguration().locale));
        bm3Var.invoke("content_language", this.c.b.a(context));
        List listB = this.c.b.b(context);
        bm3Var.invoke("device_languages", listB != null ? defpackage.qn1.a0(listB, StringUtils.COMMA, null, null, 0, null, 62) : null);
        String strC = this.f.c();
        this.c.getClass();
        bm3Var.invoke(strC, zn0.a());
        String strD = this.f.d();
        this.c.getClass();
        bm3Var.invoke(strD, Build.MODEL);
        String strE = this.f.e();
        this.c.getClass();
        bm3Var.invoke(strE, "android");
        String strF = this.f.f();
        this.c.getClass();
        bm3Var.invoke(strF, Build.VERSION.RELEASE);
        if (!this.b.b(context) && (locationA = this.d.a()) != null) {
            bm3Var.invoke("location_timestamp", String.valueOf(locationA.getTime()));
            bm3Var.invoke("lat", String.valueOf(locationA.getLatitude()));
            bm3Var.invoke("lon", String.valueOf(locationA.getLongitude()));
            bm3Var.invoke("precision", String.valueOf(Math.round(locationA.getAccuracy())));
        }
        if (!this.b.b(context)) {
            bm3Var.invoke(this.f.a(), this.h.a);
            bm3Var.invoke(CommonUrlParts.APP_SET_ID, this.g.d);
            id idVar = this.g.a;
            if (idVar != null) {
                boolean z2 = idVar.b;
                String str2 = idVar.a;
                this.e.getClass();
                boolean z3 = (str2 == null || str2.length() == 0 || "00000000-0000-0000-0000-000000000000".equals(str2)) ? false : true;
                if (!z2 && z3) {
                    bm3Var.invoke("google_aid", str2);
                }
            }
            id idVar2 = this.g.b;
            if (idVar2 != null) {
                boolean z4 = idVar2.b;
                String str3 = idVar2.a;
                this.e.getClass();
                if (str3 != null && str3.length() != 0 && !"00000000-0000-0000-0000-000000000000".equals(str3)) {
                    z = true;
                }
                if (!z4 && z) {
                    bm3Var.invoke("huawei_oaid", str3);
                }
            }
        }
        bm3Var.invoke(CommonUrlParts.SCREEN_WIDTH, String.valueOf(eh6.d(context)));
        bm3Var.invoke(CommonUrlParts.SCREEN_HEIGHT, String.valueOf(eh6.b(context)));
        bm3Var.invoke(CommonUrlParts.SCALE_FACTOR, String.valueOf(context.getResources().getDisplayMetrics().density));
        bm3Var.invoke(CommonUrlParts.SCREEN_DPI, String.valueOf(eh6.a(context)));
    }

    public static final j59 a(m35 m35Var, String str, String str2) {
        m35Var.a(str, str2);
        return j59.a;
    }

    public final void a(Context context, final m35 m35Var) {
        a(context, new defpackage.bm3() { // from class: qha
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return xn2.a(m35Var, (String) obj, (String) obj2);
            }
        });
    }
}
