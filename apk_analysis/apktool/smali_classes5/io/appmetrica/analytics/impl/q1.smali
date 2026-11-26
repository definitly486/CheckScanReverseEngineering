.class public final Lio/appmetrica/analytics/impl/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lio/appmetrica/analytics/impl/x1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x1;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/q1;->b:Lio/appmetrica/analytics/impl/x1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/q1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/q1;->b:Lio/appmetrica/analytics/impl/x1;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/x1;->h:Lio/appmetrica/analytics/impl/pl;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/q1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/x1;->c()Lio/appmetrica/analytics/impl/yc;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/yc;->a:Lio/appmetrica/analytics/impl/Wa;

    if-eqz p0, :cond_0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/pl;->f:Lio/appmetrica/analytics/impl/m;

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/m;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/pl;->e:Lio/appmetrica/analytics/impl/q;

    sget-object v2, Lio/appmetrica/analytics/impl/p;->b:Lio/appmetrica/analytics/impl/p;

    invoke-virtual {v1, p0, v2}, Lio/appmetrica/analytics/impl/q;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Wa;->b(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
