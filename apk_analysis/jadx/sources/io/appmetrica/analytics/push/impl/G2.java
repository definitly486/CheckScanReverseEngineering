package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.ts6;
import io.appmetrica.analytics.push.coreutils.internal.model.BasePushMessage;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import java.io.Closeable;
import java.io.InputStream;
import java.util.List;
import okhttp3.OkHttpClient;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class G2 {
    /* JADX WARN: Code duplicated, block: B:6:0x0011  */
    public static Integer a(Context context, String str) {
        Integer numValueOf;
        if (str != null) {
            try {
                numValueOf = Integer.valueOf(Integer.parseInt(str));
                if (a(context, numValueOf) == null) {
                    numValueOf = null;
                }
            } catch (NumberFormatException unused) {
                int identifierForType = CoreUtils.getIdentifierForType(context, str, "drawable");
                numValueOf = identifierForType == 0 ? Integer.valueOf(CoreUtils.getIdentifierForType(context, str, "mipmap")) : Integer.valueOf(identifierForType);
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf == null || numValueOf.intValue() == 0) {
            return null;
        }
        return numValueOf;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0017  */
    public static Integer b(Context context, String str) {
        Integer numValueOf;
        InputStream inputStreamOpenRawResource;
        if (str != null) {
            try {
                int i = Integer.parseInt(str);
                numValueOf = Integer.valueOf(i);
                try {
                    inputStreamOpenRawResource = context.getResources().openRawResource(i);
                } catch (Resources.NotFoundException unused) {
                    inputStreamOpenRawResource = null;
                }
                if (inputStreamOpenRawResource == null) {
                    numValueOf = null;
                }
            } catch (NumberFormatException unused2) {
                numValueOf = Integer.valueOf(CoreUtils.getIdentifierForType(context, str, "raw"));
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf == null || numValueOf.intValue() == 0) {
            return null;
        }
        return numValueOf;
    }

    public static Object a(String str) {
        return str == null ? "unknown" : str;
    }

    public static Drawable a(Context context, Integer num) {
        try {
            return context.getResources().getDrawable(num.intValue(), null);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static boolean a() {
        try {
            List<ts6> list = OkHttpClient.D;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static String a(Bundle bundle) {
        try {
            JSONObject root = new BasePushMessage(bundle).getRoot();
            if (root == null || !root.has(CmcdData.OBJECT_TYPE_AUDIO_ONLY)) {
                return null;
            }
            return root.getString(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        } catch (Throwable unused) {
            return null;
        }
    }
}
