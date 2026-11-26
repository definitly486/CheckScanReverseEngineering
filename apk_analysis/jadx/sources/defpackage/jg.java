package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.DeleteRangeGesture;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.tapjoy.TapjoyLog;
import java.util.List;
import yads.cd1;
import yads.f06;
import yads.iz3;
import yads.jv;
import yads.jz3;
import yads.kv;
import yads.l66;
import yads.lh1;
import yads.r03;
import yads.st3;
import yads.vy3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jg implements DoubleFunction, VisualTransformation, l66, jv, iz3, st3, OnApplyWindowInsetsListener {
    public static /* bridge */ /* synthetic */ DeleteRangeGesture c(Object obj) {
        return (DeleteRangeGesture) obj;
    }

    public static void d(ComposeUiNode.Companion companion, Composer composer, MeasurePolicy measurePolicy, Composer composer2, CompositionLocalMap compositionLocalMap) {
        Updater.m5363setimpl(composer, measurePolicy, companion.getSetMeasurePolicy());
        Updater.m5363setimpl(composer2, compositionLocalMap, companion.getSetResolvedCompositionLocals());
    }

    public static /* synthetic */ void e(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static void f(String str, String str2) {
        TapjoyLog.d(str + str2);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return cd1.c(((Long) obj).longValue());
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public TransformedText filter(AnnotatedString annotatedString) {
        return VisualTransformation.Companion.None$lambda$0(annotatedString);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.DoubleIdentity$lambda$0(d);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return r03.b(view, windowInsetsCompat);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return f06.a(bundle);
    }

    @Override // yads.iz3
    public int a(Object obj) {
        return jz3.b((vy3) obj);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return lh1.a(list);
    }
}
