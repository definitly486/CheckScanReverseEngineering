package yads;

import android.view.View;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes3.dex */
public final class js4 extends PagerSnapHelper {
    public OrientationHelper a;
    public OrientationHelper b;

    public static int a(RecyclerView.LayoutManager layoutManager, View view, OrientationHelper orientationHelper) {
        float y;
        int height;
        int end;
        if (layoutManager.canScrollHorizontally()) {
            y = view.getX();
            height = view.getWidth() / 2;
        } else {
            y = view.getY();
            height = view.getHeight() / 2;
        }
        int i = (int) (y + height);
        if (layoutManager.getClipToPadding()) {
            end = (orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding();
        } else {
            end = orientationHelper.getEnd() / 2;
        }
        return i - end;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040  */
    @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
    public final int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
        OrientationHelper orientationHelperCreateVerticalHelper;
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            OrientationHelper orientationHelper = this.b;
            if (orientationHelper == null) {
                orientationHelperCreateVerticalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
                this.b = orientationHelperCreateVerticalHelper;
            } else {
                orientationHelperCreateVerticalHelper = defpackage.aa4.e(orientationHelper.getLayoutManager(), layoutManager) ? orientationHelper : null;
                if (orientationHelperCreateVerticalHelper == null) {
                    orientationHelperCreateVerticalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
                    this.b = orientationHelperCreateVerticalHelper;
                }
            }
            iArr[0] = a(layoutManager, view, orientationHelperCreateVerticalHelper);
            return iArr;
        }
        if (layoutManager.canScrollVertically()) {
            OrientationHelper orientationHelper2 = this.a;
            if (orientationHelper2 == null) {
                orientationHelperCreateVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
                this.a = orientationHelperCreateVerticalHelper;
            } else {
                orientationHelperCreateVerticalHelper = defpackage.aa4.e(orientationHelper2.getLayoutManager(), layoutManager) ? orientationHelper2 : null;
                if (orientationHelperCreateVerticalHelper == null) {
                    orientationHelperCreateVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
                    this.a = orientationHelperCreateVerticalHelper;
                }
            }
            iArr[1] = a(layoutManager, view, orientationHelperCreateVerticalHelper);
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
    public final int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        layoutManager.getClass();
        tg1 tg1Var = (tg1) layoutManager;
        if (tg1Var.j() != 0) {
            i = i2;
        } else if (layoutManager.getLayoutDirection() != 0) {
            i = -i;
        }
        int iH = i < 0 ? tg1Var.h() : tg1Var.k();
        if (iH != -1) {
            return iH;
        }
        int i3 = tg1Var.i();
        int iG = tg1Var.g();
        if (iG == i3) {
            if (iG == -1) {
                return 0;
            }
        } else if (i < 0) {
            return i3;
        }
        return iG;
    }
}
