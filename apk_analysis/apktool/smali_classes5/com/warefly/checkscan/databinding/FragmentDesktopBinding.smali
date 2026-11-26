.class public final Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final animPlaceholder:Landroid/widget/ImageView;

.field public final bnContainer:Landroid/widget/FrameLayout;

.field public final bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

.field public final btnNotifications:Landroid/widget/ImageView;

.field public final btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

.field public final btnScan:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final btnWithdraw:Landroid/widget/ImageView;

.field public final desktopContainer:Landroid/widget/FrameLayout;

.field public final incldNoInternetView:Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;

.field public final ivBellRedDot:Landroid/widget/ImageView;

.field public final ivMainToolbar:Landroid/widget/ImageView;

.field public final layoutDesktop:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final menuCostyl:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbarContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvToolbar:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;Landroid/widget/ImageView;Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->animPlaceholder:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bnContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnNotifications:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnScan:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnWithdraw:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->desktopContainer:Landroid/widget/FrameLayout;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->incldNoInternetView:Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->ivBellRedDot:Landroid/widget/ImageView;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->ivMainToolbar:Landroid/widget/ImageView;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->layoutDesktop:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p14, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->menuCostyl:Landroid/widget/ImageView;

    iput-object p15, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->toolbarContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->tvToolbar:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0a009c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a00e1

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a00ea

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    if-eqz v7, :cond_0

    const v1, 0x7f0a017d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0189

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0196

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a01be

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a023c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0327

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;

    move-result-object v13

    const v1, 0x7f0a035a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0398

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0488

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a06aa

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f0a081f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    new-instance v3, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-object/from16 v16, v4

    invoke-direct/range {v3 .. v19}, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;Landroid/widget/ImageView;Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;
    .locals 2

    const v0, 0x7f0d00c1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
