package com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.xg5;
import defpackage.y68;
import defpackage.y74;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public final class InputTimePickerPresenter extends BasePresenter<InputTimePickerView> {
    private final int maxHour;
    private final int maxMinutes;
    private final xg5<a> state = px.a(new a(null, null));

    @bd2(c = "com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.presenter.InputTimePickerPresenter$subscribeOnTimeState$1", f = "InputTimePickerPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = InputTimePickerPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(a aVar, e02<? super j59> e02Var) {
            return ((b) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            a aVar = (a) this.l;
            Integer num = aVar.a;
            Integer num2 = aVar.b;
            InputTimePickerPresenter inputTimePickerPresenter = InputTimePickerPresenter.this;
            InputTimePickerView inputTimePickerView = (InputTimePickerView) inputTimePickerPresenter.getViewState();
            if (inputTimePickerView != null) {
                inputTimePickerView.enableSelectButton(inputTimePickerPresenter.validateHour(num) && inputTimePickerPresenter.validateMinutes(num2));
            }
            return j59.a;
        }
    }

    public InputTimePickerPresenter(int i, int i2) {
        this.maxHour = i;
        this.maxMinutes = i2;
    }

    private final void checkIfMinutesShouldBeSetMaxMinutes() {
        a value;
        Integer num = this.state.getValue().b;
        Integer num2 = this.state.getValue().a;
        if (num2 == null || num == null || num.intValue() <= this.maxMinutes) {
            return;
        }
        if (num2.intValue() == this.maxHour) {
            String timeUnit = formatTimeUnit(this.maxMinutes);
            InputTimePickerView inputTimePickerView = (InputTimePickerView) getViewState();
            if (inputTimePickerView != null) {
                inputTimePickerView.setMinutes(timeUnit);
            }
            xg5<a> xg5Var = this.state;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, a.a(value, null, Integer.valueOf(this.maxMinutes), 1)));
        }
    }

    private final String formatSingleDigitTimeUnit(int i) {
        return jh.b(i, CommonUrlParts.Values.FALSE_INTEGER);
    }

    private final String formatTimeUnit(int i) {
        return (i < 0 || i >= 10) ? String.valueOf(i) : formatSingleDigitTimeUnit(i);
    }

    private final void initialState() {
        a value;
        Integer numValueOf;
        Integer numValueOf2;
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(11);
        int i2 = calendar.get(12);
        xg5<a> xg5Var = this.state;
        do {
            value = xg5Var.getValue();
            numValueOf = Integer.valueOf(i);
            numValueOf2 = Integer.valueOf(i2);
            value.getClass();
        } while (!xg5Var.a(value, new a(numValueOf, numValueOf2)));
        String timeUnit = formatTimeUnit(i);
        String timeUnit2 = formatTimeUnit(i2);
        InputTimePickerView inputTimePickerView = (InputTimePickerView) getViewState();
        if (inputTimePickerView != null) {
            inputTimePickerView.setHour(timeUnit);
        }
        InputTimePickerView inputTimePickerView2 = (InputTimePickerView) getViewState();
        if (inputTimePickerView2 != null) {
            inputTimePickerView2.setMinutes(timeUnit2);
        }
    }

    private final void subscribeOnTimeState() {
        launchInPresenter(new df3(this.state, new b(null)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean validateHour(Integer num) {
        return num != null && new y74(0, 23, 1).c(num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean validateMinutes(Integer num) {
        return num != null && new y74(0, 59, 1).c(num.intValue());
    }

    public final void checkHourZeroShouldBeAdded() {
        InputTimePickerView inputTimePickerView;
        Integer num = this.state.getValue().a;
        if (num == null || (inputTimePickerView = (InputTimePickerView) getViewState()) == null) {
            return;
        }
        inputTimePickerView.setHour(formatTimeUnit(num.intValue()));
    }

    public final void checkMinutesZeroShouldBeAdded() {
        InputTimePickerView inputTimePickerView;
        Integer num = this.state.getValue().b;
        if (num == null || (inputTimePickerView = (InputTimePickerView) getViewState()) == null) {
            return;
        }
        inputTimePickerView.setMinutes(formatTimeUnit(num.intValue()));
    }

    public final y68<a> getTimeState() {
        return bf3.b(this.state);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        subscribeOnTimeState();
        initialState();
    }

    public final void onHourChanged(Integer num) {
        a value;
        xg5<a> xg5Var = this.state;
        do {
            value = xg5Var.getValue();
        } while (!xg5Var.a(value, a.a(value, num, null, 2)));
        checkIfMinutesShouldBeSetMaxMinutes();
    }

    public final void onMinuteChange(Integer num) {
        a value;
        xg5<a> xg5Var = this.state;
        do {
            value = xg5Var.getValue();
        } while (!xg5Var.a(value, a.a(value, null, num, 1)));
    }

    public final void onSelectTimeClicked() {
        a value = this.state.getValue();
        Integer num = value.a;
        Integer num2 = value.b;
        if (num == null || num2 == null) {
            return;
        }
        InputTimePickerView inputTimePickerView = (InputTimePickerView) getViewState();
        if (inputTimePickerView != null) {
            inputTimePickerView.sendSelectedTime(value.a.intValue(), num2.intValue());
        }
        InputTimePickerView inputTimePickerView2 = (InputTimePickerView) getViewState();
        if (inputTimePickerView2 != null) {
            inputTimePickerView2.dismissDialog();
        }
    }

    public static final class a {
        public final Integer a;
        public final Integer b;

        public a(Integer num, Integer num2) {
            this.a = num;
            this.b = num2;
        }

        public static a a(a aVar, Integer num, Integer num2, int i) {
            if ((i & 1) != 0) {
                num = aVar.a;
            }
            if ((i & 2) != 0) {
                num2 = aVar.b;
            }
            aVar.getClass();
            return new a(num, num2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            Integer num = this.a;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            Integer num2 = this.b;
            return iHashCode + (num2 != null ? num2.hashCode() : 0);
        }

        public final String toString() {
            return "TimeState(hour=" + this.a + ", minutes=" + this.b + ")";
        }

        public a() {
            this(null, null);
        }
    }
}
