package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusOrderModifierKt {
    @ul2
    public static final Modifier focusOrder(Modifier modifier, FocusRequester focusRequester, nl3<? super FocusOrder, j59> nl3Var) {
        return FocusPropertiesKt.focusProperties(FocusRequesterModifierKt.focusRequester(modifier, focusRequester), new AnonymousClass2(new FocusOrderToProperties(nl3Var)));
    }

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusOrderModifierKt$focusOrder$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<FocusProperties, j59> {
        final /* synthetic */ FocusOrderToProperties $scope;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FocusOrderToProperties focusOrderToProperties) {
            super(1);
            this.$scope = focusOrderToProperties;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(FocusProperties focusProperties) {
            invoke2(focusProperties);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(FocusProperties focusProperties) {
            this.$scope.apply(focusProperties);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusOrderModifierKt$focusOrder$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<FocusProperties, j59> {
        final /* synthetic */ FocusOrderToProperties $scope;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(FocusOrderToProperties focusOrderToProperties) {
            super(1);
            this.$scope = focusOrderToProperties;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(FocusProperties focusProperties) {
            invoke2(focusProperties);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(FocusProperties focusProperties) {
            this.$scope.apply(focusProperties);
        }
    }

    @ul2
    public static final Modifier focusOrder(Modifier modifier, FocusRequester focusRequester) {
        return FocusRequesterModifierKt.focusRequester(modifier, focusRequester);
    }

    @ul2
    public static final Modifier focusOrder(Modifier modifier, nl3<? super FocusOrder, j59> nl3Var) {
        return FocusPropertiesKt.focusProperties(modifier, new AnonymousClass1(new FocusOrderToProperties(nl3Var)));
    }
}
