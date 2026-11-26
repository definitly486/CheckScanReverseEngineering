.class public final Lio/appmetrica/analytics/impl/Qb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

.field public final b:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

.field public final c:Lio/appmetrica/analytics/impl/Al;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

.field public final e:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

.field public final f:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

.field public final g:Lio/appmetrica/analytics/impl/k0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Context"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->a:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Config"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->b:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    new-instance v0, Lio/appmetrica/analytics/impl/Al;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Al;-><init>(Lio/appmetrica/analytics/impl/C0;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/impl/Al;

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v0, "Sender"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qb;->d:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v0, "Event"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qb;->e:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v0, "Payload"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qb;->f:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    new-instance p1, Lio/appmetrica/analytics/impl/k0;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/k0;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qb;->g:Lio/appmetrica/analytics/impl/k0;

    return-void
.end method
