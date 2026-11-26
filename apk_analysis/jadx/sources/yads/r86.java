package yads;

import android.content.Context;
import android.net.Uri;
import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import defpackage.nl3;
import defpackage.ta8;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Map;
import java.util.Random;
import yads.m35;
import yads.r86;

/* JADX INFO: loaded from: classes6.dex */
public final class r86 {
    public final x35 a;
    public final t10 b;
    public final qi5 c;

    public r86() {
        x35 x35Var = new x35();
        t10 t10Var = new t10(new u75());
        qi5 qi5Var = new qi5();
        this.a = x35Var;
        this.b = t10Var;
        this.c = qi5Var;
    }

    public static final m35 a(r86 r86Var, j86 j86Var, e4 e4Var, Context context, m35 m35Var) {
        m35Var.a("charset", "UTF-8");
        r86Var.a.getClass();
        m35Var.a("rnd", String.valueOf(new Random().nextInt(89999999) + DefaultEncoderProfilesProvider.DEFAULT_VIDEO_BITRATE_FHD));
        Map mapA = j86Var.a();
        if (mapA != null) {
            for (Map.Entry entry : mapA.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (!ta8.M(str)) {
                    m35Var.a(str, str2);
                }
            }
        }
        vn2 vn2Var = e4Var.b.a;
        r86Var.c.getClass();
        if (!qi5.a(context)) {
            m35Var.a(CommonUrlParts.UUID, vn2Var.a());
            m35Var.a("mauid", vn2Var.d);
        }
        r86Var.b.getClass();
        t10.a(context, m35Var);
        new xn2(context, e4Var).a(context, m35Var);
        return m35Var;
    }

    public final String a(final Context context, Uri uri, final e4 e4Var, final j86 j86Var) {
        return l35.a(uri, new nl3() { // from class: q7a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return r86.a(this.b, j86Var, e4Var, context, (m35) obj);
            }
        }).toString();
    }
}
