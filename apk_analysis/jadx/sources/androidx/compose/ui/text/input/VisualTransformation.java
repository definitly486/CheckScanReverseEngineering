package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.jg;

/* JADX INFO: loaded from: classes2.dex */
public interface VisualTransformation {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final VisualTransformation None = new jg();

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final TransformedText None$lambda$0(AnnotatedString annotatedString) {
            return new TransformedText(annotatedString, OffsetMapping.Companion.getIdentity());
        }

        public static /* synthetic */ void getNone$annotations() {
        }

        public final VisualTransformation getNone() {
            return None;
        }
    }

    TransformedText filter(AnnotatedString annotatedString);
}
