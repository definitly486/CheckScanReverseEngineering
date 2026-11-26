.class public final synthetic Lzo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lzo1;->b:I

    iput-object p1, p0, Lzo1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lzo1;->b:I

    iget-object p0, p0, Lzo1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/runtime/composer/RememberManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->a(Landroidx/compose/runtime/composer/RememberManager;ILjava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ly22;

    check-cast p1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    check-cast p2, Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/CommonContextMenuAreaKt;->f(Ly22;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/TextContextMenuItems;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
