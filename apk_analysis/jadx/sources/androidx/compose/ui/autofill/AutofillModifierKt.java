package androidx.compose.ui.autofill;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AutofillModifierKt {
    public static final Modifier contentType(Modifier modifier, ContentType contentType) {
        return SemanticsModifierKt.semantics$default(modifier, false, new AnonymousClass1(contentType), 1, null);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.autofill.AutofillModifierKt$contentType$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<SemanticsPropertyReceiver, j59> {
        final /* synthetic */ ContentType $contentType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ContentType contentType) {
            super(1);
            this.$contentType = contentType;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            invoke2(semanticsPropertyReceiver);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, this.$contentType);
        }
    }
}
