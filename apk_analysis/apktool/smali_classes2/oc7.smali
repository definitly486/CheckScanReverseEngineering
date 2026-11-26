.class public final synthetic Loc7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Loc7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Loc7;->b:I

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    packed-switch p0, :pswitch_data_0

    check-cast p2, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->d(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p2, Landroidx/compose/ui/text/style/TextAlign;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/SaversKt;->C(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/TextAlign;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
