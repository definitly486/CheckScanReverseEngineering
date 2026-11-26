.class public abstract Lio/appmetrica/analytics/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/t4;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Eg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Eg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/f;->b:Lio/appmetrica/analytics/impl/Eg;

    invoke-virtual {p2, p0}, Lio/appmetrica/analytics/impl/Eg;->a(Lio/appmetrica/analytics/impl/t4;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->n()Lio/appmetrica/analytics/impl/Zb;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/impl/cc;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/f;->b:Lio/appmetrica/analytics/impl/Eg;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Eg;->b(Lio/appmetrica/analytics/impl/t4;)V

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->m()Lio/appmetrica/analytics/impl/Zb;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/cc;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/f;->b(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/Eg;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/f;->b:Lio/appmetrica/analytics/impl/Eg;

    return-object p0
.end method

.method public abstract b(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V
.end method

.method public final c()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/f;->a:Landroid/content/Context;

    return-object p0
.end method
