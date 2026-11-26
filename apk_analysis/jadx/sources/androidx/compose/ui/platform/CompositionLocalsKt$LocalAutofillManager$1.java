package androidx.compose.ui.platform;

import androidx.compose.ui.autofill.AutofillManager;
import defpackage.gh4;
import defpackage.ll3;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionLocalsKt$LocalAutofillManager$1 extends gh4 implements ll3<AutofillManager> {
    public static final CompositionLocalsKt$LocalAutofillManager$1 INSTANCE = new CompositionLocalsKt$LocalAutofillManager$1();

    public CompositionLocalsKt$LocalAutofillManager$1() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final AutofillManager invoke() {
        CompositionLocalsKt.noLocalProvidedFor("LocalAutofillManager");
        throw new KotlinNothingValueException();
    }
}
