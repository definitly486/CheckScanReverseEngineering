package defpackage;

import android.view.inputmethod.SelectRangeGesture;
import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.RedirectableLiveData;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.layout.Placeable;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import java.util.ArrayList;
import yads.l66;
import yads.lr1;
import yads.r51;
import yads.xi2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class tg implements DoubleFunction, SuccessContinuation, Function, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ tg(int i) {
        this.b = i;
    }

    public static int b(int i, int i2, Placeable placeable) {
        return (i - placeable.getHeight()) / i2;
    }

    public static int c(int i, int i2, boolean z) {
        return (Boolean.hashCode(z) + i) * i2;
    }

    public static int d(ArrayList arrayList, int i, int i2) {
        return (arrayList.hashCode() + i) * i2;
    }

    public static /* bridge */ /* synthetic */ boolean f(Object obj) {
        return obj instanceof SelectRangeGesture;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 11:
                return lr1.a(((Double) obj).doubleValue());
            case 12:
                return r51.a(((Long) obj).longValue());
            default:
                return xi2.a(((Long) obj).longValue());
        }
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return RedirectableLiveData._init_$lambda$0(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return ColorSpaces.Bt2020Pq$lambda$1(d);
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        return FirebaseRemoteConfig.lambda$setDefaultsWithStringsMapAsync$7((ConfigContainer) obj);
    }
}
