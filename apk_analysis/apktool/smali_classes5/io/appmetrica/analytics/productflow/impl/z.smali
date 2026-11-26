.class public abstract Lio/appmetrica/analytics/productflow/impl/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/appmetrica/analytics/productflow/ProductFlowStatus;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance p0, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;

    const-string v0, "ProductFlowStatus must be NonNull"

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance p0, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;

    const-string v0, "OfferType must be NonNull and not empty"

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;

    const-string p1, "One of ProductId and ProductOfferId must be NonNull and not empty"

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;

    const-string v0, "ProductId must be NonNull and not empty"

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;

    const-string v0, "ProductOfferId must be NonNull and not empty"

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;

    const-string v0, "StepType must be NonNull and not empty"

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/productflow/IllegalProductFlowParametersException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
