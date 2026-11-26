package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.util.DisplayMetrics;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.graphics.PathParser;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.navigation.NavigationBarView;
import com.my.target.d2;
import com.my.target.z1;
import defpackage.fo9;
import defpackage.ko9;
import defpackage.lfa;
import defpackage.w2a;
import defpackage.y14;
import defpackage.yu9;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class d2 extends FrameLayout implements View.OnClickListener {
    public static final /* synthetic */ int m = 0;
    public final RecyclerView b;
    public final e6 c;
    public final e6 d;
    public final com.my.target.b e;
    public final lfa f;
    public final w2a g;
    public final ko9 h;
    public final yu9 i;
    public final b j;
    public List k;
    public int l;

    public class a extends RecyclerView.OnScrollListener {
        public final /* synthetic */ b h;

        public a(b bVar) {
            this.h = bVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            b bVar = this.h;
            if (bVar == null || i != 0) {
                return;
            }
            d2 d2Var = d2.this;
            ((z1) bVar).h(d2Var.getVisibleCards(), d2Var);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
            int i3 = d2.m;
            d2.this.g();
            super.onScrolled(recyclerView, i, i2);
        }
    }

    public interface b {
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [ls9] */
    public d2(Context context, final b bVar) {
        super(context);
        this.j = bVar;
        this.l = context.getResources().getConfiguration().orientation;
        ko9 ko9Var = new ko9(context);
        this.h = ko9Var;
        this.i = new yu9(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        com.my.target.b bVar2 = new com.my.target.b(new y1.a() { // from class: ls9
            @Override // com.my.target.y1.a
            public final void a(fo9 fo9Var, int i, pfa pfaVar, View view) {
                int i2 = d2.m;
                d2.b bVar3 = bVar;
                if (bVar3 != null) {
                    ((z1) bVar3).g(fo9Var, i, pfaVar, this.b);
                }
            }
        });
        this.e = bVar2;
        int i = ko9.g;
        SparseIntArray sparseIntArray = ko9Var.a;
        w2a w2aVar = new w2a(sparseIntArray.get(i));
        this.g = w2aVar;
        lfa lfaVar = new lfa(sparseIntArray.get(ko9.n), sparseIntArray.get(i));
        this.f = lfaVar;
        RecyclerView recyclerView = new RecyclerView(context);
        recyclerView.setAdapter(bVar2);
        recyclerView.setClipToPadding(false);
        this.b = recyclerView;
        addView(recyclerView);
        e6 e6VarB = b(context, f(), 8388629);
        this.c = e6VarB;
        e6VarB.setOnClickListener(this);
        e6VarB.setVisibility(0);
        e6 e6VarB2 = b(context, e(), NavigationBarView.ITEM_GRAVITY_START_CENTER);
        this.d = e6VarB2;
        e6VarB2.setOnClickListener(this);
        e6VarB2.setVisibility(0);
        h();
        addView(e6VarB);
        addView(e6VarB2);
        if (this.l == 2) {
            recyclerView.removeItemDecoration(lfaVar);
            recyclerView.addItemDecoration(w2aVar);
        } else {
            recyclerView.removeItemDecoration(w2aVar);
            recyclerView.addItemDecoration(lfaVar);
        }
        recyclerView.addOnScrollListener(new a(bVar));
        c();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<fo9> getVisibleCards() {
        int iFindFirstCompletelyVisibleItemPosition;
        int iFindLastCompletelyVisibleItemPosition;
        ArrayList arrayList = new ArrayList();
        if (this.k != null) {
            RecyclerView.LayoutManager layoutManager = this.b.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
                iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
            } else {
                iFindFirstCompletelyVisibleItemPosition = 0;
                iFindLastCompletelyVisibleItemPosition = 0;
            }
            if (iFindFirstCompletelyVisibleItemPosition <= iFindLastCompletelyVisibleItemPosition && iFindFirstCompletelyVisibleItemPosition >= 0 && iFindLastCompletelyVisibleItemPosition < this.k.size()) {
                while (iFindFirstCompletelyVisibleItemPosition <= iFindLastCompletelyVisibleItemPosition) {
                    arrayList.add((fo9) this.k.get(iFindFirstCompletelyVisibleItemPosition));
                    iFindFirstCompletelyVisibleItemPosition++;
                }
            }
        }
        return arrayList;
    }

    public final e6 b(Context context, Bitmap bitmap, int i) {
        e6 e6Var = new e6(context);
        int i2 = ko9.D;
        ko9 ko9Var = this.h;
        int i3 = ko9Var.a.get(i2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
        int i4 = ko9.g;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i5 = sparseIntArray.get(i4);
        layoutParams.setMargins(i5, i5, i5, i5);
        layoutParams.gravity = i;
        e6Var.setLayoutParams(layoutParams);
        e6Var.a(bitmap, false);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(this.i.a.get(yu9.l));
        gradientDrawable.setStroke(sparseIntArray.get(ko9.e), -1);
        e6Var.setBackground(gradientDrawable);
        return e6Var;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void c() {
        FrameLayout.LayoutParams layoutParams;
        int i = this.l;
        RecyclerView recyclerView = this.b;
        ko9 ko9Var = this.h;
        if (i == 2) {
            int i2 = ko9.r;
            int i3 = ko9Var.a.get(i2);
            recyclerView.setPadding(i3, 0, i3, ko9Var.a.get(i2));
            layoutParams = new FrameLayout.LayoutParams(-2, -1);
            layoutParams.gravity = 1;
        } else {
            int i4 = ko9Var.a.get(ko9.k);
            recyclerView.setPadding(i4, 0, i4, 0);
            layoutParams = new FrameLayout.LayoutParams(-1, -1);
        }
        recyclerView.setLayoutParams(layoutParams);
        recyclerView.requestLayout();
    }

    public final void d() {
        e6 e6Var = this.c;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) e6Var.getLayoutParams();
        e6 e6Var2 = this.d;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) e6Var2.getLayoutParams();
        if (this.l == 2) {
            layoutParams.gravity = 8388629;
            layoutParams2.gravity = NavigationBarView.ITEM_GRAVITY_START_CENTER;
        } else {
            layoutParams.gravity = 81;
            layoutParams2.gravity = 49;
        }
        e6Var.a(f(), false);
        e6Var.setLayoutParams(layoutParams);
        e6Var2.a(e(), false);
        e6Var2.setLayoutParams(layoutParams2);
    }

    public final Bitmap e() {
        Bitmap bitmapCreateBitmap;
        Bitmap bitmapCreateBitmap2;
        int i = this.h.a.get(ko9.u);
        if (this.l == 2) {
            Context context = getContext();
            try {
                bitmapCreateBitmap2 = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            } catch (OutOfMemoryError unused) {
                y14.r(null, "BaseResources: Cannot build icon - OOME");
                bitmapCreateBitmap2 = null;
            }
            if (bitmapCreateBitmap2 == null) {
                return null;
            }
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData("M9.01777 12L15.1339 5.88388C15.622 5.39573 15.622 4.60427 15.1339 4.11612C14.6457 3.62796 13.8543 3.62796 13.3661 4.11612L6.36612 11.1161C5.87796 11.6043 5.87796 12.3957 6.36612 12.8839L13.3661 19.8839C13.8543 20.372 14.6457 20.372 15.1339 19.8839C15.622 19.3957 15.622 18.6043 15.1339 18.1161L9.01777 12Z");
            RectF rectF = new RectF();
            pathCreatePathFromPathData.computeBounds(rectF, true);
            Matrix matrix = new Matrix();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            matrix.postTranslate(-rectF.left, -rectF.top);
            float f = displayMetrics.density;
            matrix.postScale(f, f);
            float f2 = i;
            matrix.postTranslate((f2 - (rectF.width() * f)) / 2.0f, (f2 - (rectF.height() * f)) / 2.0f);
            pathCreatePathFromPathData.transform(matrix);
            Paint paint = new Paint();
            paint.setColor(-1);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.FILL);
            new Canvas(bitmapCreateBitmap2).drawPath(pathCreatePathFromPathData, paint);
            return bitmapCreateBitmap2;
        }
        Context context2 = getContext();
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError unused2) {
            y14.r(null, "BaseResources: Cannot build icon - OOME");
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            return null;
        }
        Path pathCreatePathFromPathData2 = PathParser.createPathFromPathData("M12 9.01777L5.88388 15.1339C5.39573 15.622 4.60427 15.622 4.11612 15.1339C3.62796 14.6457 3.62796 13.8543 4.11612 13.3661L11.1161 6.36612C11.6043 5.87796 12.3957 5.87796 12.8839 6.36612L19.8839 13.3661C20.372 13.8543 20.372 14.6457 19.8839 15.1339C19.3957 15.622 18.6043 15.622 18.1161 15.1339L12 9.01777Z");
        RectF rectF2 = new RectF();
        pathCreatePathFromPathData2.computeBounds(rectF2, true);
        Matrix matrix2 = new Matrix();
        DisplayMetrics displayMetrics2 = context2.getResources().getDisplayMetrics();
        matrix2.postTranslate(-rectF2.left, -rectF2.top);
        float f3 = displayMetrics2.density;
        matrix2.postScale(f3, f3);
        float f4 = i;
        matrix2.postTranslate((f4 - (rectF2.width() * f3)) / 2.0f, (f4 - (rectF2.height() * f3)) / 2.0f);
        pathCreatePathFromPathData2.transform(matrix2);
        Paint paint2 = new Paint();
        paint2.setColor(-1);
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.FILL);
        new Canvas(bitmapCreateBitmap).drawPath(pathCreatePathFromPathData2, paint2);
        return bitmapCreateBitmap;
    }

    public final Bitmap f() {
        Bitmap bitmapCreateBitmap;
        Bitmap bitmapCreateBitmap2;
        int i = this.h.a.get(ko9.u);
        if (this.l == 2) {
            Context context = getContext();
            try {
                bitmapCreateBitmap2 = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            } catch (OutOfMemoryError unused) {
                y14.r(null, "BaseResources: Cannot build icon - OOME");
                bitmapCreateBitmap2 = null;
            }
            if (bitmapCreateBitmap2 == null) {
                return null;
            }
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData("M14.9822 12L8.86612 5.88388C8.37796 5.39573 8.37796 4.60427 8.86612 4.11612C9.35427 3.62796 10.1457 3.62796 10.6339 4.11612L17.6339 11.1161C18.122 11.6043 18.122 12.3957 17.6339 12.8839L10.6339 19.8839C10.1457 20.372 9.35427 20.372 8.86612 19.8839C8.37796 19.3957 8.37796 18.6043 8.86612 18.1161L14.9822 12Z");
            RectF rectF = new RectF();
            pathCreatePathFromPathData.computeBounds(rectF, true);
            Matrix matrix = new Matrix();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            matrix.postTranslate(-rectF.left, -rectF.top);
            float f = displayMetrics.density;
            matrix.postScale(f, f);
            float f2 = i;
            matrix.postTranslate((f2 - (rectF.width() * f)) / 2.0f, (f2 - (rectF.height() * f)) / 2.0f);
            pathCreatePathFromPathData.transform(matrix);
            Paint paint = new Paint();
            paint.setColor(-1);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.FILL);
            new Canvas(bitmapCreateBitmap2).drawPath(pathCreatePathFromPathData, paint);
            return bitmapCreateBitmap2;
        }
        Context context2 = getContext();
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError unused2) {
            y14.r(null, "BaseResources: Cannot build icon - OOME");
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            return null;
        }
        Path pathCreatePathFromPathData2 = PathParser.createPathFromPathData("M12 14.9822L5.88388 8.86612C5.39573 8.37796 4.60427 8.37796 4.11612 8.86612C3.62796 9.35427 3.62796 10.1457 4.11612 10.6339L11.1161 17.6339C11.6043 18.122 12.3957 18.122 12.8839 17.6339L19.8839 10.6339C20.372 10.1457 20.372 9.35427 19.8839 8.86612C19.3957 8.37796 18.6043 8.37796 18.1161 8.86612L12 14.9822Z");
        RectF rectF2 = new RectF();
        pathCreatePathFromPathData2.computeBounds(rectF2, true);
        Matrix matrix2 = new Matrix();
        DisplayMetrics displayMetrics2 = context2.getResources().getDisplayMetrics();
        matrix2.postTranslate(-rectF2.left, -rectF2.top);
        float f3 = displayMetrics2.density;
        matrix2.postScale(f3, f3);
        float f4 = i;
        matrix2.postTranslate((f4 - (rectF2.width() * f3)) / 2.0f, (f4 - (rectF2.height() * f3)) / 2.0f);
        pathCreatePathFromPathData2.transform(matrix2);
        Paint paint2 = new Paint();
        paint2.setColor(-1);
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.FILL);
        new Canvas(bitmapCreateBitmap).drawPath(pathCreatePathFromPathData2, paint2);
        return bitmapCreateBitmap;
    }

    public final void g() {
        int iFindLastCompletelyVisibleItemPosition;
        int iFindFirstCompletelyVisibleItemPosition;
        List list = this.k;
        e6 e6Var = this.c;
        e6 e6Var2 = this.d;
        if (list == null || list.isEmpty()) {
            e6Var2.setVisibility(8);
            e6Var.setVisibility(8);
            return;
        }
        RecyclerView.LayoutManager layoutManager = this.b.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
            iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        } else {
            iFindLastCompletelyVisibleItemPosition = 0;
            iFindFirstCompletelyVisibleItemPosition = 0;
        }
        e6Var2.setVisibility(iFindFirstCompletelyVisibleItemPosition <= 0 ? 8 : 0);
        e6Var.setVisibility(iFindLastCompletelyVisibleItemPosition != this.e.i.size() + (-1) ? 0 : 8);
    }

    public e6 getMoreButton() {
        return this.c;
    }

    public final void h() {
        int i = this.l;
        RecyclerView recyclerView = this.b;
        if (i == 2) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        } else {
            recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 2, 1, false));
        }
        b bVar = this.j;
        if (bVar != null) {
            ((z1) bVar).h(getVisibleCards(), this);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.l;
        e6 e6Var = this.d;
        com.my.target.b bVar = this.e;
        e6 e6Var2 = this.c;
        RecyclerView recyclerView = this.b;
        if (i == 2) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager == null) {
                return;
            }
            int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
            int iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
            if (view == e6Var2 && iFindLastCompletelyVisibleItemPosition < bVar.i.size() - 1) {
                recyclerView.smoothScrollToPosition(iFindLastCompletelyVisibleItemPosition + 1);
                return;
            } else {
                if (view != e6Var || iFindFirstCompletelyVisibleItemPosition <= 0) {
                    return;
                }
                recyclerView.smoothScrollToPosition(iFindFirstCompletelyVisibleItemPosition - 1);
                return;
            }
        }
        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
        if (gridLayoutManager == null) {
            return;
        }
        int iFindLastCompletelyVisibleItemPosition2 = gridLayoutManager.findLastCompletelyVisibleItemPosition();
        int iFindFirstCompletelyVisibleItemPosition2 = gridLayoutManager.findFirstCompletelyVisibleItemPosition();
        int size = bVar.i.size();
        if (view == e6Var2 && iFindLastCompletelyVisibleItemPosition2 < size - 1) {
            recyclerView.smoothScrollToPosition(iFindLastCompletelyVisibleItemPosition2 + 1);
        } else {
            if (view != e6Var || iFindFirstCompletelyVisibleItemPosition2 <= 0) {
                return;
            }
            recyclerView.smoothScrollToPosition(iFindFirstCompletelyVisibleItemPosition2 - 1);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.l = configuration.orientation;
        h();
        int i = this.l;
        w2a w2aVar = this.g;
        lfa lfaVar = this.f;
        RecyclerView recyclerView = this.b;
        if (i == 2) {
            recyclerView.removeItemDecoration(lfaVar);
            recyclerView.addItemDecoration(w2aVar);
        } else {
            recyclerView.removeItemDecoration(w2aVar);
            recyclerView.addItemDecoration(lfaVar);
        }
        d();
        c();
        g();
    }

    public void setData(List<fo9> list) {
        com.my.target.b bVar = this.e;
        bVar.i = list;
        for (int i = 0; i < bVar.i.size(); i++) {
            bVar.notifyItemChanged(i, list.get(i));
        }
        this.k = list;
    }
}
