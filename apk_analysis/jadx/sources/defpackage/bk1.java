package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class bk1 extends RecyclerView.ItemDecoration {
    public static final int f = Color.parseColor("#3085FF");
    public static final int g = Color.parseColor("#D6E7FF");
    public static final int h = pl2.e(16);
    public static final int i = pl2.e(12);
    public static final float j = pl2.d(4.0f);
    public static final float k = pl2.d(4.0f);
    public static final float l = pl2.d(12.0f);
    public final Paint e;

    public bk1() {
        Paint paint = new Paint();
        paint.setStrokeWidth(j);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        this.e = paint;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        Object adapter = recyclerView.getAdapter();
        if ((adapter instanceof x44) && ((x44) adapter).i() > 1) {
            rect.bottom = h;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int i2;
        canvas.getClass();
        recyclerView.getClass();
        state.getClass();
        super.onDrawOver(canvas, recyclerView, state);
        Object adapter = recyclerView.getAdapter();
        if ((adapter instanceof x44) && (i2 = ((x44) adapter).i()) > 1) {
            float f2 = k;
            float fMax = Math.max(0, i2 - 1);
            float f3 = l;
            float width = (recyclerView.getWidth() - ((fMax * f3) + (i2 * f2))) / 2.0f;
            recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
            float height = recyclerView.getHeight() - (h / 2.0f);
            int i3 = g;
            Paint paint = this.e;
            paint.setColor(i3);
            float f4 = f2 + f3;
            float f5 = width;
            for (int i4 = 0; i4 < i2; i4++) {
                canvas.drawCircle(f5, height, f2 / 2.0f, paint);
                f5 += f4;
            }
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            Integer numValueOf = linearLayoutManager != null ? Integer.valueOf(linearLayoutManager.findFirstCompletelyVisibleItemPosition()) : null;
            if ((numValueOf != null && numValueOf.intValue() == -1) || numValueOf == null) {
                return;
            }
            int iIntValue = numValueOf.intValue() % i2;
            paint.setColor(f);
            canvas.drawCircle(((f3 + f2) * iIntValue) + width, height, f2 / 2.0f, paint);
        }
    }
}
