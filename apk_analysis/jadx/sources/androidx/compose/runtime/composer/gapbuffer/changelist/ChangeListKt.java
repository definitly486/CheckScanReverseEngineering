package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Changes;
import defpackage.av;

/* JADX INFO: loaded from: classes2.dex */
public final class ChangeListKt {
    public static final ChangeList asGapBufferChangeList(Changes changes) {
        ChangeList changeList = changes instanceof ChangeList ? (ChangeList) changes : null;
        if (changeList != null) {
            return changeList;
        }
        throw av.b("Inconsistent composition");
    }
}
