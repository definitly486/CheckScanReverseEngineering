.class public final Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$d;->f:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$d;->f:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->onSaveClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
