package androidx.compose.foundation.text.selection;

import androidx.appcompat.app.AppCompatDelegate;
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
@bd2(c = "androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$3$1$1", f = "SelectionContainer.kt", l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, m = "invokeSuspend", v = 1)
public final class SelectionContainerKt$SelectionContainer$3$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ Clipboard $clipboard;
    final /* synthetic */ AnnotatedString $textToCopy;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionContainerKt$SelectionContainer$3$1$1(Clipboard clipboard, AnnotatedString annotatedString, e02<? super SelectionContainerKt$SelectionContainer$3$1$1> e02Var) {
        super(2, e02Var);
        this.$clipboard = clipboard;
        this.$textToCopy = annotatedString;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SelectionContainerKt$SelectionContainer$3$1$1(this.$clipboard, this.$textToCopy, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SelectionContainerKt$SelectionContainer$3$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            Clipboard clipboard = this.$clipboard;
            ClipEntry clipEntry = ClipboardUtils_androidKt.toClipEntry(this.$textToCopy);
            this.label = 1;
            if (clipboard.setClipEntry(clipEntry, this) == a32Var) {
                return a32Var;
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
