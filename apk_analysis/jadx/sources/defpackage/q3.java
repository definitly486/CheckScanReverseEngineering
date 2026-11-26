package defpackage;

import android.webkit.GeolocationPermissions;
import android.webkit.PermissionRequest;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import com.google.common.collect.q;
import com.google.common.collect.r;
import com.google.common.collect.s;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import yads.ae4;
import yads.ci4;
import yads.dh4;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class q3 implements xl3, q.b, DoubleFunction, ActivityResultCallback, ci4 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ q3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // com.google.common.collect.q.b
    public Object a(Object obj, Object obj2) {
        return yr4.c((List) ((Collection) obj2), new ig5((r) ((s) this.c), obj));
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (qq1) ((g4) obj2).invoke(obj);
            case 1:
                return (l17) ((r61) obj2).invoke(obj);
            default:
                return (b36) ((nl3) obj2).invoke(obj);
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.Companion.generateEotf$lambda$1((TransferParameters) this.c, d);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        vf9 vf9Var = (vf9) this.c;
        ((Map) obj).getClass();
        PermissionRequest permissionRequest = vf9Var.b;
        if (permissionRequest != null) {
            vf9Var.b = null;
            vf9Var.a(permissionRequest);
        }
        GeolocationPermissions.Callback callback = vf9Var.d;
        if (callback != null) {
            String str = vf9Var.c;
            vf9Var.d = null;
            vf9Var.c = null;
            vf9Var.b(str, callback);
        }
    }

    @Override // yads.ci4
    public boolean a(dh4 dh4Var) {
        return ae4.b((ae4) this.c, dh4Var);
    }
}
