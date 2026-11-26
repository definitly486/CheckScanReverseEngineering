package defpackage;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.material3.SearchBarState;
import androidx.compose.runtime.composer.linkbuffer.changelist.Operations;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gz5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ gz5(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return Operations.toCollectionString$lambda$0((Operations) obj3, (String) obj2, obj);
            default:
                return SearchBarState.Companion.Saver$lambda$1((AnimationSpec) obj3, (AnimationSpec) obj2, (List) obj);
        }
    }
}
