.class public final Lyads/dg5;
.super Lsr5;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/eg5;


# direct methods
.method public constructor <init>(Lyads/z14;Lyads/eg5;)V
    .locals 0

    iput-object p2, p0, Lyads/dg5;->a:Lyads/eg5;

    invoke-direct {p0, p1}, Lsr5;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Lze4;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lyads/z14;

    check-cast p2, Lyads/z14;

    invoke-static {p3, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lyads/dg5;->a:Lyads/eg5;

    iget-object p1, p1, Lyads/eg5;->g:Lyads/e55;

    sget-object v0, Lyads/eg5;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object p1, p1, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/dg5;->a:Lyads/eg5;

    iget-object p0, p0, Lyads/eg5;->h:Lyads/e55;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/v14;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lyads/z14;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V

    new-instance p2, Lyads/cg5;

    invoke-direct {p2, p3, p1, p0}, Lyads/cg5;-><init>(Lyads/z14;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
