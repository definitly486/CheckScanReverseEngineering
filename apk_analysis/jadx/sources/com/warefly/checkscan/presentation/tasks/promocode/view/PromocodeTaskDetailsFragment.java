package com.warefly.checkscan.presentation.tasks.promocode.view;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorBottomSheet;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessBottomSheet;
import com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.InfoBottomSheet;
import com.warefly.checkscan.tasks.databinding.FragmentPromocodeTaskDetailsBinding;
import defpackage.aa4;
import defpackage.ap5;
import defpackage.b06;
import defpackage.br6;
import defpackage.bs6;
import defpackage.cr6;
import defpackage.dn8;
import defpackage.e;
import defpackage.eu1;
import defpackage.f50;
import defpackage.gh4;
import defpackage.hn8;
import defpackage.j59;
import defpackage.jk1;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.no8;
import defpackage.nz1;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.pq6;
import defpackage.rq6;
import defpackage.tq6;
import defpackage.uf3;
import defpackage.up8;
import defpackage.vq6;
import defpackage.w73;
import defpackage.x07;
import defpackage.xq6;
import defpackage.y73;
import defpackage.yq6;
import defpackage.zd3;
import defpackage.ze4;
import defpackage.zl2;
import eightbitlab.com.blurview.BlurView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class PromocodeTaskDetailsFragment extends BaseFragment<FragmentPromocodeTaskDetailsBinding> implements PromocodeTaskDetailsView {
    public static final a m;
    public static final /* synthetic */ ze4<Object>[] n;
    public final int f = R.layout.fragment_promocode_task_details;
    public final ol4 g = new ol4(FragmentPromocodeTaskDetailsBinding.class);
    public OrdAdInfoDialog h;
    public TaskSuccessBottomSheet i;
    public TaskErrorBottomSheet j;
    public InfoBottomSheet k;
    public eu1 l;
    public PromocodeTaskDetailsPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PromocodeTaskDetailsFragment.this.o().onBackClicked();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PromocodeTaskDetailsFragment.this.o().loadContent();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ b06 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(b06 b06Var) {
            super(1);
            this.g = b06Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PromocodeTaskDetailsFragment.this.o().onOrdClicked(this.g);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(PromocodeTaskDetailsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/FragmentPromocodeTaskDetailsBinding;", 0);
        x07.a.getClass();
        n = new ze4[]{bs6Var};
        m = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentPromocodeTaskDetailsBinding n() {
        return (FragmentPromocodeTaskDetailsBinding) this.g.getValue(this, n[0]);
    }

    public final PromocodeTaskDetailsPresenter o() {
        PromocodeTaskDetailsPresenter promocodeTaskDetailsPresenter = this.presenter;
        if (promocodeTaskDetailsPresenter != null) {
            return promocodeTaskDetailsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        o().loadContent();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentPromocodeTaskDetailsBinding fragmentPromocodeTaskDetailsBindingN = n();
        RecyclerView recyclerView = fragmentPromocodeTaskDetailsBindingN.rvContent;
        eu1 eu1Var = new eu1(new com.warefly.checkscan.shared.infoBottomSheet.presentation.a(o()), new f50(yq6.c, 1), new vq6(o()), new cr6(br6.c), new ap5(rq6.c, 1), new pq6(o()), new dn8());
        this.l = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new xq6());
        recyclerView.setLayoutManager(new LinearLayoutManager(fragmentPromocodeTaskDetailsBindingN.getRoot().getContext(), 1, false));
        recyclerView.setItemAnimator(null);
        ImageView imageView = n().btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c()));
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrl(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            oz1.c(context, str, nz1.f);
        }
    }

    public final PromocodeTaskDetailsPresenter providePresenter() {
        return new PromocodeTaskDetailsPresenter(requireArguments().getInt("TASK_ID_KEY"), (uf3) n2.c(uf3.class, e.e(this), j(), null), (y73) m2.c(y73.class, e.e(this), null, null), (w73) m2.c(w73.class, e.e(this), null, null), (jk1) m2.c(jk1.class, e.e(this), null, null), (zl2) m2.c(zl2.class, e.e(this), null, null), (up8) m2.c(up8.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showDetails(tq6 tq6Var) {
        tq6Var.getClass();
        FragmentPromocodeTaskDetailsBinding fragmentPromocodeTaskDetailsBindingN = n();
        eu1 eu1Var = this.l;
        if (eu1Var != null) {
            eu1Var.submitList(tq6Var.b);
        }
        b06 b06Var = tq6Var.c;
        if (b06Var == null || !b06Var.b) {
            return;
        }
        BlurView blurView = fragmentPromocodeTaskDetailsBindingN.incldAdsBadge.blurView;
        blurView.getClass();
        ConstraintLayout root = fragmentPromocodeTaskDetailsBindingN.getRoot();
        root.getClass();
        zd3.h(blurView, root);
        BlurView root2 = fragmentPromocodeTaskDetailsBindingN.incldAdsBadge.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new d(b06Var)));
        BlurView root3 = fragmentPromocodeTaskDetailsBindingN.incldAdsBadge.getRoot();
        root3.getClass();
        root3.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.task_default_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showErrorState(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showInfoBottomSheet(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        Context context = getContext();
        if (context != null) {
            InfoBottomSheet infoBottomSheet = this.k;
            if (infoBottomSheet != null) {
                infoBottomSheet.dismiss();
            }
            InfoBottomSheet infoBottomSheet2 = new InfoBottomSheet(context, list, false);
            this.k = infoBottomSheet2;
            infoBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showOrdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.h;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.h = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showPromocodeCopied(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            Object systemService = context.getSystemService("clipboard");
            systemService.getClass();
            ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(context.getString(R.string.promocode_code_title), str));
            Toast.makeText(context, R.string.promocode_copied, 1).show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showTaskError(hn8 hn8Var) {
        hn8Var.getClass();
        TaskErrorBottomSheet taskErrorBottomSheet = this.j;
        if (taskErrorBottomSheet != null) {
            taskErrorBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            TaskErrorBottomSheet taskErrorBottomSheet2 = new TaskErrorBottomSheet(context, hn8Var);
            this.j = taskErrorBottomSheet2;
            taskErrorBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showTaskNotFinished(String str) {
        str.getClass();
        Toast.makeText(getContext(), str, 0).show();
    }

    @Override // com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView
    public final void showTaskSuccess(int i, no8 no8Var) {
        no8Var.getClass();
        TaskSuccessBottomSheet taskSuccessBottomSheet = this.i;
        if (taskSuccessBottomSheet != null) {
            taskSuccessBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            TaskSuccessBottomSheet taskSuccessBottomSheet2 = new TaskSuccessBottomSheet(context, i, no8Var);
            this.i = taskSuccessBottomSheet2;
            taskSuccessBottomSheet2.show();
        }
    }
}
