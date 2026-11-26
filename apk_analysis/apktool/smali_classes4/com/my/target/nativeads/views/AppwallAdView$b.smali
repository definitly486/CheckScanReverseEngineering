.class public final Lcom/my/target/nativeads/views/AppwallAdView$b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/views/AppwallAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lci5;",
        ">;"
    }
.end annotation


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lci5;

    if-nez p2, :cond_0

    new-instance p2, Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;-><init>(Landroid/content/Context;)V

    new-instance p3, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p3, p2, p0}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;-><init>(Lcom/my/target/nativeads/views/AppwallAdTeaserView;Landroid/content/Context;)V

    move-object p2, p3

    :cond_0
    if-eqz p1, :cond_1

    move-object p0, p2

    check-cast p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->getView()Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->setNativeAppwallBanner(Lci5;)V

    :cond_1
    return-object p2
.end method
