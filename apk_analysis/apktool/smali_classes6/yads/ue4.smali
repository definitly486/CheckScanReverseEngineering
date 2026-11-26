.class public final Lyads/ue4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/te4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_close:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/view/ViewGroup;)Landroid/widget/ProgressBar;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
