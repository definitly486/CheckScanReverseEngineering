.class public final Lio/appmetrica/analytics/impl/i;
.super Lio/appmetrica/analytics/impl/Sn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Al;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Al;-><init>(Lio/appmetrica/analytics/impl/C0;)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    return-void
.end method


# virtual methods
.method public final b()Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method
