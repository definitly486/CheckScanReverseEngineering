package yads;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.mobile.ads.R$id;
import defpackage.jp7;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public interface tg1 {
    cn1 a(int i);

    og1 a();

    void a(int i, int i2, id5 id5Var);

    void a(int i, id5 id5Var);

    void a(View view, int i, int i2, int i3, int i4);

    /* JADX WARN: Code duplicated, block: B:62:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:89:0x0139  */
    default void a(View view, int i, int i2, int i3, int i4, boolean z) {
        fs2 fs2Var;
        int i5;
        int i6;
        hg1 hg1Var;
        Object objA;
        hg1 hg1Var2;
        Object objA2;
        br0 br0Var;
        int iJ = j();
        int measuredWidth = (b().getMeasuredWidth() - b().getPaddingLeft()) - b().getPaddingRight();
        int measuredHeight = (b().getMeasuredHeight() - b().getPaddingTop()) - b().getPaddingBottom();
        if (iJ == 0 ? b().getMeasuredHeight() == 0 || measuredHeight == 0 || view.getMeasuredHeight() == 0 : iJ == 1 && (b().getMeasuredWidth() == 0 || measuredWidth == 0 || view.getMeasuredWidth() == 0)) {
            a(view, i, i2, i3, i4);
            if (z) {
                return;
            }
            d().add(view);
            return;
        }
        Integer num = (Integer) view.getTag(R$id.monetization_ads_divkit_div_gallery_item_index);
        cn1 cn1VarA = num != null ? a(num.intValue()) : null;
        p41 p41VarA = (cn1VarA == null || (br0Var = cn1VarA.a) == null) ? null : br0Var.a();
        if (cn1VarA == null || (fs2Var = cn1VarA.b) == null) {
            fs2Var = c().b;
        }
        as2 as2Var = a().j;
        if (iJ != 1) {
            i5 = 0;
        } else {
            as2 as2VarF = p41VarA != null ? p41VarA.f() : null;
            if (as2VarF == null || (objA2 = as2VarF.a(fs2Var)) == null) {
                hg1Var2 = (hg1) as2Var.a(fs2Var);
            } else {
                int iOrdinal = ((f11) objA2).ordinal();
                if (iOrdinal == 0) {
                    hg1Var2 = hg1.START;
                } else if (iOrdinal == 1) {
                    hg1Var2 = hg1.CENTER;
                } else if (iOrdinal == 2) {
                    hg1Var2 = hg1.END;
                } else if (iOrdinal == 3) {
                    hg1Var2 = hg1.START;
                } else {
                    if (iOrdinal != 4) {
                        defpackage.me0.e();
                        return;
                    }
                    hg1Var2 = hg1.END;
                }
            }
            i5 = measuredWidth - (i3 - i);
            int iOrdinal2 = hg1Var2.ordinal();
            if (iOrdinal2 == 0) {
                i5 = 0;
            } else if (iOrdinal2 == 1) {
                i5 /= 2;
            } else if (iOrdinal2 != 2) {
                defpackage.me0.e();
                return;
            }
        }
        if (iJ != 0) {
            i6 = 0;
        } else {
            as2 as2VarQ = p41VarA != null ? p41VarA.q() : null;
            if (as2VarQ == null || (objA = as2VarQ.a(fs2Var)) == null) {
                hg1Var = (hg1) as2Var.a(fs2Var);
            } else {
                int iOrdinal3 = ((h11) objA).ordinal();
                if (iOrdinal3 == 0) {
                    hg1Var = hg1.START;
                } else if (iOrdinal3 == 1) {
                    hg1Var = hg1.CENTER;
                } else if (iOrdinal3 != 2) {
                    if (iOrdinal3 != 3) {
                        defpackage.me0.e();
                        return;
                    }
                    hg1Var = hg1.START;
                } else {
                    hg1Var = hg1.END;
                }
            }
            i6 = measuredHeight - (i4 - i2);
            int iOrdinal4 = hg1Var.ordinal();
            if (iOrdinal4 == 0) {
                i6 = 0;
            } else if (iOrdinal4 == 1) {
                i6 /= 2;
            } else if (iOrdinal4 != 2) {
                defpackage.me0.e();
                return;
            }
        }
        a(view, i + i5, i2 + i6, i3 + i5, i4 + i6);
        a(view, false);
        if (z) {
            return;
        }
        d().remove(view);
    }

    RecyclerView b();

    default void b(int i, int i2, id5 id5Var) {
        RecyclerView recyclerViewB = b();
        if (!oh6.a(recyclerViewB) || recyclerViewB.isLayoutRequested()) {
            recyclerViewB.addOnLayoutChangeListener(new sg1(i, this, i2, id5Var));
            return;
        }
        if (i == 0) {
            if (j() != 0 || !oh6.b(b())) {
                i2 = -i2;
            }
            b().scrollBy(i2, i2);
            return;
        }
        b().scrollBy(-b().getScrollX(), -b().getScrollY());
        RecyclerView.LayoutManager layoutManager = b().getLayoutManager();
        View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(i) : null;
        while (viewFindViewByPosition == null && (b().canScrollVertically(1) || b().canScrollHorizontally(1))) {
            RecyclerView.LayoutManager layoutManager2 = b().getLayoutManager();
            if (layoutManager2 != null) {
                layoutManager2.requestLayout();
            }
            RecyclerView.LayoutManager layoutManager3 = b().getLayoutManager();
            viewFindViewByPosition = layoutManager3 != null ? layoutManager3.findViewByPosition(i) : null;
            if (viewFindViewByPosition != null) {
                break;
            } else {
                b().scrollBy(b().getWidth(), b().getHeight());
            }
        }
        if (viewFindViewByPosition != null) {
            int iOrdinal = id5Var.ordinal();
            if (iOrdinal == 0) {
                int iA = a(viewFindViewByPosition) - i2;
                if (oh6.b(b())) {
                    iA = -iA;
                }
                b().scrollBy(iA, iA);
                return;
            }
            if (iOrdinal != 1) {
                return;
            }
            int[] iArr = {0, 0};
            int[] iArr2 = {0, 0};
            b().getLocationOnScreen(iArr2);
            viewFindViewByPosition.getLocationOnScreen(iArr);
            b().scrollBy(((viewFindViewByPosition.getWidth() - b().getWidth()) / 2) + (iArr[0] - iArr2[0]), ((viewFindViewByPosition.getHeight() - b().getHeight()) / 2) + (iArr[1] - iArr2[1]));
        }
    }

    int c(View view);

    tt c();

    HashSet d();

    int e();

    RecyclerView.LayoutManager f();

    int g();

    int h();

    int i();

    int j();

    int k();

    default int b(View view) {
        return a(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    default int a(View view) {
        int marginStart;
        int paddingTop;
        if (j() == 0) {
            int width = oh6.b(view) ? b().getWidth() - view.getRight() : view.getLeft();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            marginStart = width - (layoutParams instanceof ViewGroup.MarginLayoutParams ? ((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart() : 0);
            paddingTop = b().getPaddingStart();
        } else {
            int top = view.getTop();
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            marginStart = top - (marginLayoutParams != null ? marginLayoutParams.topMargin : 0);
            paddingTop = b().getPaddingTop();
        }
        return marginStart - paddingTop;
    }

    /* JADX WARN: Multi-variable type inference failed */
    default void a(View view, boolean z) {
        View view2;
        tt ttVarC;
        int iC = c(view);
        if (iC == -1) {
            return;
        }
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup == null || (view2 = (View) jp7.l(ViewGroupKt.getChildren(viewGroup))) == 0) {
            return;
        }
        vq0 vq0Var = c().a;
        if (z) {
            br0 br0Var = (br0) vq0Var.w.get(view2);
            if (br0Var == null) {
                return;
            }
            wh1 wh1Var = view2 instanceof wh1 ? (wh1) view2 : null;
            if (wh1Var == null || (ttVarC = wh1Var.c()) == null) {
                return;
            }
            ((bj2) vq0Var.n.I.getValue()).a(ttVarC, view2, br0Var);
            return;
        }
        cn1 cn1VarA = a(iC);
        if (cn1VarA == null) {
            return;
        }
        bj2 bj2Var = (bj2) vq0Var.n.I.getValue();
        tt ttVarC2 = c();
        fs2 fs2Var = cn1VarA.b;
        if (!defpackage.aa4.e(ttVarC2.b, fs2Var)) {
            ttVarC2 = new tt(ttVarC2.a, fs2Var);
        }
        bj2Var.b(ttVarC2, view2, cn1VarA.a);
        vq0Var.w.put(view2, cn1VarA.a);
    }

    static int a(int i, int i2, int i3, int i4, int i5, boolean z) {
        int i6 = i - i3;
        if (i6 < 0) {
            i6 = 0;
        }
        if (i4 >= 0 && i4 <= Integer.MAX_VALUE) {
            return View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        if (i4 == -1) {
            if (z && i2 == 0) {
                return View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            return View.MeasureSpec.makeMeasureSpec(i6, i2);
        }
        if (i4 == -2) {
            if (i5 == Integer.MAX_VALUE) {
                return View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            return View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
        }
        if (i4 != -3) {
            return View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(i6, i5), Integer.MIN_VALUE);
        }
        if (i5 == Integer.MAX_VALUE) {
            return View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        return View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
    }
}
