.class public final Lio/appmetrica/analytics/impl/mn;
.super Lio/appmetrica/analytics/impl/F4;
.source "SourceFile"


# instance fields
.field public final g:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer<",
            "Ljava/lang/String;",
            ">;",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "Ljava/lang/String;",
            ">;",
            "Lio/appmetrica/analytics/impl/X2;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/F4;-><init>(ILjava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    iput-object p3, v0, Lio/appmetrica/analytics/impl/mn;->g:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ro;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mn;->g:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F4;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/ro;->d:Lio/appmetrica/analytics/impl/to;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_0
    iput-object p0, p1, Lio/appmetrica/analytics/impl/to;->a:[B

    return-void
.end method

.method public final h()Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mn;->g:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

    return-object p0
.end method
