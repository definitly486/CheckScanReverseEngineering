package com.warefly.checkscan.presentation.landing.presenter;

import androidx.appcompat.app.AppCompatDelegate;
import com.tapjoy.TJAdUnitConstants;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;
import com.warefly.checkscan.presentation.landing.view.LandingView;
import com.wdullaer.materialdatetimepicker.date.DatePickerDialog;
import defpackage.a57;
import defpackage.aa4;
import defpackage.ag;
import defpackage.aj4;
import defpackage.b06;
import defpackage.b36;
import defpackage.cj4;
import defpackage.dj4;
import defpackage.fg2;
import defpackage.gh4;
import defpackage.he7;
import defpackage.i3;
import defpackage.ij4;
import defpackage.ik4;
import defpackage.ix;
import defpackage.j08;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jh;
import defpackage.jh4;
import defpackage.jj4;
import defpackage.kd;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.li4;
import defpackage.m05;
import defpackage.mh4;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nh4;
import defpackage.nl3;
import defpackage.p08;
import defpackage.qm3;
import defpackage.qr5;
import defpackage.qv6;
import defpackage.r08;
import defpackage.rj;
import defpackage.u96;
import defpackage.uf3;
import defpackage.ur6;
import defpackage.vk4;
import defpackage.wk4;
import defpackage.xi4;
import defpackage.yb8;
import defpackage.yi4;
import defpackage.zi4;
import defpackage.zq5;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class LandingPresenter extends BasePresenter<LandingView> implements jh4 {
    private final uf3 flowRouter;
    private final int landingId;
    private final aj4 landingInteractor;
    private final jf6 preferencesRepository;
    private final List<Integer> withoutOfferDialogIds;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            LandingView landingView = (LandingView) LandingPresenter.this.getViewState();
            if (landingView != null) {
                landingView.showPromoRegisterResult(ur6.b.a);
            }
            return j59.a;
        }
    }

    public static final /* synthetic */ class b extends qm3 implements nl3<ur6, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(ur6 ur6Var) {
            ur6 ur6Var2 = ur6Var;
            ur6Var2.getClass();
            ((LandingView) this.receiver).showPromoRegisterResult(ur6Var2);
            return j59.a;
        }
    }

    public static final /* synthetic */ class c extends qm3 implements nl3<aj4.a, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(aj4.a aVar) {
            aj4.a aVar2 = aVar;
            aVar2.getClass();
            ((LandingView) this.receiver).showContent(aVar2);
            return j59.a;
        }
    }

    public static final /* synthetic */ class d extends qm3 implements nl3<String, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            str2.getClass();
            ((LandingView) this.receiver).showImage(str2);
            return j59.a;
        }
    }

    public LandingPresenter(aj4 aj4Var, int i, uf3 uf3Var, jf6 jf6Var) {
        aj4Var.getClass();
        uf3Var.getClass();
        jf6Var.getClass();
        this.landingInteractor = aj4Var;
        this.landingId = i;
        this.flowRouter = uf3Var;
        this.preferencesRepository = jf6Var;
        this.withoutOfferDialogIds = u96.i(31, 88, Integer.valueOf(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
    }

    private final String formatDateDigit(int i) {
        return ((long) i) / 10 == 0 ? jh.b(i, CommonUrlParts.Values.FALSE_INTEGER) : String.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onUnselectedFieldClick$lambda$0(LandingPresenter landingPresenter, String str, DatePickerDialog datePickerDialog, int i, int i2, int i3) {
        String str2 = i + "-" + landingPresenter.formatDateDigit(i2 + 1) + "-" + landingPresenter.formatDateDigit(i3);
        aj4 aj4Var = landingPresenter.landingInteractor;
        aj4Var.getClass();
        str.getClass();
        List<wk4> listJ = aj4Var.e.j();
        if (listJ == null) {
            listJ = kx2.b;
        }
        ArrayList arrayList = new ArrayList(listJ);
        Iterator it = arrayList.iterator();
        int i4 = 0;
        while (true) {
            if (!it.hasNext()) {
                i4 = -1;
                break;
            } else if (aa4.e(((wk4) it.next()).id().toString(), str)) {
                break;
            } else {
                i4++;
            }
        }
        if (u96.f(arrayList).c(i4)) {
            Object obj = arrayList.get(i4);
            obj.getClass();
            vk4 vk4Var = (vk4) obj;
            arrayList.remove(i4);
            String str3 = vk4Var.a;
            boolean z = vk4Var.b;
            String str4 = vk4Var.c;
            boolean z2 = vk4Var.e;
            int i5 = vk4Var.f;
            str3.getClass();
            str4.getClass();
            arrayList.add(i4, new vk4(str3, z, str4, str2, z2, i5));
            aj4Var.b(arrayList);
        }
    }

    public final void offerRegistrationConfirm() {
        uf3 uf3Var = this.flowRouter;
        String str = null;
        ix ixVar = new ix(new AuthReason.Login(str, str, 7));
        uf3Var.getClass();
        uf3Var.c.d(ixVar);
    }

    @Override // defpackage.jh4
    public void onAgreementClick(String str) {
        str.getClass();
        this.landingInteractor.a(str);
    }

    public final void onBackClick() {
        this.flowRouter.i();
    }

    @Override // defpackage.jh4
    public void onCheckBoxClick(String str) {
        str.getClass();
        this.landingInteractor.a(str);
    }

    @Override // defpackage.jh4
    public void onDoActionButtonClick(int i) {
        b36 b36Var;
        new kd.i0.a(i, kd.q.RegisterForm).a();
        aj4 aj4Var = this.landingInteractor;
        List<wk4> listJ = aj4Var.e.j();
        if (listJ == null) {
            listJ = kx2.b;
        }
        ArrayList arrayList = new ArrayList(listJ);
        ArrayList<mh4> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (obj instanceof mh4) {
                arrayList2.add(obj);
            }
        }
        int iB = m05.b(kn1.q(arrayList2, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (mh4 mh4Var : arrayList2) {
            linkedHashMap.put(mh4Var.a, Boolean.valueOf(mh4Var.d));
        }
        ArrayList<yi4> arrayList3 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (obj2 instanceof yi4) {
                arrayList3.add(obj2);
            }
        }
        int iB2 = m05.b(kn1.q(arrayList3, 10));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(iB2 >= 16 ? iB2 : 16);
        for (yi4 yi4Var : arrayList3) {
            if (yi4Var.getType() == qv6.PHONE) {
                String strA = yi4Var.a();
                String strB = yi4Var.b();
                Pattern patternCompile = Pattern.compile("[\\s()\\-]");
                patternCompile.getClass();
                String str = new String();
                strB.getClass();
                String strReplaceAll = patternCompile.matcher(strB).replaceAll(str);
                strReplaceAll.getClass();
                b36Var = new b36(strA, strReplaceAll);
            } else {
                b36Var = new b36(yi4Var.a(), yi4Var.b());
            }
            linkedHashMap2.put(b36Var.b, b36Var.c);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap2);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (obj3 instanceof xi4) {
                arrayList4.add(obj3);
            }
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        for (Object obj4 : arrayList4) {
            String strD = ((xi4) obj4).d();
            Object arrayList5 = linkedHashMap4.get(strD);
            if (arrayList5 == null) {
                arrayList5 = new ArrayList();
                linkedHashMap4.put(strD, arrayList5);
            }
            ((List) arrayList5).add(obj4);
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap(m05.b(linkedHashMap4.size()));
        for (Map.Entry entry : linkedHashMap4.entrySet()) {
            Object key = entry.getKey();
            Iterable iterable = (Iterable) entry.getValue();
            ArrayList<xi4> arrayList6 = new ArrayList();
            for (Object obj5 : iterable) {
                if (aa4.e(((xi4) obj5).b(), TJAdUnitConstants.String.TRUE)) {
                    arrayList6.add(obj5);
                }
            }
            ArrayList arrayList7 = new ArrayList(kn1.q(arrayList6, 10));
            for (xi4 xi4Var : arrayList6) {
                arrayList7.add(xi4Var.a() + "=" + xi4Var.b());
            }
            linkedHashMap5.put(key, arrayList7);
        }
        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap5.entrySet()) {
            if (!((Collection) entry2.getValue()).isEmpty()) {
                linkedHashMap6.put(entry2.getKey(), entry2.getValue());
            }
        }
        LinkedHashMap linkedHashMap7 = new LinkedHashMap(m05.b(linkedHashMap6.size()));
        for (Map.Entry entry3 : linkedHashMap6.entrySet()) {
            linkedHashMap7.put(entry3.getKey(), entry3.getValue().toString());
        }
        linkedHashMap3.putAll(linkedHashMap7);
        mz7<a57<li4>> mz7VarA = aj4Var.a.a(new nh4(linkedHashMap, linkedHashMap3), i);
        zi4 zi4Var = new zi4(new dj4(aj4Var), 0);
        mz7VarA.getClass();
        r08 r08VarF = new p08(mz7VarA, zi4Var).i(ne7.c).f(rj.a());
        a aVar = new a();
        V viewState = getViewState();
        viewState.getClass();
        disposeOnDestroy(yb8.d(r08VarF, aVar, new b(1, viewState, LandingView.class, "showPromoRegisterResult", "showPromoRegisterResult(Lcom/warefly/checkscan/domain/entities/promotion/PromotionRegisterResult;)V", 0)), "onDoActionButtonClick");
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        LandingView landingView;
        super.onFirstViewAttach();
        if (!this.withoutOfferDialogIds.contains(Integer.valueOf(this.landingId)) && !this.preferencesRepository.G0() && (landingView = (LandingView) getViewState()) != null) {
            landingView.showOfferRegistrationDialog();
        }
        aj4 aj4Var = this.landingInteractor;
        mz7<jj4> mz7VarB = aj4Var.a.b(this.landingId);
        fg2 fg2Var = new fg2(new cj4(aj4Var), 3);
        mz7VarB.getClass();
        zq5 zq5Var = new zq5(new j08(mz7VarB, fg2Var));
        he7 he7Var = ne7.c;
        qr5 qr5VarE = zq5Var.g(he7Var).e(rj.a());
        V viewState = getViewState();
        viewState.getClass();
        disposeOnDestroy(yb8.h(qr5VarE, null, new c(1, viewState, LandingView.class, "showContent", "showContent(Lcom/warefly/checkscan/domain/interactor/landing/LandingInteractor$LandingContent;)V", 0), 3), "fetchScreenContent");
        qr5 qr5VarE2 = this.landingInteractor.f.g(he7Var).e(rj.a());
        V viewState2 = getViewState();
        viewState2.getClass();
        disposeOnDestroy(yb8.h(qr5VarE2, null, new d(1, viewState2, LandingView.class, "showImage", "showImage(Ljava/lang/String;)V", 0), 3), "imageUrl");
    }

    @Override // defpackage.jh4
    public void onImageClick(String str) {
        str.getClass();
        this.landingInteractor.a(str);
    }

    @Override // defpackage.jh4
    public void onLinkClicked(String str) {
        str.getClass();
        LandingView landingView = (LandingView) getViewState();
        if (landingView != null) {
            landingView.openCustomTab(str);
        }
    }

    @Override // defpackage.jh4
    public void onOrdClick(String str) {
        b06 b06Var;
        LandingView landingView;
        Object next;
        str.getClass();
        aj4 aj4Var = this.landingInteractor;
        aj4Var.getClass();
        List<wk4> listJ = aj4Var.e.j();
        if (listJ != null) {
            Iterator<T> it = listJ.iterator();
            do {
                if (!it.hasNext()) {
                    ag.g("Collection contains no element matching the predicate.");
                    return;
                }
                next = it.next();
            } while (!(next instanceof ij4));
            b06Var = ((ij4) next).a;
        } else {
            b06Var = null;
        }
        if (b06Var == null || (landingView = (LandingView) getViewState()) == null) {
            return;
        }
        landingView.showOfdDialog(b06Var);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0068  */
    @Override // defpackage.jh4
    public void onTextFieldChange(String str, String str2, int i) {
        str.getClass();
        aj4 aj4Var = this.landingInteractor;
        if (str2 == null) {
            str2 = "";
        }
        i3 i3Var = aj4Var.b;
        List<wk4> listJ = aj4Var.e.j();
        if (listJ == null) {
            listJ = kx2.b;
        }
        ArrayList arrayList = new ArrayList(listJ);
        Iterator it = arrayList.iterator();
        boolean zE = false;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (aa4.e(((wk4) it.next()).id().toString(), str)) {
                break;
            } else {
                i2++;
            }
        }
        if (u96.f(arrayList).c(i2)) {
            Object obj = arrayList.get(i2);
            obj.getClass();
            ik4 ik4Var = (ik4) obj;
            if (i == 3) {
                zE = i3Var.g.e(i3Var.f.g(new String(), str2));
            } else if (i != 4) {
                if (i == 208) {
                    zE = i3Var.c(str2);
                } else if (str2.length() > 0) {
                    zE = true;
                }
            } else if (str2.length() > 0) {
                zE = true;
            }
            arrayList.remove(i2);
            arrayList.add(i2, ik4.d(ik4Var, str2, zE, 471));
            aj4Var.b(arrayList);
        }
    }

    @Override // defpackage.jh4
    public void onUnselectedFieldClick(final String str) {
        str.getClass();
        LandingView landingView = (LandingView) getViewState();
        if (landingView != null) {
            landingView.showDatePicker(new DatePickerDialog.OnDateSetListener() { // from class: kj4
                @Override // com.wdullaer.materialdatetimepicker.date.DatePickerDialog.OnDateSetListener
                public final void onDateSet(DatePickerDialog datePickerDialog, int i, int i2, int i3) {
                    LandingPresenter.onUnselectedFieldClick$lambda$0(this.a, str, datePickerDialog, i, i2, i3);
                }
            });
        }
    }
}
