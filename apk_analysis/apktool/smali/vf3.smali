.class public final synthetic Lvf3;
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

    iput p2, p0, Lvf3;->b:I

    iput-object p1, p0, Lvf3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvf3;->b:I

    iget-object p0, p0, Lvf3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/List;

    check-cast p1, Landroidx/work/impl/WorkDatabase;

    invoke-static {p0, p1}, Landroidx/work/impl/utils/StatusRunnable;->d(Ljava/util/List;Landroidx/work/impl/WorkDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ldm3;

    check-cast p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->f(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
