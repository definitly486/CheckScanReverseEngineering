package androidx.compose.ui.semantics;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.tg5;
import defpackage.ze4;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsProperties_androidKt {
    static final /* synthetic */ ze4<Object>[] $$delegatedProperties = {new tg5(SemanticsProperties_androidKt.class, "testTagsAsResourceId", "getTestTagsAsResourceId(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1), new tg5(SemanticsProperties_androidKt.class, "accessibilityClassName", "getAccessibilityClassName(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)};

    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsProperties_androidKt$SemanticsPropertyKey$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        @Override // defpackage.bm3
        public final Object invoke(Object obj, Object obj2) {
            return obj;
        }
    }

    static {
        SemanticsPropertiesAndroid semanticsPropertiesAndroid = SemanticsPropertiesAndroid.INSTANCE;
        semanticsPropertiesAndroid.getTestTagsAsResourceId();
        semanticsPropertiesAndroid.getAccessibilityClassName();
    }

    public static final <T> SemanticsPropertyKey<T> SemanticsPropertyKey(String str, String str2, bm3<? super T, ? super T, ? extends T> bm3Var) {
        return new SemanticsPropertyKey<>(str, false, (bm3) bm3Var, str2);
    }

    public static /* synthetic */ SemanticsPropertyKey SemanticsPropertyKey$default(String str, String str2, bm3 bm3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            bm3Var = AnonymousClass1.INSTANCE;
        }
        return SemanticsPropertyKey(str, str2, bm3Var);
    }

    public static final String getAccessibilityClassName(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return SemanticsPropertiesAndroid.INSTANCE.getAccessibilityClassName().getValue(semanticsPropertyReceiver, $$delegatedProperties[1]);
    }

    public static final boolean getTestTagsAsResourceId(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return SemanticsPropertiesAndroid.INSTANCE.getTestTagsAsResourceId().getValue(semanticsPropertyReceiver, $$delegatedProperties[0]).booleanValue();
    }

    public static final void setAccessibilityClassName(SemanticsPropertyReceiver semanticsPropertyReceiver, String str) {
        SemanticsPropertiesAndroid.INSTANCE.getAccessibilityClassName().setValue(semanticsPropertyReceiver, $$delegatedProperties[1], str);
    }

    public static final void setTestTagsAsResourceId(SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z) {
        SemanticsPropertiesAndroid.INSTANCE.getTestTagsAsResourceId().setValue(semanticsPropertyReceiver, $$delegatedProperties[0], Boolean.valueOf(z));
    }
}
