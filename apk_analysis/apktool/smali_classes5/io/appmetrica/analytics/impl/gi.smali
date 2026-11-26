.class public final Lio/appmetrica/analytics/impl/gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/co;

.field public final synthetic b:Lio/appmetrica/analytics/impl/oi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/oi;Lio/appmetrica/analytics/impl/co;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/gi;->b:Lio/appmetrica/analytics/impl/oi;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/gi;->a:Lio/appmetrica/analytics/impl/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/gi;->b:Lio/appmetrica/analytics/impl/oi;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/oi;->a:Lio/appmetrica/analytics/impl/C0;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/oi;->d:Landroid/content/Context;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/oi;->e:Lio/appmetrica/analytics/ReporterConfig;

    invoke-static {v1, v2, v0}, Lio/appmetrica/analytics/impl/oi;->a(Lio/appmetrica/analytics/impl/C0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/gi;->a:Lio/appmetrica/analytics/impl/co;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/bb;->a(Lio/appmetrica/analytics/impl/co;)V

    return-void
.end method
