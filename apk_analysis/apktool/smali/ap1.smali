.class public final synthetic Lap1;
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

    iput p2, p0, Lap1;->b:I

    iput-object p1, p0, Lap1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lap1;->b:I

    iget-object p0, p0, Lap1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wq0;

    invoke-static {p0}, Lyads/wq0;->h(Lyads/wq0;)Lyads/hd2;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/np3;

    invoke-static {p0}, Lyads/np3;->a(Lyads/np3;)Lyads/i70;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/Threads;->b(Lll3;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->c(Landroidx/compose/foundation/style/StyleOuterNode;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lwc6;

    iget-object v0, p0, Lwc6;->a:Lnb6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network is available, flushing queued "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lwc6;->b:Liz2;

    iget-object v2, v2, Liz2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lic6;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc6;->flush()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/paging/DataSource;

    invoke-static {p0}, Landroidx/paging/DataSource;->d(Landroidx/paging/DataSource;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/contextmenu/ContextMenuState;

    invoke-static {p0}, Landroidx/compose/foundation/text/CommonContextMenuAreaKt;->a(Landroidx/compose/foundation/contextmenu/ContextMenuState;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
