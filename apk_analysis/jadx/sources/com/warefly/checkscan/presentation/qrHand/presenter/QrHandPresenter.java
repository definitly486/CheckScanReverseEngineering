package com.warefly.checkscan.presentation.qrHand.presenter;

import android.content.Context;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.qrHand.view.QrHandView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cl4;
import defpackage.df3;
import defpackage.e02;
import defpackage.f93;
import defpackage.fh8;
import defpackage.g17;
import defpackage.g93;
import defpackage.gh4;
import defpackage.hv6;
import defpackage.j59;
import defpackage.k57;
import defpackage.kv2;
import defpackage.ll3;
import defpackage.ne7;
import defpackage.nm4;
import defpackage.pb2;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.ra8;
import defpackage.rj;
import defpackage.ta8;
import defpackage.u96;
import defpackage.uf3;
import defpackage.ug7;
import defpackage.wc1;
import defpackage.wu6;
import defpackage.xg5;
import defpackage.yb8;
import defpackage.yg1;
import defpackage.yg7;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class QrHandPresenter extends BasePresenter<QrHandView> implements f93.c, f93.d, wc1 {
    private final cl4 calendarInstance$delegate;
    private final Context context;
    private final cl4 dateEmptyError$delegate;
    private final cl4 fdEmptyError$delegate;
    private final cl4 fdInvalidError$delegate;
    private final xg5<List<g93>> fieldValuesFlow;
    private final uf3 flowRouter;
    private final cl4 fnEmptyError$delegate;
    private final cl4 fnInvalidError$delegate;
    private final cl4 fpEmptyError$delegate;
    private final cl4 fpInvalidError$delegate;
    private final yg1 interactor;
    private Date selectedDate;
    private final cl4 sumEmptyError$delegate;
    private final Date today;

    public static final class a extends gh4 implements ll3<Calendar> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final Calendar invoke() {
            return Calendar.getInstance();
        }
    }

    public static final class b extends gh4 implements ll3<String> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return QrHandPresenter.this.context.getString(R.string.qr_manual_date_error);
        }
    }

    public static final class c extends gh4 implements ll3<String> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return QrHandPresenter.this.context.getString(R.string.qr_manual_fd_blank_error);
        }
    }

    public static final class d extends gh4 implements ll3<String> {
        public d() {
            super(0);
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return QrHandPresenter.this.context.getString(R.string.qr_manual_fd_invalid_error);
        }
    }

    public static final class e extends gh4 implements ll3<String> {
        public e() {
            super(0);
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return QrHandPresenter.this.context.getString(R.string.qr_manual_fn_blank_error);
        }
    }

    public static final class f extends gh4 implements ll3<String> {
        public f() {
            super(0);
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return QrHandPresenter.this.context.getString(R.string.qr_manual_fn_invalid_error);
        }
    }

    public static final class g extends gh4 implements ll3<String> {
        public g() {
            super(0);
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return QrHandPresenter.this.context.getString(R.string.qr_manual_fp_blank_error);
        }
    }

    public static final class h extends gh4 implements ll3<String> {
        public h() {
            super(0);
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return QrHandPresenter.this.context.getString(R.string.qr_manual_fp_invalid_error);
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.qrHand.presenter.QrHandPresenter$onFirstViewAttach$1", f = "QrHandPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class i extends pg8 implements bm3<List<? extends g93>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public i(e02<? super i> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            i iVar = QrHandPresenter.this.new i(e02Var);
            iVar.l = obj;
            return iVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends g93> list, e02<? super j59> e02Var) {
            return ((i) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List list = (List) this.l;
            QrHandView qrHandView = (QrHandView) QrHandPresenter.this.getViewState();
            if (qrHandView != null) {
                List<g93> list2 = list;
                boolean z = true;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    for (g93 g93Var : list2) {
                        if (g93Var.e || g93Var.f) {
                            z = false;
                            break;
                        }
                    }
                }
                qrHandView.handleSendButton(z);
            }
            return j59.a;
        }
    }

    public static final class j extends gh4 implements ll3<String> {
        public j() {
            super(0);
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return QrHandPresenter.this.context.getString(R.string.qr_manual_sum_error);
        }
    }

    public QrHandPresenter(uf3 uf3Var, yg1 yg1Var, Context context) {
        uf3Var.getClass();
        yg1Var.getClass();
        context.getClass();
        this.flowRouter = uf3Var;
        this.interactor = yg1Var;
        this.context = context;
        this.dateEmptyError$delegate = new fh8(new b());
        this.sumEmptyError$delegate = new fh8(new j());
        this.fnEmptyError$delegate = new fh8(new e());
        this.fdEmptyError$delegate = new fh8(new c());
        this.fpEmptyError$delegate = new fh8(new g());
        this.fnInvalidError$delegate = new fh8(new f());
        this.fdInvalidError$delegate = new fh8(new d());
        this.fpInvalidError$delegate = new fh8(new h());
        this.calendarInstance$delegate = nm4.b(a.f);
        this.today = Calendar.getInstance().getTime();
        int i2 = 118;
        this.fieldValuesFlow = px.a(u96.i(new g93(f93.a.a, null, 94), new g93(f93.h.a, new g17("^\\d+[,|.]\\d{2}$"), i2), new g93(f93.f.a, new g17("^\\d{16}"), i2), new g93(f93.e.a, new g17("^\\d{3,10}"), i2), new g93(f93.g.a, new g17("^\\d{8,10}"), i2)));
    }

    private final String formatQrString(Date date, String str, String str2, String str3, String str4) {
        pb2 pb2Var = pb2.a;
        date.getClass();
        pb2.a.getClass();
        String str5 = ((SimpleDateFormat) pb2.l.getValue()).format(date);
        str5.getClass();
        StringBuilder sbD = ad2.d("t=", str5, "&s=", formatSum(str), "&fn=");
        kv2.c(sbD, str2, "&i=", str3, "&fp=");
        sbD.append(str4);
        return sbD.toString();
    }

    private final String formatSum(String str) {
        return ra8.z(',', str, '.');
    }

    private final Calendar getCalendarInstance() {
        return (Calendar) this.calendarInstance$delegate.getValue();
    }

    private final String getDateEmptyError() {
        return (String) this.dateEmptyError$delegate.getValue();
    }

    private final String getFdEmptyError() {
        return (String) this.fdEmptyError$delegate.getValue();
    }

    private final String getFdInvalidError() {
        return (String) this.fdInvalidError$delegate.getValue();
    }

    private final String getFnEmptyError() {
        return (String) this.fnEmptyError$delegate.getValue();
    }

    private final String getFnInvalidError() {
        return (String) this.fnInvalidError$delegate.getValue();
    }

    private final String getFpEmptyError() {
        return (String) this.fpEmptyError$delegate.getValue();
    }

    private final String getFpInvalidError() {
        return (String) this.fpInvalidError$delegate.getValue();
    }

    private final String getSumEmptyError() {
        return (String) this.sumEmptyError$delegate.getValue();
    }

    public final void dateDialogDismiss() {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            qrHandView.handleDateHelperTextEnable(false);
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onDateClicked() {
        Object next;
        Object aVar;
        QrHandView qrHandView;
        Iterator<T> it = this.fieldValuesFlow.getValue().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!aa4.e(((g93) next).a, f93.a.a));
        g93 g93Var = (g93) next;
        String str = g93Var != null ? g93Var.c : null;
        try {
            Calendar calendarInstance = getCalendarInstance();
            Long lValueOf = str != null ? Long.valueOf(Long.parseLong(str)) : null;
            if (lValueOf == null) {
                throw new IllegalStateException("Required value was null.");
            }
            calendarInstance.setTime(new Date(lValueOf.longValue()));
            aVar = j59.a;
            if (!(aVar instanceof k57.a)) {
                QrHandView qrHandView2 = (QrHandView) getViewState();
                if (qrHandView2 != null) {
                    qrHandView2.showDatePicker();
                }
            }
            if (k57.a(aVar) != null && (qrHandView = (QrHandView) getViewState()) != null) {
                qrHandView.showDatePicker();
            }
            QrHandView qrHandView3 = (QrHandView) getViewState();
            if (qrHandView3 != null) {
                qrHandView3.handleDateError(new String(), false);
            }
            QrHandView qrHandView4 = (QrHandView) getViewState();
            if (qrHandView4 != null) {
                qrHandView4.handleDateHelperTextEnable(true);
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.wc1
    public void onDateSelected(Date date) {
        date.getClass();
        this.selectedDate = date;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.getClass();
        b36 b36Var = (calendar2.get(6) == calendar.get(6) && calendar2.get(1) == calendar.get(1)) ? new b36(Integer.valueOf(calendar2.get(11)), Integer.valueOf(calendar2.get(12))) : new b36(23, 59);
        int iIntValue = ((Number) b36Var.b).intValue();
        int iIntValue2 = ((Number) b36Var.c).intValue();
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            qrHandView.showTimePicker(iIntValue, iIntValue2);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(this.fieldValuesFlow, new i(null)));
    }

    public final void onFocusChanged(f93 f93Var, boolean z) {
        f93Var.getClass();
        if (z) {
            f93Var.b(this.fieldValuesFlow.getValue(), this);
        }
        if (f93Var.equals(f93.e.a)) {
            QrHandView qrHandView = (QrHandView) getViewState();
            if (qrHandView != null) {
                qrHandView.handleFdHelperTextEnable(z);
                return;
            }
            return;
        }
        if (f93Var.equals(f93.f.a)) {
            QrHandView qrHandView2 = (QrHandView) getViewState();
            if (qrHandView2 != null) {
                qrHandView2.handleFnHelperTextEnable(z);
                return;
            }
            return;
        }
        if (f93Var.equals(f93.g.a)) {
            QrHandView qrHandView3 = (QrHandView) getViewState();
            if (qrHandView3 != null) {
                qrHandView3.handleFpHelperTextEnable(z);
                return;
            }
            return;
        }
        if (!f93Var.equals(f93.h.a)) {
            f93Var.equals(f93.a.a);
            return;
        }
        QrHandView qrHandView4 = (QrHandView) getViewState();
        if (qrHandView4 != null) {
            qrHandView4.handleSumHelperTextEnable(z);
        }
    }

    public final void onHelperClick() {
        this.flowRouter.j(ug7.a);
    }

    public final void onRequestCheque() {
        Object aVar;
        List<g93> value = this.fieldValuesFlow.getValue();
        g93 g93Var = value.get(0);
        g93 g93Var2 = value.get(1);
        g93 g93Var3 = value.get(2);
        g93 g93Var4 = value.get(3);
        g93 g93Var5 = value.get(4);
        try {
            aVar = new Date(Long.parseLong(g93Var.c));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        Date date = (Date) aVar;
        if (date == null) {
            return;
        }
        hv6 hv6VarA = wu6.b(wu6.a, formatQrString(date, g93Var2.b, g93Var3.b, g93Var4.b, g93Var5.b)).a();
        this.interactor.a(hv6VarA);
        disposeOnTermination(yb8.g(this.interactor.c(hv6VarA).i(ne7.c).f(rj.a()), null, null, 3), "onRequestCheque");
        this.flowRouter.f(yg7.a);
    }

    public final void onTextChanged(CharSequence charSequence, f93 f93Var) {
        List<g93> value;
        f93Var.getClass();
        xg5<List<g93>> xg5Var = this.fieldValuesFlow;
        do {
            value = xg5Var.getValue();
        } while (!xg5Var.a(value, f93Var.a(value, (charSequence == null || ta8.M(charSequence)) ? new String() : charSequence.toString(), this)));
    }

    public final void onTimeSelected(int i2, int i3) {
        Object aVar;
        List<g93> value;
        ArrayList arrayList;
        Date date = this.selectedDate;
        if (date != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.set(11, i2);
            calendar.set(12, i3);
            Date time = calendar.getTime();
            try {
                pb2 pb2Var = pb2.a;
                time.getClass();
                pb2Var.getClass();
                aVar = pb2.i(time, true);
                if (aVar == null) {
                    aVar = ((SimpleDateFormat) pb2.f.getValue()).format(time);
                    aVar.getClass();
                }
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (!(aVar instanceof k57.a)) {
                String str = (String) aVar;
                QrHandView qrHandView = (QrHandView) getViewState();
                if (qrHandView != null) {
                    qrHandView.showSelectedDate(str);
                }
                QrHandView qrHandView2 = (QrHandView) getViewState();
                if (qrHandView2 != null) {
                    qrHandView2.changeFocusAndShowKeyboard();
                }
            }
            xg5<List<g93>> xg5Var = this.fieldValuesFlow;
            do {
                value = xg5Var.getValue();
                List<g93> list = value;
                String strValueOf = String.valueOf(time.getTime());
                list.getClass();
                strValueOf.getClass();
                arrayList = new ArrayList(list);
                Iterator it = arrayList.iterator();
                int i4 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i4 = -1;
                        break;
                    } else if (aa4.e(((g93) it.next()).a, f93.a.a)) {
                        break;
                    } else {
                        i4++;
                    }
                }
                arrayList.set(i4, g93.a((g93) arrayList.get(i4), null, strValueOf, false, false, 123));
            } while (!xg5Var.a(value, arrayList));
        }
    }

    @Override // f93.c
    public void showBlankDateError(boolean z) {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            String dateEmptyError = getDateEmptyError();
            dateEmptyError.getClass();
            qrHandView.handleDateError(dateEmptyError, z);
        }
    }

    @Override // f93.c
    public void showBlankFdError(boolean z) {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            String fdEmptyError = getFdEmptyError();
            fdEmptyError.getClass();
            qrHandView.handleFdError(fdEmptyError, z);
        }
    }

    @Override // f93.c
    public void showBlankFnError(boolean z) {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            String fnEmptyError = getFnEmptyError();
            fnEmptyError.getClass();
            qrHandView.handleFnError(fnEmptyError, z);
        }
    }

    @Override // f93.c
    public void showBlankFpError(boolean z) {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            String fpEmptyError = getFpEmptyError();
            fpEmptyError.getClass();
            qrHandView.handleFpError(fpEmptyError, z);
        }
    }

    @Override // f93.c
    public void showBlankSumError(boolean z) {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            String sumEmptyError = getSumEmptyError();
            sumEmptyError.getClass();
            qrHandView.handleSumError(sumEmptyError, z);
        }
    }

    @Override // f93.d
    public void showInvalidFdError(boolean z) {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            String fdInvalidError = getFdInvalidError();
            fdInvalidError.getClass();
            qrHandView.handleFdError(fdInvalidError, z);
        }
    }

    @Override // f93.d
    public void showInvalidFnError(boolean z) {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            String fnInvalidError = getFnInvalidError();
            fnInvalidError.getClass();
            qrHandView.handleFnError(fnInvalidError, z);
        }
    }

    @Override // f93.d
    public void showInvalidFpError(boolean z) {
        QrHandView qrHandView = (QrHandView) getViewState();
        if (qrHandView != null) {
            String fpInvalidError = getFpInvalidError();
            fpInvalidError.getClass();
            qrHandView.handleFpError(fpInvalidError, z);
        }
    }

    @Override // f93.d
    public void showInvalidSumError(boolean z) {
        showBlankSumError(z);
    }
}
