.class public final Lyads/i24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lyads/j24;

.field public final synthetic b:Lcom/monetization/ads/nativeads/CustomizableMediaView;

.field public final synthetic c:Lyads/y14;


# direct methods
.method public constructor <init>(Lyads/j24;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/y14;)V
    .locals 0

    iput-object p1, p0, Lyads/i24;->a:Lyads/j24;

    iput-object p2, p0, Lyads/i24;->b:Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iput-object p3, p0, Lyads/i24;->c:Lyads/y14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lyads/i24;->a:Lyads/j24;

    iget-object v0, v0, Lyads/j24;->b:Lyads/k24;

    iget-object v1, p0, Lyads/i24;->b:Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iget-object p0, p0, Lyads/i24;->c:Lyads/y14;

    iget-object p0, p0, Lyads/y14;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lyads/k24;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
