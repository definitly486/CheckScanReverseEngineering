package defpackage;

import androidx.compose.runtime.DisposableEffectScope;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.room.RoomRawQuery;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.RawWorkInfoDao_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jp4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ jp4(Object obj, Object obj2, Object obj3, int i) {
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
                return LifecycleEffectKt.LifecycleStartEffectImpl$lambda$0$0((LifecycleOwner) obj4, (LifecycleStartStopEffectScope) obj3, (nl3) obj2, (DisposableEffectScope) obj);
            default:
                return RawWorkInfoDao_Impl.getWorkInfoPojos$lambda$0((String) obj4, (RoomRawQuery) obj3, (RawWorkInfoDao_Impl) obj2, (SQLiteConnection) obj);
        }
    }
}
