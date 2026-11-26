.class public final Lyads/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/o2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/common/AdActivity;Landroid/widget/RelativeLayout;Lyads/x2;Lyads/i2;Landroid/view/Window;Lyads/f2;)Lyads/n2;
    .locals 0

    if-nez p6, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lyads/s2;

    iget-object p2, p6, Lyads/f2;->d:Lyads/bf5;

    invoke-direct {p0, p1, p6, p2}, Lyads/s2;-><init>(Lcom/yandex/mobile/ads/common/AdActivity;Lyads/f2;Lyads/bf5;)V

    return-object p0
.end method
