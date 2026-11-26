package androidx.compose.material3;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.eg0;
import defpackage.fg;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerStateImpl implements TimePickerState {
    public static final Companion Companion = new Companion(null);
    private final MutableIntState hourState;
    private boolean is24hour;
    private final MutableIntState minuteState;
    private final MutableState selection$delegate;

    public TimePickerStateImpl(int i, int i2, boolean z) {
        if (i < 0 || i >= 24) {
            fg.c("initialHour should in [0..23] range");
            throw null;
        }
        if (i2 < 0 || i2 >= 60) {
            fg.c("initialMinute should be in [0..59] range");
            throw null;
        }
        this.is24hour = z;
        this.selection$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TimePickerSelectionMode.m4148boximpl(TimePickerSelectionMode.Companion.m4155getHouryecRtBI()), null, 2, null);
        this.hourState = SnapshotIntStateKt.mutableIntStateOf(i);
        this.minuteState = SnapshotIntStateKt.mutableIntStateOf(i2);
    }

    @Override // androidx.compose.material3.TimePickerState
    public int getHour() {
        return this.hourState.getIntValue();
    }

    public final MutableIntState getHourState() {
        return this.hourState;
    }

    @Override // androidx.compose.material3.TimePickerState
    public int getMinute() {
        return this.minuteState.getIntValue();
    }

    public final MutableIntState getMinuteState() {
        return this.minuteState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.material3.TimePickerState
    /* JADX INFO: renamed from: getSelection-yecRtBI */
    public int mo3075getSelectionyecRtBI() {
        return ((TimePickerSelectionMode) this.selection$delegate.getValue()).m4154unboximpl();
    }

    @Override // androidx.compose.material3.TimePickerState
    public boolean is24hour() {
        return this.is24hour;
    }

    @Override // androidx.compose.material3.TimePickerState
    public void set24hour(boolean z) {
        this.is24hour = z;
    }

    @Override // androidx.compose.material3.TimePickerState
    public void setHour(int i) {
        this.hourState.setIntValue(i);
    }

    @Override // androidx.compose.material3.TimePickerState
    public void setMinute(int i) {
        this.minuteState.setIntValue(i);
    }

    @Override // androidx.compose.material3.TimePickerState
    /* JADX INFO: renamed from: setSelection-6_8s6DQ */
    public void mo3077setSelection6_8s6DQ(int i) {
        this.selection$delegate.setValue(TimePickerSelectionMode.m4148boximpl(i));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List Saver$lambda$0(SaverScope saverScope, TimePickerStateImpl timePickerStateImpl) {
            return u96.i(Integer.valueOf(timePickerStateImpl.getHour()), Integer.valueOf(timePickerStateImpl.getMinute()), Boolean.valueOf(timePickerStateImpl.is24hour()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final TimePickerStateImpl Saver$lambda$1(List list) {
            Object obj = list.get(0);
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            Object obj2 = list.get(1);
            obj2.getClass();
            int iIntValue2 = ((Integer) obj2).intValue();
            Object obj3 = list.get(2);
            obj3.getClass();
            return new TimePickerStateImpl(iIntValue, iIntValue2, ((Boolean) obj3).booleanValue());
        }

        public final Saver<TimePickerStateImpl, ?> Saver() {
            return SaverKt.Saver(new i5(), new eg0(3));
        }

        private Companion() {
        }
    }
}
