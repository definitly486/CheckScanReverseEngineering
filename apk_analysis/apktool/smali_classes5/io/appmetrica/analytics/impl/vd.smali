.class public final Lio/appmetrica/analytics/impl/vd;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/zd;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zd;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vd;->a:Lio/appmetrica/analytics/impl/zd;

    iput p2, p0, Lio/appmetrica/analytics/impl/vd;->b:I

    iput-object p3, p0, Lio/appmetrica/analytics/impl/vd;->c:Ljava/lang/String;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/vd;->a:Lio/appmetrica/analytics/impl/zd;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/zd;->a(Lio/appmetrica/analytics/impl/zd;)Lio/appmetrica/analytics/impl/Wa;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/S9;

    iget v2, p0, Lio/appmetrica/analytics/impl/vd;->b:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vd;->c:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/impl/S9;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/Wa;->a(Lio/appmetrica/analytics/ExternalAttribution;)V

    return-void
.end method
