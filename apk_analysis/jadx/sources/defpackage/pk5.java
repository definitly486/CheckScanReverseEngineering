package defpackage;

import androidx.room.TriggerBasedInvalidationTracker;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pk5 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ pk5(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            default:
                return Boolean.valueOf(TriggerBasedInvalidationTracker.onAllowRefresh$lambda$0());
        }
    }
}
