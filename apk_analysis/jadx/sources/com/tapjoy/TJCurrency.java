package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import com.tapjoy.internal.d1;
import com.tapjoy.internal.l1;
import com.tapjoy.internal.w1;
import defpackage.k11;
import defpackage.l11;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class TJCurrency {
    public Boolean a;
    public TJEarnedCurrencyListener b;
    public final SharedPreferences c;
    public final ExecutorService d = Executors.newSingleThreadExecutor();

    public TJCurrency(Context context) {
        this.c = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
    }

    public final boolean a() {
        Boolean boolValueOf = this.a;
        if (boolValueOf == null) {
            if (!this.c.contains(TapjoyConstants.PREF_CURRENCY_SELF_MANAGED)) {
                return false;
            }
            boolValueOf = Boolean.valueOf(this.c.getBoolean(TapjoyConstants.PREF_CURRENCY_SELF_MANAGED, false));
            this.a = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public void awardCurrency(int i, TJAwardCurrencyListener tJAwardCurrencyListener) {
        if (i < 0) {
            TapjoyLog.e("Amount must be a positive number for the awardCurrency API");
            if (tJAwardCurrencyListener != null) {
                tJAwardCurrencyListener.onAwardCurrencyResponseFailure("Amount must be a positive number for the awardCurrency API");
                return;
            }
            return;
        }
        if (!a()) {
            this.d.submit(new l11(this, i, tJAwardCurrencyListener));
            return;
        }
        TapjoyLog.e("awardCurrency is not supported with self managed currency");
        if (tJAwardCurrencyListener != null) {
            tJAwardCurrencyListener.onAwardCurrencyResponseFailure("awardCurrency is not supported with self managed currency");
        }
    }

    public void getCurrencyBalance(TJGetCurrencyBalanceListener tJGetCurrencyBalanceListener) {
        if (!a()) {
            this.d.submit(new k11(2, this, tJGetCurrencyBalanceListener));
            return;
        }
        TapjoyLog.e("getCurrencyBalance is not supported with self managed currency");
        if (tJGetCurrencyBalanceListener != null) {
            tJGetCurrencyBalanceListener.onGetCurrencyBalanceResponseFailure("getCurrencyBalance is not supported with self managed currency");
        }
    }

    public void setEarnedCurrencyListener(TJEarnedCurrencyListener tJEarnedCurrencyListener) {
        this.b = tJEarnedCurrencyListener;
    }

    public void spendCurrency(final int i, final TJSpendCurrencyListener tJSpendCurrencyListener) {
        if (i < 0) {
            TapjoyLog.e("Amount must be a positive number for the spendCurrency API");
            if (tJSpendCurrencyListener != null) {
                tJSpendCurrencyListener.onSpendCurrencyResponseFailure("Amount must be a positive number for the spendCurrency API");
                return;
            }
            return;
        }
        if (!a()) {
            this.d.submit(new Runnable() { // from class: wh8
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(i, tJSpendCurrencyListener);
                }
            });
            return;
        }
        TapjoyLog.e("spendCurrency is not supported with self managed currency");
        if (tJSpendCurrencyListener != null) {
            tJSpendCurrencyListener.onSpendCurrencyResponseFailure("spendCurrency is not supported with self managed currency");
        }
    }

    public final /* synthetic */ void a(TJGetCurrencyBalanceListener tJGetCurrencyBalanceListener) {
        new l1().a(tJGetCurrencyBalanceListener, this.b, this.c);
    }

    public final /* synthetic */ void a(int i, TJSpendCurrencyListener tJSpendCurrencyListener) {
        new w1(Integer.valueOf(i)).a(tJSpendCurrencyListener, this.c);
    }

    public final /* synthetic */ void a(int i, TJAwardCurrencyListener tJAwardCurrencyListener) {
        new d1(Integer.valueOf(i)).a(tJAwardCurrencyListener, this.c, TJVerifier.INSTANCE.getTapjoyAwardCurrencyVerifierAndTimeStampParams(i));
    }
}
