.class public final Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final failed(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;"
        }
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;ZLjava/lang/String;Ljh2;)V

    return-object p0
.end method

.method public final successful(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "*>;)",
            "Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;"
        }
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;ZLjava/lang/String;Ljh2;)V

    return-object p0
.end method
