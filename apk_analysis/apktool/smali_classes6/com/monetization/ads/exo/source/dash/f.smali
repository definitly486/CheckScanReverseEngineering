.class public final Lcom/monetization/ads/exo/source/dash/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/su3;


# instance fields
.field public final synthetic a:Lcom/monetization/ads/exo/source/dash/i;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/exo/source/dash/i;)V
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/f;->a:Lcom/monetization/ads/exo/source/dash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/f;->a:Lcom/monetization/ads/exo/source/dash/i;

    iget-object v0, v0, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lyads/ru3;->a(I)V

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/f;->a:Lcom/monetization/ads/exo/source/dash/i;

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/i;->C:Lyads/nc0;

    if-nez p0, :cond_0

    return-void

    :cond_0
    throw p0
.end method
