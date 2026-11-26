.class public final Lio/appmetrica/analytics/impl/rd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i;

.field public final b:Lio/appmetrica/analytics/impl/Sn;

.field public final c:Lio/appmetrica/analytics/impl/Sn;

.field public final d:Lio/appmetrica/analytics/impl/Sn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/i;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/i;-><init>(Lio/appmetrica/analytics/impl/C0;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rd;->a:Lio/appmetrica/analytics/impl/i;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Context"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rd;->b:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Session extra key"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rd;->c:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/k0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/k0;-><init>()V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rd;->d:Lio/appmetrica/analytics/impl/Sn;

    return-void
.end method
