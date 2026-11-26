.class public final Lio/appmetrica/analytics/impl/tm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lio/appmetrica/analytics/impl/z4;

.field public c:Ljava/util/List;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lio/appmetrica/analytics/impl/He;

.field public l:Ljava/lang/Long;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/List;

.field public o:Ljava/util/Map;

.field public p:Lio/appmetrica/analytics/impl/Wm;

.field public q:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

.field public r:Lio/appmetrica/analytics/impl/q3;

.field public s:Lio/appmetrica/analytics/impl/B2;

.field public t:Lio/appmetrica/analytics/impl/Sm;

.field public u:Ljava/util/Map;

.field public v:Lio/appmetrica/analytics/impl/O9;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/x4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x4;-><init>()V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/x4;->a()Lio/appmetrica/analytics/impl/z4;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/tm;->b:Lio/appmetrica/analytics/impl/z4;

    const-string v0, ""

    iput-object v0, p0, Lio/appmetrica/analytics/impl/tm;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/tm;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/tm;->k:Lio/appmetrica/analytics/impl/He;

    return-void
.end method
