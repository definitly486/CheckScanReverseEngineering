.class public final Luk4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lvk4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLandingUnselectedTextFieldBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V
    .locals 1

    sget-object v0, Lsk4;->c:Lsk4;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Luk4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lvk4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingUnselectedTextFieldBinding;

    check-cast p2, Lvk4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingUnselectedTextFieldBinding;->etText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Ltk4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Ltk4;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingUnselectedTextFieldBinding;->tlText:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p2, Lvk4;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingUnselectedTextFieldBinding;->etText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p1, p2, Lvk4;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
