.class public final synthetic Lq12;
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

    iput p1, p0, Lq12;->b:I

    iput-object p2, p0, Lq12;->c:Ljava/lang/Object;

    iput-object p3, p0, Lq12;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lq12;->b:I

    iget-object v1, p0, Lq12;->d:Ljava/lang/Object;

    iget-object p0, p0, Lq12;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/material3/internal/MutableWindowInsets;

    check-cast v1, Landroidx/compose/foundation/layout/WindowInsets;

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/SearchBarKt;->q(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ldf4;

    check-cast v1, Ldf4;

    check-cast p1, Lal1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "first"

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    const-string p0, "second"

    invoke-interface {v1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    check-cast v1, Landroidx/compose/ui/graphics/Brush;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->m(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
