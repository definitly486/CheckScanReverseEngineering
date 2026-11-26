.class public final Lyads/l85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/x2;

.field public final b:I


# direct methods
.method public constructor <init>(Lyads/x2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l85;->a:Lyads/x2;

    iput p2, p0, Lyads/l85;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    iget p1, p0, Lyads/l85;->b:I

    iget-object p0, p0, Lyads/l85;->a:Lyads/x2;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lyads/x2;->a(I)V

    return-void

    :cond_0
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lyads/x2;->a(I)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
