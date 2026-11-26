package defpackage;

import android.os.Bundle;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.runtime.LinkComposer;
import androidx.navigation.internal.NavDestinationImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mq4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mq4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(LinkComposer.stackTraceForValue$lambda$0(obj2, obj));
            case 1:
                return Boolean.valueOf(NavDestinationImpl.hasRequiredArguments$lambda$7((Bundle) obj2, (String) obj));
            default:
                return SelectionManager._get_modifier_$lambda$3((SelectionManager) obj2, ((Boolean) obj).booleanValue());
        }
    }
}
