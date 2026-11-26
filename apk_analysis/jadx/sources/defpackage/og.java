package defpackage;

import android.os.Bundle;
import android.view.inputmethod.RemoveSpaceGesture;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.savedstate.SavedStateReader;
import io.appmetrica.analytics.impl.Fo;
import io.appmetrica.analytics.impl.Io;
import java.util.List;
import org.json.JSONObject;
import yads.lp1;
import yads.st3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class og implements DoubleFunction, Io, st3 {
    public static Bundle d(Bundle bundle, String str, Bundle bundle2) {
        bundle.getClass();
        str.getClass();
        return SavedStateReader.m9370constructorimpl(bundle2);
    }

    public static /* synthetic */ void e(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* bridge */ /* synthetic */ boolean f(Object obj) {
        return obj instanceof RemoveSpaceGesture;
    }

    @Override // io.appmetrica.analytics.impl.Io
    public JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        return Fo.a(jSONObject, jSONObject2);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return ColorSpaces.ExtendedSrgb$lambda$0(d);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return lp1.a(list);
    }
}
