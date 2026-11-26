.class public final Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnPrimary:Landroid/widget/TextView;

.field public final groupHint:Landroidx/constraintlayout/widget/Group;

.field public final incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

.field public final incldGivenToUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;

.field public final incldLayoutHint:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;

.field public final incldTakenFromUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;

.field public final ivArrow:Landroid/widget/ImageView;

.field public final ivIndicator:Landroid/widget/ImageView;

.field public final ivLogo:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final spaceBottomHint:Landroid/widget/Space;

.field public final tvDescription:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final vDragZone:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->btnPrimary:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->groupHint:Landroidx/constraintlayout/widget/Group;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldGivenToUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldLayoutHint:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldTakenFromUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->ivArrow:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->ivIndicator:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->ivLogo:Landroid/widget/ImageView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->spaceBottomHint:Landroid/widget/Space;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->tvDescription:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->vDragZone:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0a0187

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a02cf

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0315

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    move-result-object v7

    const v1, 0x7f0a031f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;

    move-result-object v8

    const v1, 0x7f0a0322

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;

    move-result-object v9

    const v1, 0x7f0a032a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;

    move-result-object v10

    const v1, 0x7f0a0351

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a038d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0394

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a062a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Space;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0719

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0814

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a083c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    new-instance v3, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v17}, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;
    .locals 2

    const v0, 0x7f0d008d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
