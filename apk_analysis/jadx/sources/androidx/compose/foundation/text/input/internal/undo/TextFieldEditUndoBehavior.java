package androidx.compose.foundation.text.input.internal.undo;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes.dex */
public enum TextFieldEditUndoBehavior {
    MergeIfPossible,
    ClearHistory,
    NeverMerge;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<TextFieldEditUndoBehavior> getEntries() {
        return $ENTRIES;
    }
}
