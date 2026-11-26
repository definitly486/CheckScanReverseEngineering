.class public final Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/validation/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
        "Ljava/util/Collection<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 0

    .line 42
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;->validate(Ljava/util/Collection;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public validate(Ljava/util/Collection;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->successful(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p1, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null or empty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->failed(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method
