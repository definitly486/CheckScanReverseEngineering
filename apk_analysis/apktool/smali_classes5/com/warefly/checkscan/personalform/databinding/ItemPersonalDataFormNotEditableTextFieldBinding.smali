.class public final Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clickableArea:Landroid/view/View;

.field public final etField:Lcom/google/android/material/textfield/TextInputEditText;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tilField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->clickableArea:Landroid/view/View;

    iput-object p3, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p4, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->tilField:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p5, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;
    .locals 7

    const v0, 0x7f0a01fe

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7f0a0276

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0690

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    new-instance v1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v1 .. v6}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V

    return-object v1

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;
    .locals 2

    const v0, 0x7f0d0164

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
