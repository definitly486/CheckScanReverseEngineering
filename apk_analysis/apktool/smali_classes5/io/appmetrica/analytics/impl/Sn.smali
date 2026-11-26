.class public Lio/appmetrica/analytics/impl/Sn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/validation/Validator;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Sn;->a:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/coreutils/internal/validation/Validator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Sn;->a:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    return-object p0
.end method

.method public final validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Sn;->a:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/Validator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/ValidationException;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/ValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
