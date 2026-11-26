package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusPropertiesKt {
    public static final Modifier focusProperties(Modifier modifier, nl3<? super FocusProperties, j59> nl3Var) {
        return modifier.then(new FocusPropertiesElement(new FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0(nl3Var)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final nl3<FocusEnterExitScope, j59> toUsingEnterExitScope(nl3<? super FocusDirection, FocusRequester> nl3Var) {
        return new AnonymousClass1(nl3Var);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusPropertiesKt$toUsingEnterExitScope$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<FocusEnterExitScope, j59> {
        final /* synthetic */ nl3<FocusDirection, FocusRequester> $this_toUsingEnterExitScope;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super FocusDirection, FocusRequester> nl3Var) {
            super(1);
            this.$this_toUsingEnterExitScope = nl3Var;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(FocusEnterExitScope focusEnterExitScope) {
            FocusRequester focusRequesterInvoke = this.$this_toUsingEnterExitScope.invoke(FocusDirection.m5859boximpl(focusEnterExitScope.mo5858getRequestedFocusDirectiondhqQ8s()));
            FocusRequester.Companion companion = FocusRequester.Companion;
            if (focusRequesterInvoke == companion.getCancel()) {
                focusEnterExitScope.cancelFocusChange();
            } else if (focusRequesterInvoke != companion.getDefault()) {
                FocusRequester.m5892requestFocus3ESFkO8$default(focusRequesterInvoke, 0, 1, null);
            }
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(FocusEnterExitScope focusEnterExitScope) {
            invoke2(focusEnterExitScope);
            return j59.a;
        }
    }
}
