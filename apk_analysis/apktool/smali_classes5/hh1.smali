.class public final Lhh1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lhh1;->f:I

    iput-object p1, p0, Lhh1;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lhh1;->f:I

    iget-object p0, p0, Lhh1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lih1;

    iget-object v0, p0, Lih1;->b:Laf1;

    invoke-interface {v0}, Laf1;->b()Lmz7;

    move-result-object v0

    new-instance v1, Lgh1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lgh1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Leh1;

    invoke-direct {p0, v1}, Leh1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lh08;

    invoke-direct {p1, v0, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
