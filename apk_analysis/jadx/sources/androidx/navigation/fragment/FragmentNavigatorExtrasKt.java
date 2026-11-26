package androidx.navigation.fragment;

import android.view.View;
import defpackage.b36;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentNavigatorExtrasKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final FragmentNavigator.Extras FragmentNavigatorExtras(b36<? extends View, String>... b36VarArr) {
        b36VarArr.getClass();
        FragmentNavigator.Extras.Builder builder = new FragmentNavigator.Extras.Builder();
        for (b36<? extends View, String> b36Var : b36VarArr) {
            builder.addSharedElement((View) b36Var.b, b36Var.c);
        }
        return builder.build();
    }
}
