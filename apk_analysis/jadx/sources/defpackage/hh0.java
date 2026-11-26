package defpackage;

import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hh0 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ hh0(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return BasicText_androidKt.LocalBackgroundTextMeasurementExecutor$lambda$0();
            case 1:
                return j59.a;
            default:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassAnimationBackgroundValid$lambda$35());
        }
    }
}
