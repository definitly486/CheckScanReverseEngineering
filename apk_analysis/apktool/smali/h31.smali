.class public final synthetic Lh31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcm3;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcm3;II)V
    .locals 0

    iput p4, p0, Lh31;->b:I

    iput-object p1, p0, Lh31;->d:Ljava/lang/Object;

    iput-object p2, p0, Lh31;->e:Lcm3;

    iput p3, p0, Lh31;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lh31;->b:I

    iget v1, p0, Lh31;->c:I

    iget-object v2, p0, Lh31;->e:Lcm3;

    iget-object p0, p0, Lh31;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, [Landroidx/compose/runtime/ProvidedValue;

    check-cast v2, Lbm3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, v2, v1, p1, p2}, Landroidx/compose/runtime/CompositionLocalKt;->d([Landroidx/compose/runtime/ProvidedValue;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/Modifier;

    check-cast v2, Lnl3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, v2, v1, p1, p2}, Landroidx/compose/foundation/CanvasKt;->c(Landroidx/compose/ui/Modifier;Lnl3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
