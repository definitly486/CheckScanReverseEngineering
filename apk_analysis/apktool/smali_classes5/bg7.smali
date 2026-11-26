.class public final Lbg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;-><init>()V

    new-instance p1, Landroidx/navigation/ActionOnlyNavDirections;

    const v0, 0x7f0a02b8

    invoke-direct {p1, v0}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lbg7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
