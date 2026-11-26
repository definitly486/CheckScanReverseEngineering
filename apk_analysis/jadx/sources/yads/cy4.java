package yads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.media3.common.C;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class cy4 {
    public static Intent a(Context context, by4 by4Var) {
        String str = by4Var.b;
        String str2 = by4Var.a;
        String str3 = by4Var.i;
        Map map = by4Var.c;
        Integer num = by4Var.d;
        Intent intent = new Intent("android.intent.action.VIEW");
        if (str3 != null) {
            intent.setClassName(str2, str3);
        } else {
            intent.setData(Uri.parse(str));
            intent.setPackage(str2);
        }
        if (num == null || !(context instanceof Activity)) {
            intent.addFlags((num != null ? num.intValue() : 0) | C.ENCODING_PCM_24BIT_BIG_ENDIAN);
        } else {
            intent.addFlags(num.intValue());
        }
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str4 = (String) entry.getKey();
                Object value = entry.getValue();
                if (value instanceof Boolean) {
                    intent.putExtra(str4, ((Boolean) value).booleanValue());
                } else if (value instanceof Integer) {
                    intent.putExtra(str4, ((Number) value).intValue());
                } else if (value instanceof String) {
                    intent.putExtra(str4, (String) value);
                } else if (value instanceof dt2) {
                    try {
                        intent.putExtra(str4, ((dt2) value).getValue());
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return intent;
    }
}
