package defpackage;

import android.os.Bundle;
import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.runtime.saveable.serialization.SerializableSaverKt;
import androidx.compose.ui.focus.FocusState;
import androidx.savedstate.serialization.SavedStateConfiguration;
import yads.i05;
import yads.mv1;
import yads.rg2;
import yads.yg2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sh0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ sh0(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BasicTooltipKt.keyboardBehavior$lambda$13((y22) this.c, (TooltipState) this.d, (FocusState) obj);
            case 1:
                return SerializableSaverKt.serializableSaver$lambda$1((df4) this.c, (SavedStateConfiguration) this.d, (Bundle) obj);
            default:
                return rg2.a((mv1) this.c, (i05) this.d, (yg2) obj);
        }
    }
}
