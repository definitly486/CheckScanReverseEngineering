package defpackage;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState_androidKt;
import androidx.compose.foundation.text.input.internal.selection.TextToolbarState;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.layout.SubcomposeLayoutState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class um4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ um4(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        Object obj3 = this.e;
        Object obj4 = this.d;
        Object obj5 = this.c;
        switch (i) {
            case 0:
                return LazyLayoutKt.LazyLayout$lambda$1$2$0((LazyLayoutPrefetchState) obj5, (LazyLayoutItemContentFactory) obj4, (SubcomposeLayoutState) obj3, (PrefetchScheduler) obj2, (DisposableEffectScope) obj);
            default:
                return TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$0((ll3) obj5, (ll3) obj4, (TextFieldSelectionState) obj3, (TextToolbarState) obj2, (TextContextMenuSession) obj);
        }
    }
}
