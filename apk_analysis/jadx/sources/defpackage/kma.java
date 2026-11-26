package defpackage;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.zaaa;

/* JADX INFO: loaded from: classes4.dex */
public final class kma implements PendingResult.StatusListener {
    public final /* synthetic */ BasePendingResult a;
    public final /* synthetic */ zaaa b;

    public kma(zaaa zaaaVar, BasePendingResult basePendingResult) {
        this.a = basePendingResult;
        this.b = zaaaVar;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        this.b.a.remove(this.a);
    }
}
