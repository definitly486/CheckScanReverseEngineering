.class public final Lio/appmetrica/analytics/impl/qe;
.super Lio/appmetrica/analytics/impl/F4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;DLio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "Ljava/lang/String;",
            ">;",
            "Lio/appmetrica/analytics/impl/X2;",
            ")V"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    move-object p2, p1

    const/4 p1, 0x1

    invoke-direct/range {p0 .. p5}, Lio/appmetrica/analytics/impl/F4;-><init>(ILjava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ro;)V
    .locals 2

    iget-object p1, p1, Lio/appmetrica/analytics/impl/ro;->d:Lio/appmetrica/analytics/impl/to;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F4;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p1, Lio/appmetrica/analytics/impl/to;->b:D

    return-void
.end method
