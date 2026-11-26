package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.b36;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.SelectionManager$contextMenuAreaModifier$2", f = "SelectionManager.kt", l = {WebmConstants.MkvEbmlElement.TRACK_NUMBER}, m = "invokeSuspend", v = 1)
public final class SelectionManager$contextMenuAreaModifier$2 extends pg8 implements nl3<e02<? super j59>, Object> {
    int label;
    final /* synthetic */ SelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionManager$contextMenuAreaModifier$2(SelectionManager selectionManager, e02<? super SelectionManager$contextMenuAreaModifier$2> e02Var) {
        super(1, e02Var);
        this.this$0 = selectionManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new SelectionManager$contextMenuAreaModifier$2(this.this$0, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((SelectionManager$contextMenuAreaModifier$2) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            b36<AnnotatedString, TextRange> contextTextAndSelection$foundation = this.this$0.getContextTextAndSelection$foundation();
            if (contextTextAndSelection$foundation != null) {
                SelectionManager selectionManager = this.this$0;
                AnnotatedString annotatedString = contextTextAndSelection$foundation.b;
                long jM8495unboximpl = contextTextAndSelection$foundation.c.m8495unboximpl();
                PlatformSelectionBehaviors platformSelectionBehaviors$foundation = selectionManager.getPlatformSelectionBehaviors$foundation();
                if (platformSelectionBehaviors$foundation != null) {
                    this.label = 1;
                    if (platformSelectionBehaviors$foundation.mo2972onShowSelectionToolbarSbBc2M(annotatedString, jM8495unboximpl, this) == a32Var) {
                        return a32Var;
                    }
                }
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
