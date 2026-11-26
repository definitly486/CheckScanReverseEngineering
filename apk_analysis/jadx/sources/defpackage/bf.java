package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.text.ClickableTextKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.savedstate.serialization.SavedStateConfiguration_androidKt;
import com.tapjoy.internal.h1;
import java.util.List;
import yads.l62;
import yads.r96;
import yads.sa1;
import yads.zl4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bf implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ bf(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableState.confirmValueChange$lambda$0(obj));
            case 1:
                return ClickableTextKt.ClickableText_4YKlhWE$lambda$0$0((TextLayoutResult) obj);
            case 2:
                return SavedStateConfiguration_androidKt.getDefaultSerializersModuleOnPlatform$lambda$1$lambda$0((List) obj);
            case 3:
                return h1.a(((Boolean) obj).booleanValue());
            case 4:
                return Boolean.valueOf(l62.c(obj));
            case 5:
                return Boolean.valueOf(sa1.b(obj));
            default:
                return zl4.a((r96) obj);
        }
    }
}
