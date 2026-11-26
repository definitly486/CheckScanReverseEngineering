package defpackage;

import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.retain.RetainedEffectKt;
import androidx.core.backported.fixes.SystemPropertyResolver;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b11 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b11(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CameraInfoAdapter.camera2CameraInfo_delegate$lambda$0((CameraInfoAdapter) obj);
            case 1:
                return u96.h((td2.a) obj);
            case 2:
                return DatePickerKt.DatePickerContent$lambda$36$lambda$33$lambda$32((MutableState) obj);
            case 3:
                return RetainedEffectKt.RetainedEffect$lambda$2$0((nl3) obj);
            case 4:
                return ((SystemPropertyResolver) obj).initAliases();
            case 5:
                return Boolean.valueOf(TextFieldImplKt.CommonDecorationBox$lambda$18$lambda$7$lambda$6((State) obj));
            case 6:
                return gf0.p((gf0) obj);
            default:
                return nq0.F((nq0) obj);
        }
    }
}
