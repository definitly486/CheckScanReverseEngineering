package androidx.compose.ui.autofill;

import android.graphics.Rect;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidAutofillManager$onFocusChanged$2$1 extends gh4 implements fm3<Integer, Integer, Integer, Integer, j59> {
    final /* synthetic */ int $semanticsId;
    final /* synthetic */ AndroidAutofillManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidAutofillManager$onFocusChanged$2$1(AndroidAutofillManager androidAutofillManager, int i) {
        super(4);
        this.this$0 = androidAutofillManager;
        this.$semanticsId = i;
    }

    @Override // defpackage.fm3
    public /* bridge */ /* synthetic */ j59 invoke(Integer num, Integer num2, Integer num3, Integer num4) {
        invoke(num.intValue(), num2.intValue(), num3.intValue(), num4.intValue());
        return j59.a;
    }

    public final void invoke(int i, int i2, int i3, int i4) {
        this.this$0.getPlatformAutofillManager().notifyViewEntered(this.this$0.view, this.$semanticsId, new Rect(i, i2, i3, i4));
    }
}
