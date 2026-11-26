.class public final synthetic Leo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Leo1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget p0, p0, Leo1;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    move-object p0, p1

    check-cast p0, Landroidx/compose/runtime/saveable/SaverScope;

    move-object/from16 v0, p2

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p0, v0}, Landroidx/compose/ui/text/SaversKt;->K(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/geometry/Offset;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object p0, p1

    check-cast p0, Lo22;

    move-object/from16 v1, p2

    check-cast v1, Lo22$a;

    instance-of v2, v1, Ln02;

    if-eqz v2, :cond_0

    check-cast v1, Ln02;

    invoke-interface {v1}, Ln02;->o()Ln02;

    invoke-interface {p0, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_1
    move-object p0, p1

    check-cast p0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    and-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    const v2, 0x3db137aa

    const-string v5, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$1035024298.<anonymous> (CheckscanTopBar.kt:70)"

    invoke-static {v2, v1, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    new-instance v6, Luk6$e;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    const-string v5, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)"

    const v9, -0x311808d9

    if-eqz v2, :cond_3

    invoke-static {v9, v4, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    sget-object v2, Loc1;->b:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmc1;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    iget-wide v10, v10, Lmc1;->e:J

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v9, v4, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmc1;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    iget-wide v2, v2, Lmc1;->d:J

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v13

    move-wide v9, v10

    move-wide v11, v2

    invoke-direct/range {v6 .. v13}, Luk6$e;-><init>(JJJLandroidx/compose/ui/graphics/Color;)V

    invoke-static {v6, v0, p0, v4}, Ltk6;->c(Luk6;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    :cond_7
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_8
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, p2

    check-cast v0, Lo22$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
