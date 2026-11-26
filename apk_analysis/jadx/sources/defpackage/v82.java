package defpackage;

import androidx.arch.core.util.Function;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.ui.text.input.ImeAction;
import androidx.paging.DataSource;
import com.posthog.PostHogEvent;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import yads.n8;
import yads.yl0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v82 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v82(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return DataSource.map$lambda$0((Function) obj2, (List) obj);
            case 1:
                InputStream inputStream = (InputStream) obj;
                inputStream.getClass();
                wd6 wd6VarB = ((nb6) obj2).b();
                return (PostHogEvent) wd6VarB.a.e(new BufferedReader(new InputStreamReader(inputStream, ha1.b), 8192), new bz2().b);
            case 2:
                return Boolean.valueOf(LegacyTextFieldState.onImeActionPerformedWithResult$lambda$0((LegacyTextFieldState) obj2, (ImeAction) obj));
            case 3:
                return Boolean.valueOf(TextAnnotatedStringNode.applySemantics$lambda$2((TextAnnotatedStringNode) obj2, ((Boolean) obj).booleanValue()));
            default:
                return yl0.b((bm3[]) obj2, (n8) obj);
        }
    }
}
