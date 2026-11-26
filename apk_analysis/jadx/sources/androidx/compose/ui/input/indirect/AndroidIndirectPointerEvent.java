package androidx.compose.ui.input.indirect;

import android.view.MotionEvent;
import defpackage.fg;
import defpackage.jh2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidIndirectPointerEvent implements PlatformIndirectPointerEvent {
    public static final int $stable = 8;
    private final List<IndirectPointerInputChange> changes;
    private final MotionEvent nativeEvent;
    private final int primaryDirectionalMotionAxis;
    private final int type;

    private AndroidIndirectPointerEvent(List<IndirectPointerInputChange> list, int i, int i2, MotionEvent motionEvent) {
        this.changes = list;
        this.type = i;
        this.primaryDirectionalMotionAxis = i2;
        this.nativeEvent = motionEvent;
        if (getChanges().isEmpty()) {
            fg.c("changes cannot be empty");
            throw null;
        }
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerEvent
    public List<IndirectPointerInputChange> getChanges() {
        return this.changes;
    }

    public final MotionEvent getNativeEvent$ui() {
        return this.nativeEvent;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerEvent
    /* JADX INFO: renamed from: getPrimaryDirectionalMotionAxis-nZO2Niw, reason: not valid java name */
    public int mo7048getPrimaryDirectionalMotionAxisnZO2Niw() {
        return this.primaryDirectionalMotionAxis;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerEvent
    /* JADX INFO: renamed from: getType-4ZHQPSE, reason: not valid java name */
    public int mo7049getType4ZHQPSE() {
        return this.type;
    }

    public /* synthetic */ AndroidIndirectPointerEvent(List list, int i, int i2, MotionEvent motionEvent, jh2 jh2Var) {
        this(list, i, i2, motionEvent);
    }
}
