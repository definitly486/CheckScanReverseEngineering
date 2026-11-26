.class public final Lb66;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lc66;",
        "Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lc66;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    check-cast p2, Lc66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lc66;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    sget-object p1, Lo76;->a:Lg17;

    iget-object p1, p2, Lc66;->d:Ljava/lang/String;

    sget-object p2, Lo76;->a:Lg17;

    const-string v0, "$1 $2 $3-$4-$5"

    invoke-virtual {p2, v0, p1}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f15042f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->tilField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06002a

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method
