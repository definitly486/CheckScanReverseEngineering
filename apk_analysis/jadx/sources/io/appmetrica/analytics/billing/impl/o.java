package io.appmetrica.analytics.billing.impl;

import defpackage.ha1;
import io.appmetrica.analytics.billinginterface.internal.Period;
import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.nio.charset.Charset;
import java.util.Currency;

/* JADX INFO: loaded from: classes5.dex */
public final class o {
    public static byte[] a(ProductInfo productInfo) {
        String currencyCode;
        int i;
        x xVar = new x();
        xVar.a = productInfo.quantity;
        xVar.f = productInfo.priceMicros;
        try {
            currencyCode = Currency.getInstance(productInfo.priceCurrency).getCurrencyCode();
        } catch (Throwable unused) {
            currencyCode = "";
        }
        Charset charset = ha1.b;
        xVar.b = currencyCode.getBytes(charset);
        xVar.c = productInfo.sku.getBytes(charset);
        s sVar = new s();
        sVar.a = productInfo.purchaseOriginalJson.getBytes(charset);
        sVar.b = productInfo.signature.getBytes(charset);
        xVar.e = sVar;
        int i2 = 1;
        xVar.g = true;
        xVar.h = 1;
        int i3 = n.a[productInfo.type.ordinal()];
        xVar.i = (i3 == 1 || i3 != 2) ? 1 : 2;
        w wVar = new w();
        wVar.a = productInfo.purchaseToken.getBytes(charset);
        wVar.b = productInfo.purchaseTime / 1000;
        xVar.j = wVar;
        if (productInfo.type == ProductType.SUBS) {
            v vVar = new v();
            vVar.a = productInfo.autoRenewing;
            Period period = productInfo.subscriptionPeriod;
            if (period != null) {
                u uVar = new u();
                uVar.a = period.number;
                int i4 = n.b[period.timeUnit.ordinal()];
                if (i4 == 1) {
                    i = 1;
                } else if (i4 == 2) {
                    i = 2;
                } else if (i4 != 3) {
                    i = i4 != 4 ? 0 : 4;
                } else {
                    i = 3;
                }
                uVar.b = i;
                vVar.b = uVar;
            }
            t tVar = new t();
            tVar.a = productInfo.introductoryPriceMicros;
            Period period2 = productInfo.introductoryPricePeriod;
            if (period2 != null) {
                u uVar2 = new u();
                uVar2.a = period2.number;
                int i5 = n.b[period2.timeUnit.ordinal()];
                if (i5 != 1) {
                    if (i5 == 2) {
                        i2 = 2;
                    } else if (i5 != 3) {
                        i2 = i5 != 4 ? 0 : 4;
                    } else {
                        i2 = 3;
                    }
                }
                uVar2.b = i2;
                tVar.b = uVar2;
            }
            tVar.c = productInfo.introductoryPriceCycles;
            vVar.c = tVar;
            xVar.k = vVar;
        }
        return MessageNano.toByteArray(xVar);
    }
}
