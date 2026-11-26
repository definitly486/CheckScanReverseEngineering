package androidx.compose.ui.autofill;

import androidx.collection.MutableScatterMap;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidAutofillManager_androidKt {
    private static final String logTag = "ComposeAutofillManager";

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isAutofillable(SemanticsConfiguration semanticsConfiguration) {
        MutableScatterMap<SemanticsPropertyKey<?>, Object> props$ui = semanticsConfiguration.getProps$ui();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        return props$ui.contains(semanticsActions.getOnAutofillText()) || semanticsConfiguration.getProps$ui().contains(semanticsActions.getOnFillData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isRelatedToAutoCommit(SemanticsConfiguration semanticsConfiguration) {
        return semanticsConfiguration.getProps$ui().contains(SemanticsProperties.INSTANCE.getContentType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isRelatedToAutofill(SemanticsConfiguration semanticsConfiguration) {
        MutableScatterMap<SemanticsPropertyKey<?>, Object> props$ui = semanticsConfiguration.getProps$ui();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        if (props$ui.contains(semanticsActions.getOnAutofillText()) || semanticsConfiguration.getProps$ui().contains(semanticsActions.getOnFillData())) {
            return true;
        }
        MutableScatterMap<SemanticsPropertyKey<?>, Object> props$ui2 = semanticsConfiguration.getProps$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        return props$ui2.contains(semanticsProperties.getContentType()) || semanticsConfiguration.getProps$ui().contains(semanticsProperties.getContentDataType());
    }
}
