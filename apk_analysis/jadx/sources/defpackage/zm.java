package defpackage;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.text.AnnotatedStringResolveInlineContentKt;
import androidx.compose.material3.SearchBarKt;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.AnnotatedString;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zm implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ zm(int i, int i2, Object obj, Object obj2) {
        this.b = i2;
        this.d = obj;
        this.e = obj2;
        this.c = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return AnnotatedStringResolveInlineContentKt.InlineChildren$lambda$1((AnnotatedString) this.d, (List) this.e, this.c, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return SearchBarKt.DetectClickFromInteractionSource$lambda$73((InteractionSource) this.d, (ll3) this.e, this.c, (Composer) obj, iIntValue2);
        }
    }
}
