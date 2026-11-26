package androidx.compose.foundation.text.input.internal.undo;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes.dex */
public enum TextEditType {
    Insert,
    Delete,
    Replace;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<TextEditType> getEntries() {
        return $ENTRIES;
    }
}
