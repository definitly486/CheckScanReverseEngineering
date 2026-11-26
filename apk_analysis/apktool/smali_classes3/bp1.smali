.class public final synthetic Lbp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lbp1;->b:I

    iput-object p1, p0, Lbp1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbp1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lbp1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lbp1;->b:I

    iget-object v1, p0, Lbp1;->e:Ljava/lang/Object;

    iget-object v2, p0, Lbp1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lbp1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Landroidx/work/WorkRequest;

    invoke-static {v1, p0, v2}, Landroidx/work/impl/WorkerUpdater;->a(Landroidx/work/WorkRequest;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ly22;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-static {p0, v2, v1}, Landroidx/compose/foundation/text/CommonContextMenuAreaKt;->i(Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
