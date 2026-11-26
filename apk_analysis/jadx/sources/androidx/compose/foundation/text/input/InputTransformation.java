package androidx.compose.foundation.text.input;

import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* JADX INFO: loaded from: classes.dex */
public interface InputTransformation {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion implements InputTransformation {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @Override // androidx.compose.foundation.text.input.InputTransformation
        public void transformInput(TextFieldBuffer textFieldBuffer) {
        }
    }

    default void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }

    default KeyboardOptions getKeyboardOptions() {
        return null;
    }

    void transformInput(TextFieldBuffer textFieldBuffer);
}
