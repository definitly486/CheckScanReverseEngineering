.class public final Ljy4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ljy4;->f:I

    iput-object p1, p0, Ljy4;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ljy4;->f:I

    iget-object p0, p0, Ljy4;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->c()Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;->openAdaptiveLink(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insert new event with name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Lya5;

    iget-object p0, p0, Lya5;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
