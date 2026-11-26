package androidx.compose.foundation.text;

import androidx.compose.foundation.text.modifiers.TextAutoSizeLayoutScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.unit.TextUnitKt;

/* JADX INFO: loaded from: classes.dex */
public interface TextAutoSize {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* JADX INFO: renamed from: StepBased-vU-0ePk$default, reason: not valid java name */
        public static /* synthetic */ TextAutoSize m2584StepBasedvU0ePk$default(Companion companion, long j, long j2, long j3, int i, Object obj) {
            if ((i & 1) != 0) {
                j = TextAutoSizeDefaults.INSTANCE.m2587getMinFontSizeXSAIIZE();
            }
            long j4 = j;
            if ((i & 2) != 0) {
                j2 = TextAutoSizeDefaults.INSTANCE.m2586getMaxFontSizeXSAIIZE();
            }
            long j5 = j2;
            if ((i & 4) != 0) {
                j3 = TextUnitKt.getSp(0.25d);
            }
            return companion.m2585StepBasedvU0ePk(j4, j5, j3);
        }

        /* JADX INFO: renamed from: StepBased-vU-0ePk, reason: not valid java name */
        public final TextAutoSize m2585StepBasedvU0ePk(long j, long j2, long j3) {
            return new AutoSizeStepBased(j, j2, j3, null);
        }
    }

    boolean equals(Object obj);

    /* JADX INFO: renamed from: getFontSize-Ci0_558 */
    long mo2446getFontSizeCi0_558(TextAutoSizeLayoutScope textAutoSizeLayoutScope, long j, AnnotatedString annotatedString);

    int hashCode();
}
