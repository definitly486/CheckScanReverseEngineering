.class public final Ll56;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll56$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lm56;",
        "Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V
    .locals 1

    sget-object v0, Lk56;->c:Lk56;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ll56;->b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lm56;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    check-cast p2, Lm56;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lm56;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p2, Lm56;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p2, Lm56;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->tilField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0604fc

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->tilField:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p2, p2, Lm56;->e:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormNotEditableTextFieldBinding;->clickableArea:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lmu2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lmu2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
