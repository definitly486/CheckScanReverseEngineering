.class public final Lyads/cg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/z14;

.field public final synthetic c:Lcom/monetization/ads/nativeads/CustomizableMediaView;

.field public final synthetic d:Lyads/v14;


# direct methods
.method public constructor <init>(Lyads/z14;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V
    .locals 0

    iput-object p1, p0, Lyads/cg5;->b:Lyads/z14;

    iput-object p2, p0, Lyads/cg5;->c:Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iput-object p3, p0, Lyads/cg5;->d:Lyads/v14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lyads/cg5;->b:Lyads/z14;

    iget-object v1, p0, Lyads/cg5;->c:Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iget-object p0, p0, Lyads/cg5;->d:Lyads/v14;

    invoke-virtual {v0, v1, p0}, Lyads/z14;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V

    return-void
.end method
