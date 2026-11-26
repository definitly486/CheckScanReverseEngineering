.class public final Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cbAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

.field private final rootView:Lcom/warefly/checkscan/core/ui/CheckBox;


# direct methods
.method private constructor <init>(Lcom/warefly/checkscan/core/ui/CheckBox;Lcom/warefly/checkscan/core/ui/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;->rootView:Lcom/warefly/checkscan/core/ui/CheckBox;

    iput-object p2, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;->cbAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;
    .locals 1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/warefly/checkscan/core/ui/CheckBox;

    new-instance v0, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;

    invoke-direct {v0, p0, p0}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;-><init>(Lcom/warefly/checkscan/core/ui/CheckBox;Lcom/warefly/checkscan/core/ui/CheckBox;)V

    return-object v0

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;
    .locals 2

    const v0, 0x7f0d01b5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;->getRoot()Lcom/warefly/checkscan/core/ui/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/warefly/checkscan/core/ui/CheckBox;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;->rootView:Lcom/warefly/checkscan/core/ui/CheckBox;

    return-object p0
.end method
