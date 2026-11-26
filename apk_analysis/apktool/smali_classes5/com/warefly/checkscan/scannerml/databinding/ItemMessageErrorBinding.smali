.class public final Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;->rootView:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;
    .locals 2

    const v0, 0x7f0d0151

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;->rootView:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method
