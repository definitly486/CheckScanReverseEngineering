package defpackage;

import androidx.compose.material3.TimePickerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.room.RoomRawQuery;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.RawWorkInfoDao_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class vx6 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ vx6(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return RawWorkInfoDao_Impl.getWorkInfoPojosLiveData$lambda$1((String) obj4, (RoomRawQuery) obj3, (RawWorkInfoDao_Impl) obj2, (SQLiteConnection) obj);
            default:
                return TimePickerKt.ClockText$lambda$77$lambda$76((MutableState) obj4, (MutableState) obj3, (MutableState) obj2, (LayoutCoordinates) obj);
        }
    }
}
