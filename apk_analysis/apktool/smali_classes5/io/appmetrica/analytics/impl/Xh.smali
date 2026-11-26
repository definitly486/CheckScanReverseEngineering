.class public final Lio/appmetrica/analytics/impl/Xh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Provider;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/C0;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lio/appmetrica/analytics/ReporterConfig;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xh;->a:Lio/appmetrica/analytics/impl/C0;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Xh;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Xh;->c:Lio/appmetrica/analytics/ReporterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Xh;->a:Lio/appmetrica/analytics/impl/C0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Xh;->b:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xh;->c:Lio/appmetrica/analytics/ReporterConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/B0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/B0;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Qa;->c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;

    move-result-object p0

    return-object p0
.end method
