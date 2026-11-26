.class public final synthetic Ljx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ljx6;->b:I

    iput-object p2, p0, Ljx6;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljx6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljx6;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljx6;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Ljx6;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lyads/zu3;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ljx6;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Ljx6;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/unit/DpSize;

    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->f(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/DpSize;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Ljx6;->c:Ljava/lang/Object;

    check-cast v0, Lll3;

    iget-object p0, p0, Ljx6;->d:Ljava/lang/Object;

    check-cast p0, Lnm1;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Landroidx/compose/material3/RangeSliderState$Companion;->a(Lll3;Lnm1;Ljava/util/List;)Landroidx/compose/material3/RangeSliderState;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
