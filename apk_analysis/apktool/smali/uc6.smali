.class public final synthetic Luc6;
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

    iput p2, p0, Luc6;->b:I

    iput-object p1, p0, Luc6;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Luc6;->b:I

    iget-object p0, p0, Luc6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wq0;

    invoke-static {p0}, Lyads/wq0;->f(Lyads/wq0;)Lyads/en1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/rv5;

    invoke-static {p0}, Lyads/rv5;->a(Lyads/rv5;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->a(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lwc6;

    invoke-virtual {p0}, Lwc6;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
