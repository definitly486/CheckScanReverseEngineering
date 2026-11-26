.class public final Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResultsChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/validation/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
        "Ljava/util/List<",
        "Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 0

    .line 99
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResultsChain;->validate(Ljava/util/List;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public validate(Ljava/util/List;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;",
            ">;)",
            "Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->successful(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p1, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->failed(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method
