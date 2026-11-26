package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class fq4 extends RecyclerView.ItemDecoration {
    public final Paint e;
    public final Paint f;
    public final float g;

    public fq4(Context context) {
        Paint paint = new Paint(1);
        this.e = paint;
        Paint paint2 = new Paint(1);
        this.f = paint2;
        this.g = pl2.b(context, 8.0f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(ContextCompat.getColor(context, R.color.readilyBlue));
        paint.setStrokeWidth(pl2.b(context, 4.0f));
        paint2.setColor(ContextCompat.getColor(context, R.color.readilyBlue));
        paint2.setStrokeWidth(pl2.b(context, 2.0f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        Context context = recyclerView.getContext();
        context.getClass();
        rect.top = (int) pl2.b(context, 20.0f);
        Context context2 = recyclerView.getContext();
        context2.getClass();
        rect.left = (int) pl2.b(context2, 50.0f);
        Context context3 = recyclerView.getContext();
        context3.getClass();
        rect.right = (int) pl2.b(context3, 20.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        Canvas canvas2;
        canvas.getClass();
        recyclerView.getClass();
        state.getClass();
        super.onDraw(canvas, recyclerView, state);
        int childCount = recyclerView.getChildCount();
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        layoutManager.getClass();
        int i = 0;
        while (i < childCount) {
            View childAt = recyclerView.getChildAt(i);
            int leftDecorationWidth = layoutManager.getLeftDecorationWidth(childAt);
            int topDecorationHeight = layoutManager.getTopDecorationHeight(childAt);
            int childLayoutPosition = recyclerView.getChildLayoutPosition(childAt);
            float f = leftDecorationWidth / 2;
            float top = childAt.getTop() - topDecorationHeight;
            float top2 = childAt.getTop();
            float top3 = childAt.getTop();
            float f2 = this.g;
            float f3 = (2.0f * f2) + top3;
            float bottom = childAt.getBottom();
            canvas.drawCircle(f, childAt.getTop() + f2, f2, this.e);
            Paint paint = this.f;
            if (childLayoutPosition == 0) {
                canvas2 = canvas;
                canvas2.drawLine(f, f3, f, bottom, paint);
            } else {
                canvas2 = canvas;
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                adapter.getClass();
                if (childLayoutPosition == adapter.getItemCount() - 1) {
                    canvas2.drawLine(f, top, f, top2, paint);
                } else {
                    canvas2.drawLine(f, top, f, top2, paint);
                    canvas2.drawLine(f, f3, f, bottom, paint);
                }
            }
            i++;
            canvas = canvas2;
        }
    }
}
