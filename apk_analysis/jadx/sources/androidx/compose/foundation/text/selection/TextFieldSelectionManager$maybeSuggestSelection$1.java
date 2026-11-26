package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$maybeSuggestSelection$1", f = "TextFieldSelectionManager.kt", l = {571}, m = "invokeSuspend", v = 1)
public final class TextFieldSelectionManager$maybeSuggestSelection$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ OffsetMapping $offsetMapping;
    final /* synthetic */ PlatformSelectionBehaviors $platformSelectionBehaviors;
    final /* synthetic */ TextRange $selection;
    final /* synthetic */ String $text;
    final /* synthetic */ long $transformedSelection;
    int label;
    final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$maybeSuggestSelection$1(PlatformSelectionBehaviors platformSelectionBehaviors, String str, long j, TextRange textRange, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping, e02<? super TextFieldSelectionManager$maybeSuggestSelection$1> e02Var) {
        super(2, e02Var);
        this.$platformSelectionBehaviors = platformSelectionBehaviors;
        this.$text = str;
        this.$transformedSelection = j;
        this.$selection = textRange;
        this.this$0 = textFieldSelectionManager;
        this.$offsetMapping = offsetMapping;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TextFieldSelectionManager$maybeSuggestSelection$1(this.$platformSelectionBehaviors, this.$text, this.$transformedSelection, this.$selection, this.this$0, this.$offsetMapping, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TextFieldSelectionManager$maybeSuggestSelection$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            PlatformSelectionBehaviors platformSelectionBehaviors = this.$platformSelectionBehaviors;
            String str = this.$text;
            long j = this.$transformedSelection;
            this.label = 1;
            obj = platformSelectionBehaviors.mo2973suggestSelectionForLongPressOrDoubleClickpYaCww(str, j, this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        TextRange textRange = (TextRange) obj;
        if (textRange == null) {
            return j59.a;
        }
        OffsetMapping offsetMapping = this.$offsetMapping;
        long jM8495unboximpl = textRange.m8495unboximpl();
        long jTextRange = TextRangeKt.TextRange(offsetMapping.transformedToOriginal(TextRange.m8491getStartimpl(jM8495unboximpl)), offsetMapping.transformedToOriginal(TextRange.m8486getEndimpl(jM8495unboximpl)));
        if (!TextRange.m8483equalsimpl(jTextRange, this.$selection) && aa4.e(this.this$0.getValue$foundation().getText(), this.$text) && this.$offsetMapping == this.this$0.getOffsetMapping$foundation()) {
            nl3<TextFieldValue, j59> onValueChange$foundation = this.this$0.getOnValueChange$foundation();
            TextFieldSelectionManager textFieldSelectionManager = this.this$0;
            onValueChange$foundation.invoke(textFieldSelectionManager.m3032createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation().getAnnotatedString(), jTextRange));
            this.this$0.m3044setLatestSelectionOEnZFl4$foundation(TextRange.m8479boximpl(jTextRange));
        }
        return j59.a;
    }
}
