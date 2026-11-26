package com.my.target;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.l3a;
import defpackage.op9;

/* JADX INFO: loaded from: classes4.dex */
public class c0 extends RelativeLayout {
    public static final /* synthetic */ int e = 0;
    public final TextView b;
    public final View c;
    public String d;

    public interface a {
    }

    public c0(Context context) {
        super(context);
        TextView textView = new TextView(context);
        this.b = textView;
        textView.setTextColor(-1);
        textView.setTypeface(null, 1);
        textView.setTextSize(2, 20.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = (int) TypedValue.applyDimension(1, 8.0f, getContext().getResources().getDisplayMetrics());
        layoutParams.addRule(15);
        layoutParams.addRule(1, 256);
        addView(textView, layoutParams);
        setBackgroundColor(-7829368);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, (int) (l3a.a.a + 0.5f));
        layoutParams2.addRule(12);
        View view = new View(context);
        this.c = view;
        view.setBackgroundColor(-10066330);
        addView(view, layoutParams2);
        f6 f6Var = new f6(context);
        byte[] bArrDecode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAARNJREFUeNrs2osNgCAMhGFK3H/lGhcwKC30jmOD/1PkEc3d28mjt8OHAAQgAAEIQAACEMCO4ScDeBWEXuDJ+0kAXm069EJz3pkBRuKMFaBs/AqA0vHZAOXjMwEg4rMAYOIzAKDiowHg4iMBIOOjAGDjIwCg42cB4ONnACji/wLQxD/jSojfer7/+iB6QjzU6CfHr7oPoAAwvQGkCF9XAWNbBv98A0binBmACmFmFaBAmF0G4REi9gHQCFEbIViEyJ0gJEL0VhgOIeMsAIWQdRiCQcg8DUIgZB+HyyOsuA8ojbDqQqQswsobIQtAggZ4izT2KfAWS/uLzAgC7S8yUR9GaoAmAAEIQAACEIAABLBz3AIMAMj9LYGJKTxCAAAAAElFTkSuQmCC", 0);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = TypedValues.CycleType.TYPE_EASING;
        options.inTargetDensity = l3a.a.b;
        f6Var.a(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options), false);
        f6Var.setId(256);
        f6Var.setOnClickListener(new op9());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = (int) TypedValue.applyDimension(1, 5.0f, getContext().getResources().getDisplayMetrics());
        layoutParams3.addRule(15);
        layoutParams3.addRule(9);
        f6Var.setLayoutParams(layoutParams3);
        addView(f6Var);
    }

    public String getTitle() {
        return this.d;
    }

    public void setMainColor(int i) {
        setBackgroundColor(i);
    }

    public void setOnCloseClickListener(a aVar) {
    }

    public void setStripeColor(int i) {
        this.c.setBackgroundColor(i);
    }

    public void setTitle(String str) {
        this.d = str;
        this.b.setText(str);
    }

    public void setTitleColor(int i) {
        this.b.setTextColor(i);
    }
}
