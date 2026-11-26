package androidx.compose.ui.semantics;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.jh2;
import defpackage.ze4;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsPropertyKey<T> {
    public static final int $stable = 8;
    private String accessibilityExtraKey;
    private boolean isImportantForAccessibility;
    private final bm3<T, T, T> mergePolicy;
    private final String name;

    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsPropertyKey$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<T, T, T> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        @Override // defpackage.bm3
        public final T invoke(T t, T t2) {
            return t == null ? t2 : t;
        }
    }

    public /* synthetic */ SemanticsPropertyKey(String str, bm3 bm3Var, int i, jh2 jh2Var) {
        this(str, (i & 2) != 0 ? AnonymousClass1.INSTANCE : bm3Var);
    }

    public final String getAccessibilityExtraKey$ui() {
        return this.accessibilityExtraKey;
    }

    public final bm3<T, T, T> getMergePolicy$ui() {
        return this.mergePolicy;
    }

    public final String getName() {
        return this.name;
    }

    public final T getValue(SemanticsPropertyReceiver semanticsPropertyReceiver, ze4<?> ze4Var) {
        return (T) SemanticsPropertiesKt.throwSemanticsGetNotSupported();
    }

    public final boolean isImportantForAccessibility$ui() {
        return this.isImportantForAccessibility;
    }

    public final T merge(T t, T t2) {
        return this.mergePolicy.invoke(t, t2);
    }

    public final void setAccessibilityExtraKey$ui(String str) {
        this.accessibilityExtraKey = str;
    }

    public final void setValue(SemanticsPropertyReceiver semanticsPropertyReceiver, ze4<?> ze4Var, T t) {
        semanticsPropertyReceiver.set(this, t);
    }

    public String toString() {
        return "AccessibilityKey: " + this.name;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SemanticsPropertyKey(String str, bm3<? super T, ? super T, ? extends T> bm3Var) {
        this.name = str;
        this.mergePolicy = bm3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SemanticsPropertyKey(String str, boolean z) {
        this(str, (bm3) null, 2, (jh2) (0 == true ? 1 : 0));
        this.isImportantForAccessibility = z;
    }

    public /* synthetic */ SemanticsPropertyKey(String str, boolean z, bm3 bm3Var, String str2, int i, jh2 jh2Var) {
        this(str, z, bm3Var, (i & 8) != 0 ? null : str2);
    }

    public SemanticsPropertyKey(String str, boolean z, bm3<? super T, ? super T, ? extends T> bm3Var, String str2) {
        this(str, bm3Var);
        this.isImportantForAccessibility = z;
        this.accessibilityExtraKey = str2;
    }
}
