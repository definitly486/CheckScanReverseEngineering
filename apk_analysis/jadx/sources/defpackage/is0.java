package defpackage;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.internal.ChildParentSemanticsKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.lr0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class is0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ is0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BorderKt.drawContentWithoutBorder$lambda$0((ContentDrawScope) obj);
            case 1:
                return ChildParentSemanticsKt.childSemantics$lambda$0((SemanticsPropertyReceiver) obj);
            case 2:
                return DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$20$lambda$19((SemanticsPropertyReceiver) obj);
            case 3:
                tc5 tc5Var = (tc5) obj;
                tc5Var.getClass();
                zn3 zn3Var = new zn3();
                cg4 cg4Var = cg4.Singleton;
                zk1 zk1VarA = x07.a(do3.class);
                ba8 ba8Var = bf7.e;
                tc5Var.a(new m08(new gi0(ba8Var, zk1VarA, null, zn3Var, cg4Var)));
                tc5Var.a(new m08(new gi0(ba8Var, x07.a(fs4.class), null, new ao3(0), cg4Var)));
                tc5Var.a(new m08(new gi0(ba8Var, x07.a(e17.class), null, new bo3(), cg4Var)));
                tc5Var.a(new e53(new gi0(ba8Var, x07.a(no3.class), null, new ht1(3), cg4.Factory)));
                return j59.a;
            case 4:
                return ProgressIndicatorKt._get_linearIndeterminateSecondLineTailAnimationSpec_$lambda$46((KeyframesSpec.KeyframesSpecConfig) obj);
            case 5:
                return VectorConvertersKt.DpOffsetToVector$lambda$1((AnimationVector2D) obj);
            default:
                return lr0.a((String) obj);
        }
    }
}
