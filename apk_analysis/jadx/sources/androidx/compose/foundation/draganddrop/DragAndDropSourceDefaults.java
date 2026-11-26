package androidx.compose.foundation.draganddrop;

import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class DragAndDropSourceDefaults {
    public static final int $stable = 0;
    public static final DragAndDropSourceDefaults INSTANCE = new DragAndDropSourceDefaults();
    private static final bm3<DragAndDropStartDetectorScope, e02<? super j59>, Object> DefaultStartDetector = new DragAndDropSourceDefaults$DefaultStartDetector$1(null);

    private DragAndDropSourceDefaults() {
    }

    public final bm3<DragAndDropStartDetectorScope, e02<? super j59>, Object> getDefaultStartDetector() {
        return DefaultStartDetector;
    }
}
