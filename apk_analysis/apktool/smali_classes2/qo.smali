.class public final synthetic Lqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lqo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lqo;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/gf0;->k()Lyads/q94;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/compose/foundation/text/TextLinkScope;->g()Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a()Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->f0()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Ltx0;->a:Lch2;

    return-object p0

    :pswitch_4
    invoke-static {}, Landroidx/compose/material3/NavigationBarKt;->j()Landroidx/compose/material3/NavigationBarOverride;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Landroidx/compose/material3/ColorSchemeKt;->b()Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Landroidx/compose/material3/AppBarKt;->n()Landroidx/compose/material3/TwoRowsTopAppBarOverride;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
