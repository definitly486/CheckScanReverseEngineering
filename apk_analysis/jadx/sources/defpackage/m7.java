package defpackage;

import androidx.activity.result.ActivityResultRegistry;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m7 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ m7(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return ActivityResultRegistry.generateRandomNumber$lambda$0();
            default:
                return j59.a;
        }
    }
}
