.class public final Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnLoadScreenshotBank:Landroidx/appcompat/widget/AppCompatTextView;

.field public final btnLoadScreenshotShop:Landroidx/appcompat/widget/AppCompatTextView;

.field public final btnScreenshotBank:Landroidx/appcompat/widget/AppCompatTextView;

.field public final btnScreenshotShop:Landroidx/appcompat/widget/AppCompatTextView;

.field public final btnUpload:Landroidx/appcompat/widget/AppCompatTextView;

.field public final ivBank:Landroid/widget/ImageView;

.field public final ivShop:Landroid/widget/ImageView;

.field public final ivShopScreenshot:Lcom/warefly/checkscan/core/ui/SafeImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

.field public final topBorderBottom:Landroidx/constraintlayout/widget/Barrier;

.field public final topBorderBottomShop:Landroidx/constraintlayout/widget/Barrier;

.field public final tvHelpScreenshots:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvScreenshotBankDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvScreenshotBankTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvScreenshotShopDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvScreenshotShopTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnLoadScreenshotBank:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnLoadScreenshotShop:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnScreenshotBank:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnScreenshotShop:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnUpload:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivBank:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivShop:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivShopScreenshot:Lcom/warefly/checkscan/core/ui/SafeImageView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->topBorderBottom:Landroidx/constraintlayout/widget/Barrier;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->topBorderBottomShop:Landroidx/constraintlayout/widget/Barrier;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvHelpScreenshots:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p14, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvScreenshotBankDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p15, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvScreenshotBankTitle:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvScreenshotShopDescription:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvScreenshotShopTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f0a016b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a016c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0197

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0198

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01bb

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0357

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a03c2

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a03c4

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/warefly/checkscan/core/ui/SafeImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a06a6

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    move-result-object v13

    const v1, 0x7f0a06b5

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v14, :cond_0

    const v1, 0x7f0a06b6

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0752

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a07ce

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a07cf

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a07d0

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a07d1

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v20, :cond_0

    new-instance v3, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;
    .locals 2

    const v0, 0x7f0d00a2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
