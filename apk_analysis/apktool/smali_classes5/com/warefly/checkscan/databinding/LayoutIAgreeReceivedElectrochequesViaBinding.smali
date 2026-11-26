.class public final Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cbIAgreeProgram:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;->cbIAgreeProgram:Landroid/widget/CheckBox;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;
    .locals 2

    const v0, 0x7f0a01df

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/CheckBox;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;
    .locals 2

    const v0, 0x7f0d0284

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
