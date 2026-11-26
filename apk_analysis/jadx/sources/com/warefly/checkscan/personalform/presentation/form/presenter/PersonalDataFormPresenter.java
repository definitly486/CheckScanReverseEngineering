package com.warefly.checkscan.personalform.presentation.form.presenter;

import androidx.media3.muxer.WebmConstants;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;
import com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.b36;
import defpackage.b4;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.ct4;
import defpackage.d66;
import defpackage.d76;
import defpackage.de3;
import defpackage.df3;
import defpackage.du4;
import defpackage.e02;
import defpackage.f56;
import defpackage.gh4;
import defpackage.hh4;
import defpackage.i66;
import defpackage.id3;
import defpackage.j56;
import defpackage.j59;
import defpackage.jf6;
import defpackage.k57;
import defpackage.kx2;
import defpackage.l56;
import defpackage.m66;
import defpackage.me0;
import defpackage.n56;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p56;
import defpackage.pg8;
import defpackage.pz3;
import defpackage.qb2;
import defpackage.qn1;
import defpackage.qr5;
import defpackage.r57;
import defpackage.r66;
import defpackage.rj;
import defpackage.rm3;
import defpackage.s56;
import defpackage.t57;
import defpackage.t66;
import defpackage.ta8;
import defpackage.tb7;
import defpackage.u56;
import defpackage.ue1;
import defpackage.w66;
import defpackage.x66;
import defpackage.x7;
import defpackage.y22;
import defpackage.y66;
import defpackage.yb8;
import defpackage.z68;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class PersonalDataFormPresenter extends BasePresenter<PersonalDataFormView> implements m66.a, l56.a, r66.a, p56.a, u56.a {
    private final boolean afterOnboarding;
    private final w66 interactor;
    private final d76 personalFormOutsideInteractor;
    private final jf6 preferencesRepository;
    private final i66 router;

    public static final class a extends gh4 implements nl3<b36<? extends Integer, ? extends String>, j59> {
        public a() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(b36<? extends Integer, ? extends String> b36Var) {
            b36<? extends Integer, ? extends String> b36Var2 = b36Var;
            int iIntValue = ((Number) b36Var2.b).intValue();
            String str = (String) b36Var2.c;
            PersonalDataFormPresenter personalDataFormPresenter = PersonalDataFormPresenter.this;
            if (iIntValue != 0) {
                av0.c(personalDataFormPresenter.getPresenterScope(), null, null, new com.warefly.checkscan.personalform.presentation.form.presenter.a(personalDataFormPresenter, iIntValue, str, null), 3);
            } else {
                personalDataFormPresenter.showCitySelection();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter$onFirstViewAttach$1", f = "PersonalDataFormPresenter.kt", l = {33}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PersonalDataFormPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object objF;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                PersonalDataFormPresenter personalDataFormPresenter = PersonalDataFormPresenter.this;
                w66 w66Var = personalDataFormPresenter.interactor;
                boolean z = personalDataFormPresenter.afterOnboarding;
                this.l = 1;
                if (!((List) w66Var.e.getValue()).isEmpty() || (objF = w66Var.f(z, this)) != a32Var) {
                    objF = j59.a;
                }
                if (objF == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter$onFirstViewAttach$2", f = "PersonalDataFormPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<List<? extends pz3>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = PersonalDataFormPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends pz3> list, e02<? super j59> e02Var) {
            return ((c) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List<? extends pz3> list = (List) this.l;
            PersonalDataFormView personalDataFormView = (PersonalDataFormView) PersonalDataFormPresenter.this.getViewState();
            if (personalDataFormView != null) {
                personalDataFormView.showItems(list);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter$onFirstViewAttach$3", f = "PersonalDataFormPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public /* synthetic */ boolean l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = PersonalDataFormPresenter.this.new d(e02Var);
            dVar.l = ((Boolean) obj).booleanValue();
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((d) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            boolean z = this.l;
            PersonalDataFormView personalDataFormView = (PersonalDataFormView) PersonalDataFormPresenter.this.getViewState();
            if (personalDataFormView != null) {
                personalDataFormView.setButtonEnabled(z);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter$onResume$1", f = "PersonalDataFormPresenter.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_MORE}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PersonalDataFormPresenter.this.new e(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((e) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                PersonalDataFormPresenter personalDataFormPresenter = PersonalDataFormPresenter.this;
                w66 w66Var = personalDataFormPresenter.interactor;
                boolean z = personalDataFormPresenter.afterOnboarding;
                this.l = 1;
                if (w66Var.h(z, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter$onSaveClicked$1", f = "PersonalDataFormPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<id3<? super w66.a>, e02<? super j59>, Object> {
        public f(e02<? super f> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PersonalDataFormPresenter.this.new f(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super w66.a> id3Var, e02<? super j59> e02Var) {
            return ((f) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ((PersonalDataFormView) PersonalDataFormPresenter.this.getViewState()).showSaveLoading(true);
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter$onSaveClicked$2", f = "PersonalDataFormPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<w66.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public g(e02<? super g> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            g gVar = PersonalDataFormPresenter.this.new g(e02Var);
            gVar.l = obj;
            return gVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(w66.a aVar, e02<? super j59> e02Var) {
            return ((g) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            PersonalDataFormView personalDataFormView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            w66.a aVar = (w66.a) this.l;
            boolean zE = aa4.e(aVar, w66.a.C0347a.a);
            PersonalDataFormPresenter personalDataFormPresenter = PersonalDataFormPresenter.this;
            if (zE) {
                PersonalDataFormView personalDataFormView2 = (PersonalDataFormView) personalDataFormPresenter.getViewState();
                if (personalDataFormView2 != null) {
                    personalDataFormView2.showSaveError();
                }
            } else if (aVar instanceof w66.a.b) {
                PersonalDataFormView personalDataFormView3 = (PersonalDataFormView) personalDataFormPresenter.getViewState();
                if (personalDataFormView3 != null) {
                    personalDataFormView3.showSaveSuccess(((w66.a.b) aVar).a);
                }
            } else if (aVar instanceof w66.a.c) {
                PersonalDataFormView personalDataFormView4 = (PersonalDataFormView) personalDataFormPresenter.getViewState();
                if (personalDataFormView4 != null) {
                    personalDataFormView4.showSaveSuccessFirstTime(((w66.a.c) aVar).a);
                }
            } else if (aa4.e(aVar, w66.a.d.a)) {
                com.warefly.checkscan.personalform.presentation.form.bottomSheet.a aVar2 = (com.warefly.checkscan.personalform.presentation.form.bottomSheet.a) personalDataFormPresenter.interactor.d.getValue();
                if (aVar2 != null && (personalDataFormView = (PersonalDataFormView) personalDataFormPresenter.getViewState()) != null) {
                    personalDataFormView.showOnboardingWarning(aVar2);
                }
            } else if (aa4.e(aVar, w66.a.e.a)) {
                personalDataFormPresenter.personalFormOutsideInteractor.b();
                personalDataFormPresenter.router.e();
            }
            ((PersonalDataFormView) personalDataFormPresenter.getViewState()).showSaveLoading(false);
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<du4, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(du4 du4Var) {
            du4 du4Var2 = du4Var;
            du4Var2.getClass();
            PersonalDataFormPresenter.this.getFirstClosestRegions(du4Var2);
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<Throwable, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            PersonalDataFormPresenter.this.showCitySelection();
            return j59.a;
        }
    }

    public PersonalDataFormPresenter(w66 w66Var, jf6 jf6Var, boolean z, i66 i66Var, d76 d76Var) {
        w66Var.getClass();
        jf6Var.getClass();
        i66Var.getClass();
        d76Var.getClass();
        this.interactor = w66Var;
        this.preferencesRepository = jf6Var;
        this.afterOnboarding = z;
        this.router = i66Var;
        this.personalFormOutsideInteractor = d76Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getFirstClosestRegions(du4 du4Var) {
        BasePresenter.disposeOnDestroy$default(this, yb8.f(this.personalFormOutsideInteractor.a().i(ne7.c).f(rj.a()), null, new a(), 1), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCitySelection$lambda$3(PersonalDataFormPresenter personalDataFormPresenter, Object obj) {
        obj.getClass();
        if ((obj instanceof String ? (String) obj : null) != null) {
            personalDataFormPresenter.interactor.d((String) obj);
        }
    }

    public final void onBackClicked() {
        com.warefly.checkscan.personalform.presentation.form.bottomSheet.a aVar = (com.warefly.checkscan.personalform.presentation.form.bottomSheet.a) this.interactor.d.getValue();
        if (!this.afterOnboarding || aVar == null) {
            this.router.a();
            return;
        }
        PersonalDataFormView personalDataFormView = (PersonalDataFormView) getViewState();
        if (personalDataFormView != null) {
            personalDataFormView.showOnboardingWarning(aVar);
        }
    }

    @Override // m66.a
    public void onChipClicked(j56 j56Var) {
        j56Var.getClass();
        w66 w66Var = this.interactor;
        w66Var.getClass();
        w66Var.c(j56Var);
        w66Var.a();
    }

    @Override // l56.a
    public void onCityChangeClicked() {
        if (this.preferencesRepository.I0()) {
            showCitySelection();
            return;
        }
        PersonalDataFormView personalDataFormView = (PersonalDataFormView) getViewState();
        if (personalDataFormView != null) {
            personalDataFormView.requestGeoPermission();
        }
        this.preferencesRepository.a0();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        Object value;
        Object value2;
        super.onDestroy();
        w66 w66Var = this.interactor;
        z68 z68Var = w66Var.e;
        do {
            value = z68Var.getValue();
        } while (!z68Var.a(value, kx2.b));
        z68 z68Var2 = w66Var.f;
        do {
            value2 = z68Var2.getValue();
            ((Boolean) value2).getClass();
        } while (!z68Var2.a(value2, Boolean.FALSE));
    }

    @Override // p56.a
    public void onDropDownClicked(s56.a aVar) {
        aVar.getClass();
        w66 w66Var = this.interactor;
        w66Var.getClass();
        w66Var.b(aVar);
        w66Var.a();
    }

    @Override // u56.a
    public void onEmailChangeClicked() {
        this.router.f();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        av0.c(getPresenterScope(), null, null, new b(null), 3);
        launchInPresenter(new df3(bf3.b(this.interactor.e), new c(null)));
        launchInPresenter(new df3(bf3.b(this.interactor.f), new d(null)));
    }

    public final void onLaterClicked(boolean z) {
        if (z) {
            this.router.b();
        } else {
            this.personalFormOutsideInteractor.b();
            this.router.e();
        }
    }

    public final void onOpenUrlClicked(String str) {
        str.getClass();
        PersonalDataFormView personalDataFormView = (PersonalDataFormView) getViewState();
        if (personalDataFormView != null) {
            personalDataFormView.openUrlInCustomTab(str);
        }
    }

    public final void onResume() {
        av0.c(getPresenterScope(), null, null, new e(null), 3);
    }

    public final void onSaveClicked() {
        w66 w66Var = this.interactor;
        boolean z = this.afterOnboarding;
        w66Var.getClass();
        launchInPresenter(new df3(new ce3(new de3(new tb7(new x66(w66Var, z, null)), new y66(3, null)), new f(null)), new g(null)));
    }

    /* JADX WARN: Code duplicated, block: B:59:0x010d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0121  */
    /* JADX WARN: Code duplicated, block: B:69:0x0124  */
    /* JADX WARN: Code duplicated, block: B:70:0x0162  */
    /* JADX WARN: Code duplicated, block: B:72:0x0172  */
    /* JADX WARN: Code duplicated, block: B:77:0x01ba A[LOOP:0: B:3:0x000e->B:77:0x01ba, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:86:0x01c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x01b6 A[SYNTHETIC] */
    @Override // r66.a
    public void onTextFieldChanged(String str, String str2, String str3) {
        int i2;
        boolean zMatches;
        boolean z;
        Object aVar;
        Object obj;
        boolean zBooleanValue;
        boolean z2;
        boolean z3;
        boolean z4;
        List<pz3> list;
        int i3;
        f56 f56Var;
        int i4;
        boolean z5;
        t66 d66Var;
        z68 z68Var;
        x7.b(str, str2, str3);
        w66 w66Var = this.interactor;
        w66Var.getClass();
        z68 z68Var2 = w66Var.e;
        while (true) {
            Object value = z68Var2.getValue();
            List list2 = (List) value;
            ArrayList arrayListV0 = qn1.v0(list2);
            Iterator it = list2.iterator();
            int i5 = 0;
            while (true) {
                i2 = -1;
                if (!it.hasNext()) {
                    i5 = -1;
                    break;
                }
                pz3 pz3Var = (pz3) it.next();
                if ((pz3Var instanceof f56) && aa4.e(((f56) pz3Var).d, str)) {
                    break;
                }
                i5++;
            }
            Object obj2 = arrayListV0.get(i5);
            obj2.getClass();
            f56 f56Var2 = (f56) obj2;
            List<pz3> list3 = f56Var2.e;
            int i6 = 0;
            for (pz3 pz3Var2 : list3) {
                if ((pz3Var2 instanceof t66) && aa4.e(((t66) pz3Var2).getKey(), str2)) {
                    i2 = i6;
                    break;
                }
                i6++;
            }
            pz3 pz3Var3 = list3.get(i2);
            pz3Var3.getClass();
            t66 t66Var = (t66) pz3Var3;
            String strK = t66Var.k();
            if (strK != null) {
                Pattern patternCompile = Pattern.compile(strK);
                patternCompile.getClass();
                zMatches = patternCompile.matcher(str3).matches();
            } else {
                zMatches = true;
            }
            boolean z6 = ta8.M(str3) && !ta8.M(t66Var.i());
            boolean z7 = t66Var instanceof n56;
            if (z7) {
                try {
                    String str4 = qb2.b.format(qb2.a.parse(str3));
                    str4.getClass();
                    ct4 ct4VarA = ct4.a.a(ct4.Companion, str4);
                    z = z7;
                    if (ct4VarA.b.getYear() >= 1930) {
                        try {
                            z2 = true;
                            try {
                                if (ct4VarA.b.getYear() <= Calendar.getInstance().get(1) - 4) {
                                    z3 = false;
                                }
                                aVar = Boolean.valueOf(z3);
                            } catch (Throwable th) {
                                th = th;
                                aVar = new k57.a(th);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            aVar = new k57.a(th);
                            obj = Boolean.TRUE;
                            if (aVar instanceof k57.a) {
                                aVar = obj;
                            }
                            zBooleanValue = ((Boolean) aVar).booleanValue();
                            if (zMatches) {
                                z4 = true;
                            } else {
                                z4 = true;
                            }
                            if (z) {
                                n56 n56Var = (n56) t66Var;
                                int i7 = i5;
                                boolean z8 = z4;
                                String str5 = n56Var.a;
                                boolean z9 = n56Var.c;
                                int i8 = i2;
                                boolean z10 = n56Var.e;
                                String str6 = n56Var.f;
                                String str7 = n56Var.g;
                                String str8 = n56Var.h;
                                String str9 = n56Var.i;
                                String str10 = n56Var.j;
                                String str11 = n56Var.k;
                                str5.getClass();
                                str6.getClass();
                                str8.getClass();
                                i4 = i8;
                                i3 = i7;
                                list = list3;
                                f56Var = f56Var2;
                                d66Var = new n56(str5, z8, z9, str3, z10, str6, str7, str8, str9, str10, str11);
                            } else {
                                list = list3;
                                i3 = i5;
                                f56Var = f56Var2;
                                i4 = i2;
                                z5 = z4;
                                if (t66Var instanceof d66) {
                                    me0.e();
                                    return;
                                }
                                d66 d66Var2 = (d66) t66Var;
                                String str12 = d66Var2.a;
                                boolean z11 = d66Var2.c;
                                boolean z12 = d66Var2.e;
                                String str13 = d66Var2.f;
                                String str14 = d66Var2.g;
                                String str15 = d66Var2.h;
                                String str16 = d66Var2.i;
                                String str17 = d66Var2.j;
                                String str18 = d66Var2.k;
                                str12.getClass();
                                str13.getClass();
                                str15.getClass();
                                d66Var = new d66(str12, z5, z11, str3, z12, str13, str14, str15, str16, str17, str18);
                            }
                            ArrayList arrayList = new ArrayList(list);
                            arrayList.set(i4, d66Var);
                            j59 j59Var = j59.a;
                            arrayListV0.set(i3, f56.d(f56Var, arrayList));
                            z68Var = z68Var2;
                            if (z68Var.a(value, arrayListV0)) {
                                w66Var.a();
                                return;
                            } else {
                                z68Var2 = z68Var;
                                w66Var = w66Var;
                            }
                        }
                        obj = Boolean.TRUE;
                        if (aVar instanceof k57.a) {
                            aVar = obj;
                        }
                        zBooleanValue = ((Boolean) aVar).booleanValue();
                    } else {
                        z2 = true;
                    }
                    z3 = z2;
                    aVar = Boolean.valueOf(z3);
                } catch (Throwable th3) {
                    th = th3;
                    z = z7;
                }
                obj = Boolean.TRUE;
                if (aVar instanceof k57.a) {
                    aVar = obj;
                }
                zBooleanValue = ((Boolean) aVar).booleanValue();
            } else {
                z = z7;
                zBooleanValue = false;
            }
            if (zMatches || z6 || zBooleanValue) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z) {
                n56 n56Var2 = (n56) t66Var;
                int i9 = i5;
                boolean z13 = z4;
                String str19 = n56Var2.a;
                boolean z14 = n56Var2.c;
                int i10 = i2;
                boolean z15 = n56Var2.e;
                String str20 = n56Var2.f;
                String str21 = n56Var2.g;
                String str22 = n56Var2.h;
                String str23 = n56Var2.i;
                String str110 = n56Var2.j;
                String str111 = n56Var2.k;
                str19.getClass();
                str20.getClass();
                str22.getClass();
                i4 = i10;
                i3 = i9;
                list = list3;
                f56Var = f56Var2;
                d66Var = new n56(str19, z13, z14, str3, z15, str20, str21, str22, str23, str110, str111);
            } else {
                list = list3;
                i3 = i5;
                f56Var = f56Var2;
                i4 = i2;
                z5 = z4;
                if (t66Var instanceof d66) {
                    me0.e();
                    return;
                }
                d66 d66Var3 = (d66) t66Var;
                String str112 = d66Var3.a;
                boolean z16 = d66Var3.c;
                boolean z17 = d66Var3.e;
                String str113 = d66Var3.f;
                String str114 = d66Var3.g;
                String str115 = d66Var3.h;
                String str116 = d66Var3.i;
                String str117 = d66Var3.j;
                String str118 = d66Var3.k;
                str112.getClass();
                str113.getClass();
                str115.getClass();
                d66Var = new d66(str112, z5, z16, str3, z17, str113, str114, str115, str116, str117, str118);
            }
            ArrayList arrayList2 = new ArrayList(list);
            arrayList2.set(i4, d66Var);
            j59 j59Var2 = j59.a;
            arrayListV0.set(i3, f56.d(f56Var, arrayList2));
            z68Var = z68Var2;
            if (z68Var.a(value, arrayListV0)) {
                w66Var.a();
                return;
            } else {
                z68Var2 = z68Var;
                w66Var = w66Var;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [e66] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void showCitySelection() {
        this.router.d(new t57() { // from class: e66
            @Override // defpackage.t57
            public final void onResult(Object obj) {
                PersonalDataFormPresenter.showCitySelection$lambda$3(this.a, obj);
            }
        });
        this.router.c();
    }

    public final void updateLocation() {
        qr5 qr5VarE = this.personalFormOutsideInteractor.c().g(ne7.c).e(rj.a());
        int i2 = 1;
        hh4 hh4Var = new hh4(new ue1(new h(), i2), new b4(new i(), i2), rm3.c);
        qr5VarE.a(hh4Var);
        BasePresenter.disposeOnDestroy$default(this, hh4Var, null, 1, null);
    }
}
