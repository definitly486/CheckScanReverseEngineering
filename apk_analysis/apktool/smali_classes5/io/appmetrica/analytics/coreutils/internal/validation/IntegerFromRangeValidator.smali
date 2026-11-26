.class public final Lio/appmetrica/analytics/coreutils/internal/validation/IntegerFromRangeValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/validation/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/validation/IntegerFromRangeValidator;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/internal/validation/IntegerFromRangeValidator;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/Integer;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/validation/IntegerFromRangeValidator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->failed(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/validation/IntegerFromRangeValidator;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/appmetrica/analytics/coreutils/internal/validation/IntegerFromRangeValidator;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") not in range of possible values: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/validation/IntegerFromRangeValidator;->b:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->failed(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p1, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->successful(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 0

    .line 82
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/IntegerFromRangeValidator;->validate(Ljava/lang/Integer;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method
