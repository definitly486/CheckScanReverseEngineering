package defpackage;

import android.view.View;
import com.google.android.flexbox.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface pc3 {
    void a(View view, int i, int i2, a aVar);

    View d(int i);

    int e(int i, int i2, int i3);

    int f(View view);

    View g(int i);

    int getAlignContent();

    int getAlignItems();

    int getFlexDirection();

    int getFlexItemCount();

    List<a> getFlexLinesInternal();

    int getFlexWrap();

    int getLargestMainSize();

    int getMaxLine();

    int getPaddingBottom();

    int getPaddingEnd();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingStart();

    int getPaddingTop();

    int getSumOfCrossSize();

    int h(View view, int i, int i2);

    int i(int i, int i2, int i3);

    void j(a aVar);

    void k(int i, View view);

    boolean m();

    void setFlexLines(List<a> list);
}
