.class public final synthetic Lsh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lsh1;->b:I

    iput-object p2, p0, Lsh1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lsh1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lsh1;->b:I

    iget-object v1, p0, Lsh1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lsh1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/navigation/NavController;

    check-cast v1, Landroidx/navigation/ui/AppBarConfiguration;

    invoke-static {p0, v1, p1}, Landroidx/navigation/ui/NavigationUI;->f(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    check-cast v1, Lb06;

    sget-object p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->showOrdAdDialog(Lb06;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
