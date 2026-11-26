.class public final synthetic Lwk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;I)V
    .locals 0

    iput p2, p0, Lwk5;->b:I

    iput-object p1, p0, Lwk5;->c:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwk5;->b:I

    iget-object p0, p0, Lwk5;->c:Landroidx/compose/runtime/State;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->c(Landroidx/compose/runtime/State;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Landroidx/compose/material3/NavigationItemKt;->k(Landroidx/compose/runtime/State;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
