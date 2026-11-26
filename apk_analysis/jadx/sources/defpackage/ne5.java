package defpackage;

import com.warefly.checkscan.products.presentation.flow.presenter.ProductsFlowPresenter;
import com.warefly.checkscan.products.presentation.flow.view.ProductsFlowFragment;
import com.warefly.checkscan.products.presentation.main.presenter.MainProductsPresenter;
import com.warefly.checkscan.products.presentation.main.view.MainProductsFragment;
import com.warefly.checkscan.products.presentation.product.presenter.ProductPresenter;
import com.warefly.checkscan.products.presentation.product.view.ProductFragment;
import com.warefly.checkscan.products.presentation.products.presenter.ProductsPresenter;
import com.warefly.checkscan.products.presentation.products.view.ProductsFragment;
import com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter;
import com.warefly.checkscan.products.presentation.selections.view.SelectionsFragment;
import com.warefly.checkscan.products.presentation.shop.presenter.ShopPresenter;
import com.warefly.checkscan.products.presentation.shop.view.ShopFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ne5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(ProductsFlowPresenter.class, new kq3(1));
        map.put(MainProductsPresenter.class, new j71(1));
        map.put(ProductPresenter.class, new ci6());
        map.put(ProductsPresenter.class, new tj6());
        map.put(SelectionsPresenter.class, new di1(1));
        map.put(ShopPresenter.class, new ls4(1));
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(ProductsFlowFragment.class, Arrays.asList(new of6<ProductsFlowFragment>() { // from class: com.warefly.checkscan.products.presentation.flow.view.ProductsFlowFragment$$PresentersBinder

            public class a extends pf6<ProductsFlowFragment> {
                @Override // defpackage.pf6
                public final void a(ProductsFlowFragment productsFlowFragment, ih5 ih5Var) {
                    productsFlowFragment.presenter = (ProductsFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ProductsFlowFragment productsFlowFragment) {
                    return productsFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ProductsFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ProductsFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(MainProductsFragment.class, Arrays.asList(new of6<MainProductsFragment>() { // from class: com.warefly.checkscan.products.presentation.main.view.MainProductsFragment$$PresentersBinder

            public class a extends pf6<MainProductsFragment> {
                @Override // defpackage.pf6
                public final void a(MainProductsFragment mainProductsFragment, ih5 ih5Var) {
                    mainProductsFragment.presenter = (MainProductsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(MainProductsFragment mainProductsFragment) {
                    return mainProductsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<MainProductsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", MainProductsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ProductFragment.class, Arrays.asList(new of6<ProductFragment>() { // from class: com.warefly.checkscan.products.presentation.product.view.ProductFragment$$PresentersBinder

            public class a extends pf6<ProductFragment> {
                @Override // defpackage.pf6
                public final void a(ProductFragment productFragment, ih5 ih5Var) {
                    productFragment.presenter = (ProductPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ProductFragment productFragment) {
                    return productFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ProductFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ProductPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ProductsFragment.class, Arrays.asList(new of6<ProductsFragment>() { // from class: com.warefly.checkscan.products.presentation.products.view.ProductsFragment$$PresentersBinder

            public class a extends pf6<ProductsFragment> {
                @Override // defpackage.pf6
                public final void a(ProductsFragment productsFragment, ih5 ih5Var) {
                    productsFragment.presenter = (ProductsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ProductsFragment productsFragment) {
                    return productsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ProductsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ProductsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(SelectionsFragment.class, Arrays.asList(new of6<SelectionsFragment>() { // from class: com.warefly.checkscan.products.presentation.selections.view.SelectionsFragment$$PresentersBinder

            public class a extends pf6<SelectionsFragment> {
                @Override // defpackage.pf6
                public final void a(SelectionsFragment selectionsFragment, ih5 ih5Var) {
                    selectionsFragment.presenter = (SelectionsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SelectionsFragment selectionsFragment) {
                    return selectionsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SelectionsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SelectionsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ShopFragment.class, Arrays.asList(new of6<ShopFragment>() { // from class: com.warefly.checkscan.products.presentation.shop.view.ShopFragment$$PresentersBinder

            public class a extends pf6<ShopFragment> {
                @Override // defpackage.pf6
                public final void a(ShopFragment shopFragment, ih5 ih5Var) {
                    shopFragment.presenter = (ShopPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ShopFragment shopFragment) {
                    return shopFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ShopFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ShopPresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(i9.class, new i9());
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
    }
}
