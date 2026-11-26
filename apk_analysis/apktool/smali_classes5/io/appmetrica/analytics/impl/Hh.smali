.class public final Lio/appmetrica/analytics/impl/Hh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Sn;

.field public final b:Lio/appmetrica/analytics/impl/Sn;

.field public final c:Lio/appmetrica/analytics/impl/Sn;

.field public final d:Lio/appmetrica/analytics/impl/Sn;

.field public final e:Lio/appmetrica/analytics/impl/Sn;

.field public final f:Lio/appmetrica/analytics/impl/Sn;

.field public final g:Lio/appmetrica/analytics/impl/Sn;

.field public final h:Lio/appmetrica/analytics/impl/Sn;

.field public final i:Lio/appmetrica/analytics/impl/Sn;

.field public final j:Lio/appmetrica/analytics/impl/Sn;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v2, "Event name"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->a:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v2, "Error message"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->b:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v2, "Error identifier"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->c:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v2, "Unhandled exception"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->d:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v2, "Throwable"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->e:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v2, "User profile"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->f:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v2, "Revenue"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->g:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v2, "AdRevenue"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->h:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v2, "ECommerceEvent"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->i:Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/Sn;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v2, "ANR all threads"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Hh;->j:Lio/appmetrica/analytics/impl/Sn;

    return-void
.end method
