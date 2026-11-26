.class public final Lhk4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lik4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V
    .locals 1

    sget-object v0, Lfk4;->c:Lfk4;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lhk4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lhk4;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lik4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;

    check-cast p2, Lik4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;->tlText:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p2, Lik4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;->tlText:Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v1, p2, Lik4;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;->etText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p2, Lik4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget v1, p2, Lik4;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, p2, Lik4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lek4;

    invoke-direct {v1, p0, p2, p1}, Lek4;-><init>(Lhk4;Lik4;Lcom/warefly/checkscan/databinding/ItemRvLandingTextFieldWithBackgroundBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
