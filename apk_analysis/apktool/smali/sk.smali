.class public final synthetic Lsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lsk;->b:I

    iput-object p1, p0, Lsk;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lsk;->b:I

    iget-object p0, p0, Lsk;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/pm6;

    invoke-static {p0}, Lyads/pm6;->a(Lyads/pm6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/bo6;

    invoke-static {p0}, Lyads/bo6;->c(Lyads/bo6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyn3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "play"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Li36;

    invoke-static {p0}, Lyr;->j0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Li36;-><init>(Ljava/util/ArrayList;I)V

    return-object v0

    :pswitch_2
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->i(Lll3;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt;->a(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
