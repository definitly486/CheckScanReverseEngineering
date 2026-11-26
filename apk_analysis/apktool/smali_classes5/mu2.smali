.class public final Lmu2;
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

    iput p2, p0, Lmu2;->f:I

    iput-object p1, p0, Lmu2;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmu2;->f:I

    iget-object p0, p0, Lmu2;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lb36;

    iget-object p1, p1, Lb36;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/Comparable;

    invoke-static {p1, p0}, Lpp1;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ll56;

    iget-object p0, p0, Ll56;->b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    invoke-interface {p0}, Ll56$a;->onCityChangeClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;

    check-cast p0, Loz7$a;

    invoke-interface {p1}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getShortLink()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    sget-object p1, Lj59;->a:Lj59;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Dynamic Link: result shortLink is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Loz7$a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
