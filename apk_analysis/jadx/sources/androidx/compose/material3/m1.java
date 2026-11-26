package androidx.compose.material3;

import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class m1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return EnterAlwaysSearchBarScrollBehavior.searchBarScrollBehavior$lambda$0((EnterAlwaysSearchBarScrollBehavior) obj2, ((Float) obj).floatValue());
            default:
                return TimePickerKt$TimeSelector$3.invoke$lambda$2$lambda$1$lambda$0((String) obj2, (SemanticsPropertyReceiver) obj);
        }
    }
}
