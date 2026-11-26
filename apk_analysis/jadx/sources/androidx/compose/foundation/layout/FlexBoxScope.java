package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
public interface FlexBoxScope {

    public static final class DefaultImpls {
        @Deprecated
        public static Modifier flex(FlexBoxScope flexBoxScope, Modifier modifier, nl3<? super FlexConfigScope, j59> nl3Var) {
            return FlexBoxScope.super.flex(modifier, nl3Var);
        }
    }

    Modifier flex(Modifier modifier, FlexConfig flexConfig);

    default Modifier flex(Modifier modifier, nl3<? super FlexConfigScope, j59> nl3Var) {
        return flex(modifier, new FlexBoxKt$sam$androidx_compose_foundation_layout_FlexConfig$0(nl3Var));
    }
}
