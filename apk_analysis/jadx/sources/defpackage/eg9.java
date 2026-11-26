package defpackage;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.zax;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzkk;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.List;
import java.util.regex.Matcher;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class eg9 implements zax, Continuation, rxa, RemoteCall {
    public static Boolean d;
    public final /* synthetic */ int b;
    public static final eg9 c = new eg9(0);
    public static final /* synthetic */ eg9 e = new eg9(8);
    public static final /* synthetic */ eg9 f = new eg9(9);
    public static final /* synthetic */ eg9 g = new eg9(10);
    public static final /* synthetic */ eg9 h = new eg9(11);

    public /* synthetic */ eg9(int i) {
        this.b = i;
    }

    public static void a(StringBuilder sb, Object obj, nl3 nl3Var) {
        if (nl3Var != null) {
            sb.append((CharSequence) nl3Var.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) obj.toString());
        }
    }

    public static final s15 b(Matcher matcher, int i, CharSequence charSequence) {
        if (matcher.find(i)) {
            return new s15(matcher, charSequence);
        }
        return null;
    }

    public static z54 c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new z54(jSONObject.getString("PACKAGE_NAME_KEY"), jSONObject.getString("REFERRER_ID_KEY"), Long.valueOf(jSONObject.getLong("RECEIVED_TIMESTAMP_KEY")), Long.valueOf(jSONObject.getLong("INSTALL_APP_TIMESTAMP_KEY")), Long.valueOf(jSONObject.optLong("VERSION_CODE_KEY")));
        } catch (JSONException e2) {
            ti0.f(e2);
            return null;
        }
    }

    public static long d(double d2) {
        o8.f(e(d2), "not a normal value");
        int exponent = Math.getExponent(d2);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static boolean e(double d2) {
        return Math.getExponent(d2) <= 1023;
    }

    public static int f(int i) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i) * (-862048943)), 15)) * 461845907);
    }

    public static int g(Object obj) {
        return f(obj == null ? 0 : obj.hashCode());
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        int i = zzkk.zza;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) {
        Intent intent = (Intent) ((Bundle) task.getResult()).getParcelable("notification_data");
        if (intent != null) {
            return new CloudMessage(intent);
        }
        return null;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 9:
                List list = zzfy.a;
                return Integer.valueOf((int) zzags.zzal());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzao());
        }
    }
}
