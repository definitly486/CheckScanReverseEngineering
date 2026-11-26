.class public final Lio/appmetrica/analytics/impl/Wi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/validation/Validator;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResultsChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResultsChain;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResultsChain;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Wi;->a:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResultsChain;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/Revenue;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Wi;->a:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResultsChain;

    new-instance v0, Lio/appmetrica/analytics/impl/gg;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/gg;-><init>()V

    iget-object p1, p1, Lio/appmetrica/analytics/Revenue;->quantity:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid quantity value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->failed(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->successful(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p1

    :goto_1
    filled-new-array {p1}, [Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResultsChain;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/Revenue;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Wi;->a(Lio/appmetrica/analytics/Revenue;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method
