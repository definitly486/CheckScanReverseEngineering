.class public final synthetic Lrc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lrc6;->b:I

    iput-object p1, p0, Lrc6;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lrc6;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lrc6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/m2;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/m2;->f()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    sget-object v0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->e()Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;

    move-result-object v0

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->btnBackPlastic:Landroid/widget/TextView;

    new-instance v4, Lco6;

    invoke-direct {v4, p0, v1}, Lco6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->btnBackPlastic:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lv89$e;

    sget-object v1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lv89$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->g(Lv89;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->b(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    return-void

    :pswitch_2
    check-cast p0, Lwc6;

    invoke-virtual {p0}, Lwc6;->f()V

    iget-object v0, p0, Lwc6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lwc6;->a:Lnb6;

    iget-object v4, v3, Lnb6;->F:Llc6;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Llc6;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object p0, v3, Lnb6;->v:Lic6;

    const-string v1, "Network isn\'t connected."

    invoke-interface {p0, v1}, Lic6;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lwc6;->c()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lwc6;->i(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Lvc6;

    invoke-direct {v0, p0, v2}, Lvc6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lwc6;->g(Lll3;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
