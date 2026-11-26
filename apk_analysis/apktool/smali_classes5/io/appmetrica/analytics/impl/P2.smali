.class public final Lio/appmetrica/analytics/impl/P2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i;

.field public final b:Lio/appmetrica/analytics/impl/Sn;

.field public final c:Lio/appmetrica/analytics/impl/Sn;

.field public final d:Lio/appmetrica/analytics/impl/Sn;

.field public final e:Lio/appmetrica/analytics/impl/Sn;

.field public final f:Lio/appmetrica/analytics/impl/Sn;

.field public final g:Lio/appmetrica/analytics/impl/Sn;

.field public final h:Lio/appmetrica/analytics/impl/Sn;

.field public final i:Lio/appmetrica/analytics/impl/Sn;

.field public final j:Lio/appmetrica/analytics/impl/Sn;

.field public final k:Lio/appmetrica/analytics/impl/Sn;

.field public final l:Lio/appmetrica/analytics/impl/Sn;

.field public final m:Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

.field public final n:Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

.field public final o:Lio/appmetrica/analytics/impl/Sn;

.field public final p:Lio/appmetrica/analytics/impl/Sn;

.field public final q:Lio/appmetrica/analytics/impl/Sn;

.field public final r:Lio/appmetrica/analytics/impl/Sn;

.field public final s:Lio/appmetrica/analytics/impl/Sn;

.field public final t:Lio/appmetrica/analytics/impl/Sn;

.field public final u:Lio/appmetrica/analytics/impl/Sn;

.field public final v:Lio/appmetrica/analytics/impl/Sn;

.field public final w:Lio/appmetrica/analytics/impl/Sn;

.field public final x:Lio/appmetrica/analytics/impl/Sn;

.field public final y:Lio/appmetrica/analytics/impl/Sn;

.field public final z:Lio/appmetrica/analytics/impl/Sn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/i;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/i;-><init>(Lio/appmetrica/analytics/impl/C0;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/P2;->a:Lio/appmetrica/analytics/impl/i;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Config"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->b:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Activity"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->c:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Intent"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->d:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Application"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->e:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Context"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->f:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Deeplink listener"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->g:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Reporter Config"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->h:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v1, "Deeplink"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->i:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/impl/k0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/k0;-><init>()V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->j:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Key"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->k:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "WebView"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->l:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v0, "value"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->m:Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v0, "name"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->n:Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "AppMetricaDeviceIdentifiers callback"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->o:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "ANR listener"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->p:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "External attribution"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->q:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v1, "Event name"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->r:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v1, "Error message"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->s:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;

    const-string v1, "Error identifier"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonEmptyStringValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->t:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Unhandled exception"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Throwable"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->u:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "User profile"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->v:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Revenue"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->w:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "AdRevenue"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->x:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "ECommerceEvent"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->y:Lio/appmetrica/analytics/impl/Sn;

    new-instance p1, Lio/appmetrica/analytics/impl/Sn;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    const-string v1, "Anr all threads"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P2;->z:Lio/appmetrica/analytics/impl/Sn;

    return-void
.end method
