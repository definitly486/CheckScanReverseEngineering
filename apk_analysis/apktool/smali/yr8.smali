.class public final synthetic Lyr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lyr8;->b:I

    iput-object p1, p0, Lyr8;->c:Ljava/lang/Object;

    iput-object p2, p0, Lyr8;->d:Ljava/lang/Object;

    iput-object p3, p0, Lyr8;->e:Ljava/lang/Object;

    iput-object p4, p0, Lyr8;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lyr8;->b:I

    iget-object v1, p0, Lyr8;->f:Ljava/lang/Object;

    iget-object v2, p0, Lyr8;->e:Ljava/lang/Object;

    iget-object v3, p0, Lyr8;->d:Ljava/lang/Object;

    iget-object p0, p0, Lyr8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/g82;

    check-cast v3, Lyads/zo1;

    check-cast v2, Lyads/b82;

    check-cast v1, Lyads/fs2;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/g82;->b(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/d22;

    check-cast v3, Lyads/s22;

    check-cast v2, Lyads/fs2;

    check-cast v1, Lyads/tc1;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/d22;->b(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/State;

    check-cast v3, Landroidx/compose/foundation/contextmenu/ContextMenuState;

    check-cast v2, Lbm3;

    check-cast v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    check-cast p1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    invoke-static {p0, v3, v2, v1, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionStateKt;->b(Landroidx/compose/runtime/State;Landroidx/compose/foundation/contextmenu/ContextMenuState;Lbm3;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/contextmenu/ContextMenuScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
