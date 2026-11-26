package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$copy$1", f = "TextFieldSelectionManager.kt", l = {891}, m = "invokeSuspend", v = 1)
public final class TextFieldSelectionManager$copy$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ boolean $cancelSelection;
    int label;
    final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$copy$1(TextFieldSelectionManager textFieldSelectionManager, boolean z, e02<? super TextFieldSelectionManager$copy$1> e02Var) {
        super(2, e02Var);
        this.this$0 = textFieldSelectionManager;
        this.$cancelSelection = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TextFieldSelectionManager$copy$1(this.this$0, this.$cancelSelection, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TextFieldSelectionManager$copy$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            AnnotatedString annotatedStringCopyWithResult$foundation = this.this$0.copyWithResult$foundation(this.$cancelSelection);
            if (annotatedStringCopyWithResult$foundation == null) {
                return j59.a;
            }
            Clipboard clipboard$foundation = this.this$0.getClipboard$foundation();
            if (clipboard$foundation != null) {
                ClipEntry clipEntry = ClipboardUtils_androidKt.toClipEntry(annotatedStringCopyWithResult$foundation);
                this.label = 1;
                if (clipboard$foundation.setClipEntry(clipEntry, this) == a32Var) {
                    return a32Var;
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
