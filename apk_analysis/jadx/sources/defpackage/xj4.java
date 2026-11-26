package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class xj4 extends RecyclerView.ItemDecoration {
    public final int e;
    public final fh8 f = nm4.b(c.f);
    public final fh8 g = nm4.b(a.f);
    public final int h = pl2.e(1);
    public final fh8 i = nm4.b(b.f);
    public final fh8 j = new fh8(new d());

    public static final class a extends gh4 implements ll3<Integer> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final Integer invoke() {
            return Integer.valueOf(pl2.e(8));
        }
    }

    public static final class b extends gh4 implements ll3<Paint> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final Paint invoke() {
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            return paint;
        }
    }

    public static final class c extends gh4 implements ll3<Integer> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final Integer invoke() {
            return Integer.valueOf(pl2.e(8));
        }
    }

    public static final class d extends gh4 implements ll3<Paint> {
        public d() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Paint invoke() {
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setStrokeWidth(xj4.this.h);
            return paint;
        }
    }

    public xj4(int i) {
        this.e = i;
    }

    public final int a() {
        return ((Number) this.f.getValue()).intValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        if (recyclerView.getChildViewHolder(view).getItemViewType() != this.e) {
            return;
        }
        rect.left = a() + a();
        fh8 fh8Var = this.g;
        rect.bottom = ((Number) fh8Var.getValue()).intValue();
        rect.top = ((Number) fh8Var.getValue()).intValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        Canvas canvas2;
        canvas.getClass();
        recyclerView.getClass();
        state.getClass();
        super.onDraw(canvas, recyclerView, state);
        int childCount = recyclerView.getChildCount();
        fh8 fh8Var = this.j;
        ((Paint) fh8Var.getValue()).setColor(recyclerView.getResources().getColor(R.color.grey));
        fh8 fh8Var2 = this.i;
        ((Paint) fh8Var2.getValue()).setColor(recyclerView.getResources().getColor(R.color.readilyBlue));
        int i = 0;
        while (i < childCount) {
            View childAt = recyclerView.getChildAt(i);
            if (recyclerView.getChildViewHolder(childAt).getItemViewType() == this.e) {
                canvas.drawCircle(recyclerView.getPaddingLeft() + (a() / 2), (a() / 2) + a() + childAt.getTop(), a() / 2.0f, (Paint) fh8Var2.getValue());
                float bottom = childAt.getBottom() + ((Number) this.g.getValue()).intValue();
                canvas2 = canvas;
                canvas2.drawLine(childAt.getX(), bottom, childAt.getX() + childAt.getWidth(), bottom, (Paint) fh8Var.getValue());
            } else {
                canvas2 = canvas;
            }
            i++;
            canvas = canvas2;
        }
    }
}
