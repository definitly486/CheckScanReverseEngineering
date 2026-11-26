package defpackage;

import android.content.Context;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.CameraX;
import androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.lifecycle.CoroutineLiveData;
import yads.fc3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eh0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ eh0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Long.valueOf(((SelectionRegistrar) obj).nextSelectableId());
            case 1:
                return Camera2CameraMetadata._resultKeys$lambda$0((Camera2CameraMetadata) obj);
            case 2:
                return CameraX.lambda$new$0((Context) obj);
            case 3:
                return CoroutineLiveData._init_$lambda$0((CoroutineLiveData) obj);
            case 4:
                return ExposedDropdownMenuKt.ExposedDropdownMenuBox$lambda$22$lambda$21((nl3) obj);
            case 5:
                return Boolean.valueOf(TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1.canScrollForward_delegate$lambda$0((TextFieldScrollerPosition) obj));
            default:
                return fc3.a((ll3) obj);
        }
    }
}
