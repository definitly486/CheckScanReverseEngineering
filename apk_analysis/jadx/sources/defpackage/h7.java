package defpackage;

import android.content.Context;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.navigation.ActivityNavigator;
import yads.az1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h7 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ h7(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return ActivityNavigator.hostActivity$lambda$0((Context) obj);
            case 1:
                return Boolean.valueOf(AnnotatedStringKt.substringWithoutParagraphStyles$lambda$0((AnnotatedString.Annotation) obj));
            default:
                return Boolean.valueOf(az1.c(obj));
        }
    }
}
