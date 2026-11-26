package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import defpackage.a32;
import defpackage.ah;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.SelectionManager$contextMenuAreaModifier$1", f = "SelectionManager.kt", l = {194}, m = "invokeSuspend", v = 1)
public final class SelectionManager$contextMenuAreaModifier$1 extends pg8 implements bm3<Offset, e02<? super j59>, Object> {
    /* synthetic */ long J$0;
    int label;
    final /* synthetic */ SelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionManager$contextMenuAreaModifier$1(SelectionManager selectionManager, e02<? super SelectionManager$contextMenuAreaModifier$1> e02Var) {
        super(2, e02Var);
        this.this$0 = selectionManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SelectionManager$contextMenuAreaModifier$1 selectionManager$contextMenuAreaModifier$1 = new SelectionManager$contextMenuAreaModifier$1(this.this$0, e02Var);
        selectionManager$contextMenuAreaModifier$1.J$0 = ((Offset) obj).m5997unboximpl();
        return selectionManager$contextMenuAreaModifier$1;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Offset offset, e02<? super j59> e02Var) {
        return m3012invoke3MmeM6k(offset.m5997unboximpl(), e02Var);
    }

    /* JADX INFO: renamed from: invoke-3MmeM6k, reason: not valid java name */
    public final Object m3012invoke3MmeM6k(long j, e02<? super j59> e02Var) {
        return ((SelectionManager$contextMenuAreaModifier$1) create(Offset.m5976boximpl(j), e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            long j = this.J$0;
            b36<AnnotatedString, TextRange> contextTextAndSelection$foundation = this.this$0.getContextTextAndSelection$foundation();
            if (contextTextAndSelection$foundation != null) {
                SelectionManager selectionManager = this.this$0;
                AnnotatedString annotatedString = contextTextAndSelection$foundation.b;
                long jM8495unboximpl = contextTextAndSelection$foundation.c.m8495unboximpl();
                PlatformSelectionBehaviors platformSelectionBehaviors$foundation = selectionManager.getPlatformSelectionBehaviors$foundation();
                if (platformSelectionBehaviors$foundation != null) {
                    Offset offsetM5976boximpl = Offset.m5976boximpl(j);
                    this.label = 1;
                    if (platformSelectionBehaviors$foundation.mo2971onShowContextMenu_2OEclM(annotatedString, jM8495unboximpl, offsetM5976boximpl, this) == a32Var) {
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
