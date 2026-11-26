package defpackage;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.firebase.perf.FirebasePerformance;
import com.google.gson.JsonParseException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import eightbitlab.com.blurview.BlurView;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public /* synthetic */ class zd3 implements bx8, rxa {
    public static final si1 b = new si1(2);
    public static final yd3 c = new yd3();
    public static final /* synthetic */ zd3 d = new zd3();

    public static final void b(int i) {
        if (i >= 1) {
            return;
        }
        c9.f(jh.b(i, "Expected positive parallelism level, but got "));
    }

    public static final hd3 c(hd3 hd3Var) {
        return hd3Var instanceof y68 ? hd3Var : d(hd3Var, b, c);
    }

    public static final np2 d(hd3 hd3Var, nl3 nl3Var, bm3 bm3Var) {
        if (hd3Var instanceof np2) {
            np2 np2Var = (np2) hd3Var;
            if (np2Var.c == nl3Var && np2Var.d == bm3Var) {
                return np2Var;
            }
        }
        return new np2(hd3Var, nl3Var, bm3Var);
    }

    public static final Drawable e(TypedArray typedArray, int i) {
        Object aVar;
        typedArray.getClass();
        try {
            aVar = typedArray.getDrawable(i);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (Drawable) aVar;
    }

    public static final boolean f(String str) {
        str.getClass();
        return (str.equals("GET") || str.equals(FirebasePerformance.HttpMethod.HEAD)) ? false : true;
    }

    public static Object g(bm3 bm3Var) {
        return bv0.a(gx2.b, bm3Var);
    }

    public static final void h(BlurView blurView, ViewGroup viewGroup) {
        blurView.getClass();
        blurView.b(viewGroup);
        blurView.b.a();
        blurView.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        blurView.setClipToOutline(true);
    }

    @Override // defpackage.bx8
    public Number a(JsonReader jsonReader) throws IOException {
        String strNextString = jsonReader.nextString();
        try {
            try {
                try {
                    strNextString.getClass();
                    return Integer.valueOf(Integer.parseInt(strNextString));
                } catch (NumberFormatException e) {
                    StringBuilder sbD = n7.d("Cannot parse ", strNextString, "; at path ");
                    sbD.append(jsonReader.getPreviousPath());
                    throw new JsonParseException(sbD.toString(), e);
                }
            } catch (NumberFormatException unused) {
                strNextString.getClass();
                return Long.valueOf(Long.parseLong(strNextString));
            }
        } catch (NumberFormatException unused2) {
            strNextString.getClass();
            double d2 = Double.parseDouble(strNextString);
            if (Double.isInfinite(d2) || Double.isNaN(d2)) {
                if (!jsonReader.isLenient()) {
                    throw new MalformedJsonException("JSON forbids NaN and infinities: " + d2 + "; at path " + jsonReader.getPreviousPath());
                }
            }
            return Double.valueOf(d2);
        }
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzags.zzE());
    }
}
