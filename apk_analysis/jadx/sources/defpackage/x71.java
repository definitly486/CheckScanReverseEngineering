package defpackage;

import androidx.room.RxRoom;
import androidx.room.util.DBUtil;
import com.warefly.checkscan.data.db.CheckscanDatabase_Impl;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class x71 extends r71 {
    public final CheckscanDatabase_Impl a;
    public final w71 b = new w71();

    public x71(CheckscanDatabase_Impl checkscanDatabase_Impl) {
        this.a = checkscanDatabase_Impl;
    }

    @Override // defpackage.r71
    public final void a() {
        DBUtil.performBlocking(this.a, false, true, new t71(0));
    }

    @Override // defpackage.r71
    public final void b(ArrayList arrayList) {
        DBUtil.performBlocking(this.a, false, true, new u71(0, this, arrayList));
    }

    @Override // defpackage.r71
    public final mz7<List<n81>> c() {
        return RxRoom.createSingle(this.a, true, false, new v71(0));
    }

    @Override // defpackage.r71
    public final void d(final ArrayList arrayList) {
        DBUtil.performBlocking(this.a, false, true, new nl3() { // from class: s71
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return this.b.e(arrayList);
            }
        });
    }

    public final /* synthetic */ j59 e(ArrayList arrayList) {
        super.d(arrayList);
        return j59.a;
    }
}
