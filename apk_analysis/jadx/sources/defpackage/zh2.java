package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifierKt;
import androidx.compose.material3.DefaultModalWideNavigationRailOverride;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.node.TraversableNode;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zh2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zh2(SeekableTransitionState seekableTransitionState, y22 y22Var) {
        this.b = 3;
        this.d = seekableTransitionState;
        this.c = y22Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                return DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$20$lambda$19((y22) obj2, (Animatable) obj3, ((Float) obj).floatValue());
            case 1:
                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6$lambda$5((SheetState) obj2, (ll3) obj3, (Throwable) obj);
            case 2:
                return Boolean.valueOf(TextContextMenuModifierKt.traverseTextContextMenuDataNodes$lambda$0((nl3) obj2, (nl3) obj3, (TraversableNode) obj));
            default:
                return TransitionKt.rememberTransition$lambda$1$0((SeekableTransitionState) obj3, (y22) obj2, (DisposableEffectScope) obj);
        }
    }

    public /* synthetic */ zh2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }
}
