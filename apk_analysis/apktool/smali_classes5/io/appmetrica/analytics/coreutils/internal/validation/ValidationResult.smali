.class public final Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    return-void
.end method

.method private constructor <init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->a:Z

    iput-object p3, p0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->c:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;ZLjava/lang/String;Ljh2;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;ZLjava/lang/String;)V

    return-void
.end method

.method public static final failed(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 1
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

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->failed(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public static final successful(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "*>;)",
            "Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->Companion:Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult$Companion;->successful(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getValidatorClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public final isValid()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->a:Z

    return p0
.end method
