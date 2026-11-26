.class public final Lyads/qz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/f80;


# direct methods
.method public constructor <init>(Lyads/f80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qz3;->a:Lyads/f80;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/qz3;->a:Lyads/f80;

    iget-object v0, p0, Lyads/f80;->d:Lyads/i80;

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/f80;->a:Lyads/p80;

    if-nez p0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
