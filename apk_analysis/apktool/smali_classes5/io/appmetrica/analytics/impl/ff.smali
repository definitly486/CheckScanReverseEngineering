.class public final Lio/appmetrica/analytics/impl/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Sn;

.field public final b:Lio/appmetrica/analytics/impl/Sn;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v2, "Error details"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ff;->a:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v2, "Error identifier"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ff;->b:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;

    const-string v1, "Stacktrace"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ff;->c:Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyCollectionValidator;

    return-void
.end method
