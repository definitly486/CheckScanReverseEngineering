.class public abstract Lyads/z14;
.super Lyads/rf6;
.source "SourceFile"


# instance fields
.field public final c:Lyads/j24;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/j24;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/rf6;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lyads/z14;->c:Lyads/j24;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
.end method

.method public a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V
    .locals 2

    iget-object p2, p0, Lyads/z14;->c:Lyads/j24;

    invoke-virtual {p0}, Lyads/z14;->d()Lyads/y14;

    move-result-object p0

    iget-boolean v0, p2, Lyads/j24;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lyads/j24;->a:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->a:Lyads/n70;

    sget-object v1, Lyads/n70;->g:Lyads/n70;

    if-ne v0, v1, :cond_0

    new-instance v0, Lyads/i24;

    invoke-direct {v0, p2, p1, p0}, Lyads/i24;-><init>(Lyads/j24;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/y14;)V

    sget-object p0, Lyads/eh6;->a:Lyads/th6;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v1, Lyads/dh6;

    invoke-direct {v1, v0, p1}, Lyads/dh6;-><init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p2, Lyads/j24;->c:Z

    :cond_1
    return-void
.end method

.method public abstract a(Lyads/v14;)V
.end method

.method public bridge synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lyads/v14;

    invoke-virtual {p0, p1, p2}, Lyads/z14;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V

    return-void
.end method

.method public abstract d()Lyads/y14;
.end method
