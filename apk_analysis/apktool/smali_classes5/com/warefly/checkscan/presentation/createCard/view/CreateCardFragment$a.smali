.class public final Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$a;->f:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    sget-object p1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->k:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$a;->f:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->o()Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->onNumberChanged(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
