.class public final Lab1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lab1;->f:I

    iput-object p2, p0, Lab1;->g:Ljava/lang/Object;

    iput-object p3, p0, Lab1;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lab1;->f:I

    iget-object v1, p0, Lab1;->h:Ljava/lang/Object;

    iget-object p0, p0, Lab1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Loz6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Luv2;

    iget-object p0, p0, Luv2;->a:Lxv2;

    check-cast v1, Ljava/lang/String;

    const-string v0, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lxv2;->c(Loz6;Ljava/lang/String;)Lpr5;

    move-result-object p0

    sget-object p1, Lne7;->b:Lhe7;

    invoke-virtual {p0, p1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lza1;

    iget-object p0, p0, Lza1;->b:Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;

    check-cast v1, Lgc1;

    invoke-interface {p0, v1}, Lza1$a;->onCheckboxClicked(Lgc1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
