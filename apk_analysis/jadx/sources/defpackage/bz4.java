package defpackage;

import android.content.Context;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.warefly.checkscan.products.presentation.main.view.MainProductsFragment;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class bz4 implements TabLayoutMediator.TabConfigurationStrategy, eh8.a {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Iterable c;

    public /* synthetic */ bz4(Iterable iterable, Object obj) {
        this.b = obj;
        this.c = iterable;
    }

    @Override // eh8.a
    public Object execute() {
        r89 r89Var = (r89) this.b;
        r89Var.c.N(this.c);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
    public void onConfigureTab(TabLayout.Tab tab, int i) {
        MainProductsFragment mainProductsFragment = (MainProductsFragment) this.b;
        ArrayList arrayList = (ArrayList) this.c;
        MainProductsFragment.a aVar = MainProductsFragment.h;
        tab.getClass();
        Context context = mainProductsFragment.getContext();
        tab.setText(context != null ? context.getString(((Number) ((b36) arrayList.get(i)).b).intValue()) : null);
    }
}
