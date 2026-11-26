package defpackage;

import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt;
import androidx.compose.ui.text.SaversKt;
import androidx.paging.PagedList;
import com.posthog.PostHogEvent;
import com.posthog.surveys.SurveyMatchType;
import java.lang.ref.WeakReference;
import yads.e92;
import yads.gl1;
import yads.k45;
import yads.l20;
import yads.m20;
import yads.th1;
import yads.yq5;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sy2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ sy2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                PostHogEvent postHogEvent = (PostHogEvent) obj;
                postHogEvent.getClass();
                return postHogEvent.getUuid();
            case 1:
                return ImeEditCommand_androidKt.finishComposingText$lambda$0((TextFieldBuffer) obj);
            case 2:
                return Boolean.valueOf(PagedList.addWeakCallback$lambda$0((WeakReference) obj));
            case 3:
                return SaversKt.UrlAnnotationSaver$lambda$1(obj);
            case 4:
                ne4 ne4Var = (ne4) obj;
                ne4Var.getClass();
                df4 df4VarD = iq7.d(ne4Var);
                if (df4VarD != null) {
                    return df4VarD;
                }
                if (d31.n(ne4Var).isInterface()) {
                    return new da6(ne4Var);
                }
                return null;
            case 5:
                return SurveyMatchType.Companion.fromValue$lambda$0((SurveyMatchType) obj);
            case 6:
                return Boolean.valueOf(e92.g(obj));
            case 7:
                return Boolean.valueOf(gl1.f(obj));
            case 8:
                return Integer.valueOf(m20.a((l20) obj));
            case 9:
                return Boolean.valueOf(th1.b(obj));
            default:
                return yq5.a((k45) obj);
        }
    }
}
