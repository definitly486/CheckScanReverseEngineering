package defpackage;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.support.databinding.ItemSupportQuestionBinding;
import com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class hf8 extends vd9<jf8, ItemSupportQuestionBinding> {
    public final SupportQuestionsPresenter b;

    public interface a {
        void onQuestionActionClicked(String str);

        void onQuestionCollapseClicked(int i, boolean z);

        void onQuestionTextLinkClicked(String str);
    }

    public hf8(SupportQuestionsPresenter supportQuestionsPresenter) {
        super(gf8.c);
        this.b = supportQuestionsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof jf8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, jf8 jf8Var) throws Throwable {
        boolean z;
        List<? extends pz3> list;
        boolean z2;
        pz3 vd8Var;
        ItemSupportQuestionBinding itemSupportQuestionBinding = (ItemSupportQuestionBinding) viewBinding;
        jf8 jf8Var2 = jf8Var;
        itemSupportQuestionBinding.getClass();
        boolean z3 = jf8Var2.b;
        MaterialCardView root = itemSupportQuestionBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new if8(this, jf8Var2)));
        TextView textView = itemSupportQuestionBinding.tvTitle;
        ff8 ff8Var = jf8Var2.a;
        String str = ff8Var.b;
        ArrayList<wd8> arrayList = ff8Var.d;
        od8 od8Var = ff8Var.e;
        textView.setText(str);
        String str2 = ff8Var.c;
        if (str2 != null) {
            TextView textView2 = itemSupportQuestionBinding.tvDescription;
            textView2.getClass();
            at8.a(textView2, str2, new sr0(1, this.b, sv6.class, "onQuestionTextLinkClicked", "onQuestionTextLinkClicked(Ljava/lang/String;)V", 0, 1));
        }
        Throwable th = null;
        itemSupportQuestionBinding.btnAction.setText(od8Var != null ? od8Var.a : null);
        String str3 = od8Var != null ? od8Var.b : null;
        TextView textView3 = itemSupportQuestionBinding.btnAction;
        if (str3 != null) {
            textView3.getClass();
            textView3.setOnClickListener(new lb7(new s88(this, jf8Var2, 1)));
        } else {
            textView3.setOnClickListener(null);
        }
        RecyclerView.Adapter adapter = itemSupportQuestionBinding.rvChildren.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            if (z3) {
                list = kx2.b;
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (wd8 wd8Var : arrayList) {
                    Set<Integer> set = jf8Var2.c;
                    int i = wd8Var.a;
                    boolean zContains = set.contains(Integer.valueOf(i));
                    ar4 ar4VarE = u96.e();
                    Throwable th2 = th;
                    jf8 jf8Var3 = jf8Var2;
                    ar4VarE.add(new ae8(wd8Var.b, ff8Var.a, i, zContains));
                    if (zContains) {
                        Iterator it = wd8Var.c.iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            Object next = it.next();
                            int i3 = i2 + 1;
                            if (i2 < 0) {
                                u96.o();
                                throw th2;
                            }
                            nd8 nd8Var = (nd8) next;
                            Iterator it2 = it;
                            StringBuilder sb = new StringBuilder();
                            sb.append(i);
                            boolean z4 = z3;
                            sb.append("_block_");
                            sb.append(i2);
                            String string = sb.toString();
                            if (nd8Var instanceof nd8.b) {
                                vd8Var = new ee8(string, ((nd8.b) nd8Var).a);
                            } else {
                                if (!(nd8Var instanceof nd8.a)) {
                                    me0.e();
                                    return;
                                }
                                vd8Var = new vd8(string, ((nd8.a) nd8Var).a);
                            }
                            ar4VarE.add(vd8Var);
                            i2 = i3;
                            it = it2;
                            z3 = z4;
                        }
                        z2 = z3;
                        od8 od8Var2 = wd8Var.d;
                        if (od8Var2 != null) {
                            ar4VarE.add(new sd8(i + "_button", od8Var2));
                        }
                    } else {
                        z2 = z3;
                    }
                    nn1.s(u96.d(ar4VarE), arrayList2);
                    th = th2;
                    jf8Var2 = jf8Var3;
                    z3 = z2;
                }
                list = arrayList2;
            }
            z = z3;
            eu1Var.submitList(list);
        } else {
            z = z3;
        }
        TextView textView4 = itemSupportQuestionBinding.tvDescription;
        if (z) {
            textView4.getClass();
            textView4.setVisibility(8);
            RecyclerView recyclerView = itemSupportQuestionBinding.rvChildren;
            recyclerView.getClass();
            recyclerView.setVisibility(8);
            TextView textView5 = itemSupportQuestionBinding.btnAction;
            textView5.getClass();
            textView5.setVisibility(8);
            itemSupportQuestionBinding.ivOpen.setImageResource(R.drawable.ic_cross);
            return;
        }
        textView4.getClass();
        textView4.setVisibility((str2 == null || ta8.M(str2)) ? 8 : 0);
        RecyclerView recyclerView2 = itemSupportQuestionBinding.rvChildren;
        recyclerView2.getClass();
        recyclerView2.setVisibility(!arrayList.isEmpty() ? 0 : 8);
        TextView textView6 = itemSupportQuestionBinding.btnAction;
        textView6.getClass();
        textView6.setVisibility(od8Var != null ? 0 : 8);
        itemSupportQuestionBinding.ivOpen.setImageResource(R.drawable.ic_close_rounded_32);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemSupportQuestionBinding itemSupportQuestionBinding = (ItemSupportQuestionBinding) viewBinding;
        itemSupportQuestionBinding.getClass();
        RecyclerView recyclerView = itemSupportQuestionBinding.rvChildren;
        SupportQuestionsPresenter supportQuestionsPresenter = this.b;
        recyclerView.setAdapter(new eu1(new zd8(supportQuestionsPresenter), new de8(supportQuestionsPresenter), new ud8(td8.c), new rd8(supportQuestionsPresenter)));
        recyclerView.setLayoutManager(new LinearLayoutManager(itemSupportQuestionBinding.getRoot().getContext(), 1, false));
        recyclerView.setItemAnimator(null);
    }
}
