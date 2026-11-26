package yads;

import android.content.Context;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.monetization.ads.mediation.base.MediatedBidderTokenLoader;
import com.tapjoy.TJAdUnitConstants;
import defpackage.r57;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g64 {
    public final e34 a;
    public final z54 b;
    public final y54 c;
    public final p24 d;

    public g64(l34 l34Var) {
        e34 e34Var = new e34(l34Var);
        z54 z54Var = new z54();
        y54 y54Var = new y54(l34Var);
        p24 p24Var = new p24();
        this.a = e34Var;
        this.b = z54Var;
        this.c = y54Var;
        this.d = p24Var;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public final Object a(Context context, sl5 sl5Var, x54 x54Var, o24 o24Var, MediatedBidderTokenLoader mediatedBidderTokenLoader, defpackage.f02 f02Var) throws Throwable {
        e64 e64Var;
        long jElapsedRealtime;
        o24 o24Var2;
        Context context2;
        x54 x54Var2;
        String str;
        if (f02Var instanceof e64) {
            e64Var = (e64) f02Var;
            int i = e64Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                e64Var.h = i - Integer.MIN_VALUE;
            } else {
                e64Var = new e64(this, f02Var);
            }
        } else {
            e64Var = new e64(this, f02Var);
        }
        e64 e64Var2 = e64Var;
        Object objD = e64Var2.f;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = e64Var2.h;
        if (i2 == 0) {
            r57.b(objD);
            jElapsedRealtime = SystemClock.elapsedRealtime();
            HashMap map = new HashMap(x54Var.c);
            Map map2 = x54Var.h;
            if (map2 != null && (str = (String) map2.get(CommonUrlParts.APP_ID)) != null) {
            }
            if (sl5Var != null) {
                map.put(TJAdUnitConstants.String.WIDTH, String.valueOf(sl5Var.getWidth()));
                map.put(TJAdUnitConstants.String.HEIGHT, String.valueOf(sl5Var.getHeight()));
            }
            try {
                defpackage.oi2 oi2Var = defpackage.qo2.a;
                defpackage.sh2 sh2Var = defpackage.sh2.c;
                f64 f64Var = new f64(this, context, map, mediatedBidderTokenLoader, null);
                e64Var2.b = context;
                e64Var2.c = x54Var;
                o24Var2 = o24Var;
                try {
                    e64Var2.d = o24Var2;
                    e64Var2.e = jElapsedRealtime;
                    e64Var2.h = 1;
                    objD = defpackage.av0.d(sh2Var, f64Var, e64Var2);
                    if (objD == a32Var) {
                        return a32Var;
                    }
                    context2 = context;
                    x54Var2 = x54Var;
                    return a(context2, x54Var2, o24Var2, (c64) objD);
                } catch (CancellationException e) {
                    e = e;
                    context2 = context;
                    x54Var2 = x54Var;
                }
            } catch (CancellationException e2) {
                e = e2;
                o24Var2 = o24Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            long j = e64Var2.e;
            o24 o24Var3 = e64Var2.d;
            x54Var2 = e64Var2.c;
            Context context3 = e64Var2.b;
            try {
                r57.b(objD);
                jElapsedRealtime = j;
                o24Var2 = o24Var3;
                context2 = context3;
                try {
                    return a(context2, x54Var2, o24Var2, (c64) objD);
                } catch (CancellationException e3) {
                    e = e3;
                }
            } catch (CancellationException e4) {
                e = e4;
                jElapsedRealtime = j;
                o24Var2 = o24Var3;
                context2 = context3;
            }
        }
        x54 x54Var3 = x54Var2;
        a(context2, x54Var3, o24Var2, a(x54Var2, e), new Long(SystemClock.elapsedRealtime() - jElapsedRealtime));
        throw e;
    }

    public static String a(x54 x54Var, CancellationException cancellationException) {
        if (cancellationException instanceof TimeoutCancellationException) {
            return defpackage.ni0.c(x54Var.c(), " didn't provide bidder token after timeout");
        }
        return defpackage.ni0.c(x54Var.c(), " bidder token loading was cancelled");
    }

    public final JSONObject a(Context context, x54 x54Var, o24 o24Var, c64 c64Var) {
        if (c64Var instanceof a64) {
            a(context, x54Var, o24Var, ((a64) c64Var).a(), null);
            return null;
        }
        if (c64Var instanceof b64) {
            b64 b64Var = (b64) c64Var;
            if (b64Var.b().length() == 0) {
                a(context, x54Var, o24Var, defpackage.ni0.c(x54Var.c(), " provided empty token"), null);
                return null;
            }
            z54 z54Var = this.b;
            String strB = b64Var.b();
            b64Var.a();
            z54Var.getClass();
            JSONObject jSONObjectA = z54.a(x54Var, strB, null);
            if (jSONObjectA == null) {
                a(context, x54Var, o24Var, "Can't create bidding data json object for network.", null);
                return null;
            }
            y54 y54Var = this.c;
            y54Var.getClass();
            y54Var.a(context, x54Var, o24Var, defpackage.n05.f(new defpackage.b36(NotificationCompat.CATEGORY_STATUS, FirebaseAnalytics.Param.SUCCESS)));
            return jSONObjectA;
        }
        defpackage.me0.e();
        return null;
    }

    public final void a(Context context, x54 x54Var, o24 o24Var, String str, Long l) {
        y54 y54Var = this.c;
        y54Var.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("failure_reason", str);
        linkedHashMap.put(NotificationCompat.CATEGORY_STATUS, "error");
        if (l != null) {
            linkedHashMap.put("response_time", l);
        }
        y54Var.a(context, x54Var, o24Var, linkedHashMap);
    }
}
