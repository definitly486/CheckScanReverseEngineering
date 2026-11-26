package com.my.target;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.StateSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.navigation.NavigationBarView;
import com.my.target.k;
import defpackage.l3a;
import defpackage.r95;
import defpackage.rk3;
import defpackage.s95;
import defpackage.y14;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends FrameLayout implements y0.a {
    public static final /* synthetic */ int l = 0;
    public final ListView b;
    public final View c;
    public final int d;
    public final int e;
    public final ArrayList f;
    public final String g;
    public final WeakReference h;
    public ImageButton i;
    public WeakReference j;
    public s95 k;

    public static class a extends BaseAdapter {
        public final ArrayList b;
        public final WeakReference c;

        public a(ArrayList arrayList, WeakReference weakReference) {
            this.b = arrayList;
            this.c = weakReference;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.b.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return this.b.get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(final int i, View view, ViewGroup viewGroup) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: f0a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    k.a aVar = this.b;
                    ArrayList arrayList = aVar.b;
                    int i2 = i;
                    if (i2 < 0 || i2 >= arrayList.size()) {
                        return;
                    }
                    k.b bVar = (k.b) arrayList.get(i2);
                    r95 r95Var = (r95) aVar.c.get();
                    if (r95Var != null && (bVar instanceof k.c)) {
                        r95Var.a(((k.c) bVar).a);
                    }
                }
            };
            b bVar = (b) this.b.get(i);
            if (!(bVar instanceof c)) {
                if (!(bVar instanceof d)) {
                    y14.u(null, "AdChoicesOptionsView: Unknown subtype of AdChoicesItem - ".concat(bVar.getClass().getName()));
                    return null;
                }
                String str = ((d) bVar).a;
                boolean z = i == 0;
                Context context = viewGroup.getContext();
                TextView textView = new TextView(context);
                int iB = (int) rk3.b(context, 1, 24.0f);
                int iB2 = (int) rk3.b(context, 1, 14.0f);
                int iB3 = (int) rk3.b(context, 1, 8.0f);
                textView.setClickable(false);
                textView.setEnabled(false);
                textView.setPadding(iB, iB2, iB, iB3);
                textView.setTextColor(-9602939);
                textView.setTypeface(null, 0);
                textView.setTextSize(13.0f);
                textView.setGravity(GravityCompat.START);
                textView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(-1);
                if (z) {
                    float fB = (int) rk3.b(context, 1, 8.0f);
                    gradientDrawable.setCornerRadii(new float[]{fB, fB, fB, fB, 0.0f, 0.0f, 0.0f, 0.0f});
                }
                textView.setBackground(gradientDrawable);
                textView.setText(str);
                return textView;
            }
            String str2 = ((c) bVar).a.a;
            boolean z2 = i == 0;
            Context context2 = viewGroup.getContext();
            Button button = new Button(context2);
            button.setOnClickListener(onClickListener);
            int iB4 = (int) rk3.b(context2, 1, 24.0f);
            button.setPadding(iB4, button.getPaddingTop(), iB4, button.getPaddingBottom());
            button.setAllCaps(false);
            button.setStateListAnimator(null);
            button.setLines(1);
            button.setTextColor(-16777216);
            button.setEllipsize(TextUtils.TruncateAt.END);
            button.setTypeface(null, 0);
            button.setGravity(NavigationBarView.ITEM_GRAVITY_START_CENTER);
            button.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
            GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, new int[]{-1, -1});
            GradientDrawable gradientDrawable3 = new GradientDrawable(orientation, new int[]{-3158065, -3158065});
            if (z2) {
                float fB2 = (int) rk3.b(context2, 1, 8.0f);
                float[] fArr = {fB2, fB2, fB2, fB2, 0.0f, 0.0f, 0.0f, 0.0f};
                gradientDrawable2.setCornerRadii(fArr);
                gradientDrawable3.setCornerRadii(fArr);
            }
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable3);
            int[] iArr = StateSet.WILD_CARD;
            stateListDrawable.addState(iArr, gradientDrawable2);
            button.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}, iArr}, new int[]{l3a.c(-3158065), l3a.c(-1)}), stateListDrawable, null));
            button.setText(str2);
            return button;
        }
    }

    public interface b {
    }

    public static class c implements b {
        public final s95 a;

        public c(s95 s95Var) {
            this.a = s95Var;
        }
    }

    public static class d implements b {
        public final String a;

        public d(String str) {
            this.a = str;
        }
    }

    public k(Context context, ArrayList arrayList, String str, WeakReference weakReference) {
        super(context);
        this.k = null;
        this.f = new ArrayList(arrayList);
        this.g = str;
        this.h = weakReference;
        this.d = (int) rk3.b(context, 1, 500.0f);
        this.e = (int) rk3.b(context, 1, 0.5f);
        ListView listView = new ListView(context);
        this.b = listView;
        listView.setSelector(R.color.transparent);
        listView.setDivider(null);
        addView(listView);
        View view = new View(context);
        this.c = view;
        view.setBackgroundColor(-5131855);
        addView(view);
    }

    @Override // com.my.target.y0.a
    public final void b(FrameLayout frameLayout) {
        frameLayout.addView(this, -1, -1);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 512.0f, 0.0f);
        translateAnimation.setDuration(300L);
        translateAnimation.setFillAfter(true);
        this.b.startAnimation(translateAnimation);
    }

    @Override // com.my.target.y0.a
    public final void m() {
        s95 s95Var;
        WeakReference weakReference = this.j;
        if (weakReference != null) {
            weakReference.clear();
            this.j = null;
            r95 r95Var = (r95) this.h.get();
            if (r95Var == null || (s95Var = this.k) == null) {
                return;
            }
            r95Var.a(s95Var);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingBottom;
        int measuredHeight;
        ListView listView = this.b;
        int iMax = Math.max((i3 - listView.getMeasuredWidth()) / 2, getPaddingLeft());
        ImageButton imageButton = this.i;
        View view = this.c;
        if (imageButton != null) {
            imageButton.layout(iMax, (i4 - getPaddingBottom()) - this.i.getMeasuredHeight(), this.i.getMeasuredWidth() + iMax, i4 - getPaddingBottom());
            paddingBottom = this.i.getTop();
            measuredHeight = view.getMeasuredHeight();
        } else {
            paddingBottom = i4 - getPaddingBottom();
            measuredHeight = view.getMeasuredHeight();
        }
        view.layout(iMax, paddingBottom - measuredHeight, view.getMeasuredWidth() + iMax, paddingBottom);
        listView.layout(iMax, view.getTop() - listView.getMeasuredHeight(), listView.getMeasuredWidth() + iMax, view.getTop());
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int measuredHeight;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int iMin = (Math.min(size, this.d) - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        ImageButton imageButton = this.i;
        if (imageButton != null) {
            imageButton.measure(iMakeMeasureSpec, paddingTop);
            measuredHeight = this.i.getMeasuredHeight();
        } else {
            measuredHeight = 0;
        }
        View view = this.c;
        int i3 = this.e;
        view.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        this.b.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec((paddingTop - i3) - measuredHeight, Integer.MIN_VALUE));
        setMeasuredDimension(size, size2);
    }
}
