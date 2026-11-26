.class public final synthetic Lbha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/x1;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lio/appmetrica/analytics/AppMetricaConfig;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/x1;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbha;->b:Lio/appmetrica/analytics/impl/x1;

    iput-object p2, p0, Lbha;->c:Landroid/content/Context;

    iput-object p3, p0, Lbha;->d:Lio/appmetrica/analytics/AppMetricaConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbha;->c:Landroid/content/Context;

    iget-object v1, p0, Lbha;->d:Lio/appmetrica/analytics/AppMetricaConfig;

    iget-object p0, p0, Lbha;->b:Lio/appmetrica/analytics/impl/x1;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/x1;->b(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;)V

    return-void
.end method
