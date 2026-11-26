package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.productflow.IllegalProductFlowParametersException;
import io.appmetrica.analytics.productflow.ProductFlowStatus;

/* JADX INFO: loaded from: classes5.dex */
public abstract class z {
    public static final void a(String str, String str2) {
        if (StringUtils.isNullOrEmpty(str) && StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalProductFlowParametersException("One of ProductId and ProductOfferId must be NonNull and not empty");
        }
    }

    public static final void b(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalProductFlowParametersException("ProductId must be NonNull and not empty");
        }
    }

    public static final void c(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalProductFlowParametersException("ProductOfferId must be NonNull and not empty");
        }
    }

    public static final void d(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalProductFlowParametersException("StepType must be NonNull and not empty");
        }
    }

    public static final void a(ProductFlowStatus productFlowStatus) {
        if (productFlowStatus == null) {
            throw new IllegalProductFlowParametersException("ProductFlowStatus must be NonNull");
        }
    }

    public static final void a(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalProductFlowParametersException("OfferType must be NonNull and not empty");
        }
    }
}
