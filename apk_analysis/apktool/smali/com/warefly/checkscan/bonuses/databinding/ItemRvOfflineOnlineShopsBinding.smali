.class public final Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final firstShop:Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final secondShop:Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->firstShop:Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;

    iput-object p3, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->secondShop:Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;
    .locals 3

    const v0, 0x7f0a0299

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;

    move-result-object v0

    const v1, 0x7f0a0606

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0, v0, v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;-><init>(Landroid/widget/LinearLayout;Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;Lcom/warefly/checkscan/bonuses/databinding/LayoutOfflineOnlineShopBinding;)V

    return-object v2

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;
    .locals 2

    const v0, 0x7f0d01f7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvOfflineOnlineShopsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
