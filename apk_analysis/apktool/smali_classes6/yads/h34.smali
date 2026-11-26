.class public final Lyads/h34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/r44;


# direct methods
.method public constructor <init>(Lyads/r44;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/h34;->a:Lyads/r44;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/x54;Lyads/bf5;)Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializer;
    .locals 2

    iget-object p0, p0, Lyads/h34;->a:Lyads/r44;

    invoke-virtual {p0, p2}, Lyads/r44;->a(Lyads/x54;)Lyads/n70;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lyads/e4;

    invoke-direct {v1, p0}, Lyads/e4;-><init>(Lyads/n70;)V

    new-instance p0, Lyads/l34;

    invoke-direct {p0, v1, p3, v0}, Lyads/l34;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;)V

    new-instance p3, Lyads/e34;

    invoke-direct {p3, p0}, Lyads/e34;-><init>(Lyads/l34;)V

    const-class p0, Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {p3, p1, p2, p0}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object p0

    instance-of p1, p0, Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializer;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializer;

    return-object p0

    :cond_1
    return-object v0
.end method
