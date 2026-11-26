package yads;

import android.view.View;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class et3 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        View view = (View) obj2;
        View view2 = (View) obj;
        return defpackage.pp1.a(Float.valueOf(view.getMinimumHeight() / view.getMeasuredHeight()), Float.valueOf(view2.getMinimumHeight() / view2.getMeasuredHeight()));
    }
}
