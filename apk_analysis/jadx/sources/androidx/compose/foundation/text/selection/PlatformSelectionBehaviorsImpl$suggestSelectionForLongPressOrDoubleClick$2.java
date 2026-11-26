package androidx.compose.foundation.text.selection;

import android.os.Build;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2", f = "PlatformSelectionBehaviors.android.kt", l = {369, WebmConstants.MkvEbmlElement.CHANNELS}, m = "invokeSuspend", v = 1)
public final class PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 extends pg8 implements bm3<TextClassifier, e02<? super TextRange>, Object> {
    final /* synthetic */ long $selection;
    final /* synthetic */ CharSequence $text;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ PlatformSelectionBehaviorsImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(CharSequence charSequence, long j, PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, e02<? super PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2> e02Var) {
        super(2, e02Var);
        this.$text = charSequence;
        this.$selection = j;
        this.this$0 = platformSelectionBehaviorsImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 = new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(this.$text, this.$selection, this.this$0, e02Var);
        platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2.L$0 = obj;
        return platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(TextClassifier textClassifier, e02<? super TextRange> e02Var) {
        return ((PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2) create(textClassifier, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        long jTextRange;
        long j;
        yg5 yg5Var;
        CharSequence charSequence;
        TextSelection textSelection;
        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            TextClassifier textClassifier = (TextClassifier) this.L$0;
            TextSelection.Request.Builder defaultLocales = new TextSelection.Request.Builder(this.$text, TextRange.m8489getMinimpl(this.$selection), TextRange.m8488getMaximpl(this.$selection)).setDefaultLocales(this.this$0.getAndroidLocalList());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 31) {
                defaultLocales.setIncludeTextClassification(true);
            }
            TextSelection textSelectionSuggestSelection = textClassifier.suggestSelection(defaultLocales.build());
            jTextRange = TextRangeKt.TextRange(textSelectionSuggestSelection.getSelectionStartIndex(), textSelectionSuggestSelection.getSelectionEndIndex());
            if (i2 < 31 || textSelectionSuggestSelection.getTextClassification() == null) {
                PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl2 = this.this$0;
                CharSequence charSequence2 = this.$text;
                this.J$0 = jTextRange;
                this.label = 2;
                if (platformSelectionBehaviorsImpl2.m2976classifyTextM8tDOmk(charSequence2, jTextRange, textClassifier, this) != a32Var) {
                    j = jTextRange;
                    jTextRange = j;
                }
            } else {
                yg5Var = this.this$0.mutex;
                PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl3 = this.this$0;
                charSequence = this.$text;
                this.L$0 = textSelectionSuggestSelection;
                this.L$1 = yg5Var;
                this.L$2 = platformSelectionBehaviorsImpl3;
                this.L$3 = charSequence;
                this.J$0 = jTextRange;
                this.label = 1;
                if (yg5Var.lock(null, this) != a32Var) {
                    textSelection = textSelectionSuggestSelection;
                    platformSelectionBehaviorsImpl = platformSelectionBehaviorsImpl3;
                    CharSequence charSequence3 = charSequence;
                    yg5 yg5Var2 = yg5Var;
                    TextClassification textClassification = textSelection.getTextClassification();
                    textClassification.getClass();
                    platformSelectionBehaviorsImpl.setTextClassificationResult(new TextClassificationResult(charSequence3, jTextRange, textClassification, null));
                    j59 j59Var = j59.a;
                }
            }
            return a32Var;
        }
        if (i == 1) {
            long j2 = this.J$0;
            charSequence = (CharSequence) this.L$3;
            platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) this.L$2;
            yg5Var = (yg5) this.L$1;
            textSelection = (TextSelection) this.L$0;
            r57.b(obj);
            jTextRange = j2;
            CharSequence charSequence4 = charSequence;
            yg5 yg5Var3 = yg5Var;
            try {
                TextClassification textClassification2 = textSelection.getTextClassification();
                textClassification2.getClass();
                platformSelectionBehaviorsImpl.setTextClassificationResult(new TextClassificationResult(charSequence4, jTextRange, textClassification2, null));
                j59 j59Var2 = j59.a;
            } finally {
                yg5Var3.unlock(null);
            }
        } else {
            if (i != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j = this.J$0;
            r57.b(obj);
            jTextRange = j;
        }
        return TextRange.m8479boximpl(jTextRange);
    }
}
