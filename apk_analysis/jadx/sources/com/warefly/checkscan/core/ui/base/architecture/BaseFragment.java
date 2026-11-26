package com.warefly.checkscan.core.ui.base.architecture;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogFragment;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import defpackage.aa4;
import defpackage.ba8;
import defpackage.cp2;
import defpackage.fh5;
import defpackage.gh4;
import defpackage.i72;
import defpackage.j59;
import defpackage.ll3;
import defpackage.n7;
import defpackage.na8;
import defpackage.oi9;
import defpackage.oz1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseFragment<VB extends ViewBinding> extends fh5 implements BaseView {
    public String d;
    public final HashMap<String, cp2> e = new HashMap<>();

    public static final class a extends gh4 implements ll3<j59> {
        public final /* synthetic */ BaseFragment<VB> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(BaseFragment<VB> baseFragment) {
            super(0);
            this.f = baseFragment;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            View view = this.f.getView();
            if (view != null) {
                oz1.i(R.string.url_not_opened_message, view);
            }
            return j59.a;
        }
    }

    public void e(View view) {
        oi9.a(15, view, true);
    }

    public final void f(cp2 cp2Var, String str) {
        synchronized (cp2Var) {
            try {
                cp2 cp2Var2 = this.e.get("ShareCard");
                if (cp2Var2 != null) {
                    if (cp2Var2.isDisposed()) {
                        cp2Var2 = null;
                    }
                    if (cp2Var2 != null) {
                        cp2Var2.dispose();
                    }
                }
                this.e.put("ShareCard", cp2Var);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String g() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        aa4.j("fragmentScopeName");
        throw null;
    }

    public final ba8 h() {
        Fragment parentFragment = getParentFragment();
        Fragment parentFragment2 = parentFragment != null ? parentFragment.getParentFragment() : null;
        BaseFragment baseFragment = parentFragment2 instanceof BaseFragment ? (BaseFragment) parentFragment2 : null;
        if (baseFragment != null) {
            return new ba8(baseFragment.g());
        }
        Fragment parentFragment3 = getParentFragment();
        Fragment parentFragment4 = getParentFragment();
        throw new RuntimeException(na8.j("\n                            Parent fragment is " + parentFragment3 + ",\n                            GrandParent fragment is " + (parentFragment4 != null ? parentFragment4.getParentFragment() : null) + "\n                        "));
    }

    public abstract int i();

    public final ba8 j() {
        Fragment parentFragment = getParentFragment();
        BaseFragment baseFragment = parentFragment instanceof BaseFragment ? (BaseFragment) parentFragment : null;
        if (baseFragment != null) {
            return new ba8(baseFragment.g());
        }
        n7.g(na8.j("\n                            Parent fragment is " + getParentFragment() + "\n                        "));
        return null;
    }

    public boolean k() {
        return true;
    }

    public final void l(BaseDialogFragment<?> baseDialogFragment) {
        if (isAdded()) {
            baseDialogFragment.show(getParentFragmentManager(), baseDialogFragment.getClass().getSimpleName());
        }
    }

    public final void m(FullScreenDialog<?> fullScreenDialog) {
        if (isAdded()) {
            fullScreenDialog.show(getParentFragmentManager(), fullScreenDialog.getClass().getSimpleName());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(i(), viewGroup, false);
        viewInflate.getClass();
        return viewInflate;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public void onDestroy() {
        Iterator<Map.Entry<String, cp2>> it = this.e.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().dispose();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        e(view);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrl(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            oz1.c(context, str, new a(this));
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrlInCustomTab(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            i72.b(context, str);
        }
    }
}
