package defpackage;

import android.location.LocationManager;
import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.shape.MaterialShapeDrawable;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.location.impl.u;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ar implements Arrangement.SpacingAlignmentCalculator, xl3, MaterialShapeDrawable.OnCornerSizeChangeListener, CallbackToFutureAdapter.Resolver, FunctionWithThrowable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ar(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return Arrangement.Absolute.aligned$lambda$0((Alignment.Horizontal) this.c, i, layoutDirection);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return ((rv) obj2).invoke(obj);
            default:
                return u.a((u) obj2, (LocationManager) obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((RequestWithCallback) this.c).lambda$new$0(completer);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable.OnCornerSizeChangeListener
    public void onCornerSizeChange(float f) {
        ((MaterialButton) this.c).lambda$setOpticalCenterEnabled$4(f);
    }
}
