package defpackage;

import android.content.Context;
import androidx.compose.foundation.text.input.internal.CodepointTransformation;
import androidx.compose.foundation.text.input.internal.TransformedTextFieldState;
import yads.gf0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c29 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c29(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return TransformedTextFieldState.codepointTransformedText$lambda$0$0((TransformedTextFieldState) obj2, (CodepointTransformation) obj);
            default:
                return gf0.e((Context) obj2, (gf0) obj);
        }
    }
}
