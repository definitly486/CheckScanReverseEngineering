package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.AnnotatedString;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ClipboardEventsHandler_jvmAndAndroidKt {
    public static final boolean rememberClipboardEventsHandler(nl3<? super AnnotatedString, j59> nl3Var, ll3<AnnotatedString> ll3Var, ll3<AnnotatedString> ll3Var2, boolean z, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            AnonymousClass1 anonymousClass1 = AnonymousClass1.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            AnonymousClass2 anonymousClass2 = new ll3() { // from class: androidx.compose.foundation.text.ClipboardEventsHandler_jvmAndAndroidKt.rememberClipboardEventsHandler.2
                @Override // defpackage.ll3
                public final Void invoke() {
                    return null;
                }
            };
        }
        if ((i2 & 4) == 0) {
            return false;
        }
        AnonymousClass3 anonymousClass3 = AnonymousClass3.INSTANCE;
        return false;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.ClipboardEventsHandler_jvmAndAndroidKt$rememberClipboardEventsHandler$3, reason: invalid class name */
    public static final class AnonymousClass3 implements ll3 {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        @Override // defpackage.ll3
        public final Void invoke() {
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.ClipboardEventsHandler_jvmAndAndroidKt$rememberClipboardEventsHandler$1, reason: invalid class name */
    public static final class AnonymousClass1 implements nl3<AnnotatedString, j59> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(AnnotatedString annotatedString) {
            invoke2(annotatedString);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(AnnotatedString annotatedString) {
        }
    }
}
