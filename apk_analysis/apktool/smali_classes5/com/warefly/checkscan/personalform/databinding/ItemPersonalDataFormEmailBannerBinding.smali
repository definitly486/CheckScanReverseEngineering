.class public final Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAddEmail:Landroid/widget/TextView;

.field public final clickableArea:Landroid/view/View;

.field public final etField:Lcom/google/android/material/textfield/TextInputEditText;

.field public final groupEmailField:Landroidx/constraintlayout/widget/Group;

.field public final ivBadge:Landroid/widget/ImageView;

.field public final ivLogo:Landroid/widget/ImageView;

.field public final mcvBadge:Lcom/google/android/material/card/MaterialCardView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final tilField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tvBadgeText:Landroid/widget/TextView;

.field public final tvDescription:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->btnAddEmail:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->clickableArea:Landroid/view/View;

    iput-object p4, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p5, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->groupEmailField:Landroidx/constraintlayout/widget/Group;

    iput-object p6, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->ivBadge:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->ivLogo:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->mcvBadge:Lcom/google/android/material/card/MaterialCardView;

    iput-object p9, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->tilField:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p10, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->tvBadgeText:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->tvDescription:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;
    .locals 15

    const v0, 0x7f0a0100

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01fe

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const v0, 0x7f0a0276

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v6, :cond_0

    const v0, 0x7f0a02cb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/Group;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0354

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0394

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0463

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0690

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a06d2

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0719

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    new-instance v2, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct/range {v2 .. v14}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    :cond_0
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;
    .locals 2

    const v0, 0x7f0d0163

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormEmailBannerBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method
