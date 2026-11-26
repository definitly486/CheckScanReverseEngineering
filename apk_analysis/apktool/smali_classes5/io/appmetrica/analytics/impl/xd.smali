.class public final Lio/appmetrica/analytics/impl/xd;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/zd;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[B


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zd;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/xd;->a:Lio/appmetrica/analytics/impl/zd;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/xd;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/xd;->c:[B

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xd;->a:Lio/appmetrica/analytics/impl/zd;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/zd;->a(Lio/appmetrica/analytics/impl/zd;)Lio/appmetrica/analytics/impl/Wa;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/xd;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xd;->c:[B

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/IModuleReporter;->setSessionExtra(Ljava/lang/String;[B)V

    return-void
.end method
