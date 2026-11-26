package androidx.compose.ui.semantics;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsConfigurationKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsConfigurationKt$getOrNull$1, reason: invalid class name */
    public static final class AnonymousClass1<T> extends gh4 implements ll3<T> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0);
        }

        @Override // defpackage.ll3
        public final T invoke() {
            return null;
        }
    }

    public static final <T> T getOrNull(SemanticsConfiguration semanticsConfiguration, SemanticsPropertyKey<T> semanticsPropertyKey) {
        return (T) semanticsConfiguration.getOrElseNullable(semanticsPropertyKey, AnonymousClass1.INSTANCE);
    }
}
