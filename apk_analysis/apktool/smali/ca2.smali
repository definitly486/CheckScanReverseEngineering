.class public final synthetic Lca2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lca2;->b:I

    iput-object p1, p0, Lca2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lca2;->b:I

    iget-object p0, p0, Lca2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lfr;

    check-cast p1, Lyads/br0;

    invoke-static {p0, p1}, Lyads/vq0;->a(Lfr;Lyads/br0;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/l44;

    check-cast p1, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;

    invoke-static {p0, p1}, Lyads/l44;->a(Lyads/l44;Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/an2;

    check-cast p1, Landroid/text/Spanned;

    invoke-static {p0, p1}, Lyads/g82;->a(Lyads/an2;Landroid/text/Spanned;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lyads/c26;

    check-cast p1, Lyads/zd2;

    invoke-static {p0, p1}, Lyads/c26;->a(Lyads/c26;Lyads/zd2;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/monetization/ads/mediation/appopenad/b;

    check-cast p1, Lyads/q74;

    invoke-static {p0, p1}, Lcom/monetization/ads/mediation/appopenad/b;->a(Lcom/monetization/ads/mediation/appopenad/b;Lyads/q74;)Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseManager;

    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->c(Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Ll39;

    check-cast p1, Lal1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ll39;->a:Ldf4;

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    const-string v1, "first"

    invoke-virtual {p1, v1, v0}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    iget-object v0, p0, Ll39;->b:Ldf4;

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    const-string v1, "second"

    invoke-virtual {p1, v1, v0}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    iget-object p0, p0, Ll39;->c:Ldf4;

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    const-string v0, "third"

    invoke-virtual {p1, v0, p0}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->d(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p0, p1}, Landroidx/compose/material3/DatePickerKt;->t(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
