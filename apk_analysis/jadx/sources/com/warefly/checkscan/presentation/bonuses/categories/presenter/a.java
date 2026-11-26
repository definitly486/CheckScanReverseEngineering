package com.warefly.checkscan.presentation.bonuses.categories.presenter;

import android.os.Handler;
import android.os.Looper;
import defpackage.b36;
import defpackage.cs0;
import defpackage.ed0;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends gh4 implements nl3<b36<? extends Integer, ? extends List<? extends cs0>>, j59> {
    public final /* synthetic */ CategoriesPresenter f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(CategoriesPresenter categoriesPresenter) {
        super(1);
        this.f = categoriesPresenter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final j59 invoke(b36<? extends Integer, ? extends List<? extends cs0>> b36Var) {
        b36<? extends Integer, ? extends List<? extends cs0>> b36Var2 = b36Var;
        if (((Number) b36Var2.b).intValue() >= 10 && ((List) b36Var2.c).size() < 10) {
            new Handler(Looper.getMainLooper()).postDelayed(new ed0(this.f, 2), 10L);
        }
        return j59.a;
    }
}
