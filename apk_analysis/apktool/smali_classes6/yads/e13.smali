.class public final Lyads/e13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/on0;


# direct methods
.method public constructor <init>(Lyads/pg4;Lyads/m2;Lyads/h80;Lyads/pz;Lyads/q84;)V
    .locals 8

    instance-of v0, p1, Lyads/ni4;

    if-eqz v0, :cond_0

    new-instance v1, Lyads/um5;

    move-object v2, p1

    check-cast v2, Lyads/ni4;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lyads/um5;-><init>(Lyads/ni4;Lyads/c60;Lyads/h80;Lyads/pz;Lyads/q84;)V

    goto :goto_0

    :cond_0
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    new-instance v2, Lyads/hf4;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lyads/hf4;-><init>(Lyads/pg4;Lyads/c60;Lyads/h80;Lyads/pz;Lyads/q84;)V

    move-object v1, v2

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lyads/e13;->a:Lyads/on0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 0

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    iget-object p0, p0, Lyads/e13;->a:Lyads/on0;

    invoke-interface {p0, p1}, Lyads/on0;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lyads/e13;->a:Lyads/on0;

    invoke-interface {p0}, Lyads/on0;->c()V

    return-void
.end method
