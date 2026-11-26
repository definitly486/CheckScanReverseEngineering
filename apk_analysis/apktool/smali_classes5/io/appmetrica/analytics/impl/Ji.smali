.class public final Lio/appmetrica/analytics/impl/Ji;
.super Lio/appmetrica/analytics/impl/Md;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "Ljava/lang/String;",
            ">;",
            "Lio/appmetrica/analytics/impl/y2;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/Ii;

    invoke-direct {v0, p4}, Lio/appmetrica/analytics/impl/Ii;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/appmetrica/analytics/impl/Md;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/po;)V
    .locals 2

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Md;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Md;->d:Lio/appmetrica/analytics/impl/X2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lio/appmetrica/analytics/impl/X2;->a(Lio/appmetrica/analytics/impl/po;Lio/appmetrica/analytics/impl/ro;Lio/appmetrica/analytics/impl/x2;)Lio/appmetrica/analytics/impl/ro;

    :cond_0
    return-void
.end method
