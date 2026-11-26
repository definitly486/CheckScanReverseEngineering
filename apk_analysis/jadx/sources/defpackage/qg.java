package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.inputmethod.SelectGesture;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ValueElementSequence;
import androidx.compose.ui.unit.Dp;
import io.appmetrica.analytics.impl.Ik;
import io.appmetrica.analytics.impl.InterfaceC1342vn;
import java.util.List;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.lp4;
import yads.r22;
import yads.rg4;
import yads.t04;
import yads.vo2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qg implements DoubleFunction, Function, InterfaceC1342vn, l66, jv {
    public final /* synthetic */ int b;

    public /* synthetic */ qg(int i) {
        this.b = i;
    }

    public static /* bridge */ /* synthetic */ SelectGesture d(Object obj) {
        return (SelectGesture) obj;
    }

    public static ValueElementSequence e(float f, ValueElementSequence valueElementSequence, String str, InspectorInfo inspectorInfo) {
        valueElementSequence.set(str, Dp.m9040boximpl(f));
        return inspectorInfo.getProperties();
    }

    public static String f(StringBuilder sb, List list, char c) {
        sb.append(list);
        sb.append(c);
        return sb.toString();
    }

    public static /* synthetic */ void g(String str) throws rg4 {
        throw new rg4(str);
    }

    public static /* synthetic */ void h(String str) {
        throw new vo2(str);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 10:
                return lp4.a(l.longValue());
            default:
                return r22.b(l.longValue());
        }
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return CoroutineAdaptersKt.asVoidListenableFuture$lambda$0(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return ColorSpaces.Bt2020Hlg$lambda$0(d);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1342vn
    public boolean a(SQLiteDatabase sQLiteDatabase) {
        return Ik.a(sQLiteDatabase);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return t04.a(bundle);
    }
}
