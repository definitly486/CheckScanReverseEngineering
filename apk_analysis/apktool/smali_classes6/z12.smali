.class public final synthetic Lz12;
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

    iput p2, p0, Lz12;->b:I

    iput-object p1, p0, Lz12;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lz12;->b:I

    iget-object p0, p0, Lz12;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/b3;

    invoke-static {p0}, Lyads/x95;->a(Lyads/b3;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/uh;

    invoke-static {p0}, Lyads/uh;->a(Lyads/uh;)Landroid/app/ActivityManager;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lyads/gf0;->a(Landroid/content/Context;)Lyads/wn2;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lyads/bo1;

    invoke-static {p0}, Lyads/bo1;->f(Lyads/bo1;)Lyads/m93;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/compose/material3/ProgressIndicatorKt;->c(Lll3;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->g(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->g(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;)Lj59;

    move-result-object p0

    return-object p0

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
