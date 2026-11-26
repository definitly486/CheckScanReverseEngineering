.class public final synthetic Lh67;
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

    iput p2, p0, Lh67;->b:I

    iput-object p1, p0, Lh67;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh67;->b:I

    iget-object p0, p0, Lh67;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->C(Lyads/nq0;)Lyads/c32;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/material3/WideNavigationRailStateImpl;

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailStateImpl;->a(Landroidx/compose/material3/WideNavigationRailStateImpl;)Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/material3/internal/TextFieldImplKt;->f(Landroidx/compose/runtime/State;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/material3/SearchBarState;

    invoke-static {p0}, Landroidx/compose/material3/SearchBarState;->a(Landroidx/compose/material3/SearchBarState;)Landroidx/compose/material3/SearchBarValue;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lnl3;

    invoke-static {p0}, Landroidx/compose/runtime/retain/RetainedEffectKt;->a(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
