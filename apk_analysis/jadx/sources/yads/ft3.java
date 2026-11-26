package yads;

import android.view.View;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class ft3 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        View view = (View) obj2;
        View view2 = (View) obj;
        return defpackage.pp1.a(Float.valueOf(view.getMinimumWidth() / view.getMeasuredWidth()), Float.valueOf(view2.getMinimumWidth() / view2.getMeasuredWidth()));
    }
}
