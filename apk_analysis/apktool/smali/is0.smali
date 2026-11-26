.class public final synthetic Lis0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lis0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v0, v0, Lis0;->b:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lyads/lr0;->a(Ljava/lang/String;)Lyads/lr0;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/DpOffset;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-static {v0}, Landroidx/compose/material3/ProgressIndicatorKt;->q(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)Lj59;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ltc5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lzn3;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget-object v11, Lcg4;->Singleton:Lcg4;

    new-instance v1, Lgi0;

    const-class v2, Ldo3;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    sget-object v7, Lbf7;->e:Lba8;

    const/4 v4, 0x0

    move-object v2, v7

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    new-instance v2, Lm08;

    invoke-direct {v2, v1}, Ld64;-><init>(Lgi0;)V

    invoke-virtual {v0, v2}, Ltc5;->a(Ld64;)V

    new-instance v10, Lao3;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lao3;-><init>(I)V

    new-instance v6, Lgi0;

    const-class v1, Lfs4;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    new-instance v1, Lm08;

    invoke-direct {v1, v6}, Ld64;-><init>(Lgi0;)V

    invoke-virtual {v0, v1}, Ltc5;->a(Ld64;)V

    new-instance v10, Lbo3;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lgi0;

    const-class v1, Le17;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v8

    invoke-direct/range {v6 .. v11}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    new-instance v1, Lm08;

    invoke-direct {v1, v6}, Ld64;-><init>(Lgi0;)V

    invoke-virtual {v0, v1}, Ltc5;->a(Ld64;)V

    new-instance v1, Lht1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lht1;-><init>(I)V

    sget-object v17, Lcg4;->Factory:Lcg4;

    new-instance v12, Lgi0;

    const-class v2, Lno3;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object v13, v7

    invoke-direct/range {v12 .. v17}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    new-instance v1, Le53;

    invoke-direct {v1, v12}, Ld64;-><init>(Lgi0;)V

    invoke-virtual {v0, v1}, Ltc5;->a(Ld64;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {v0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->d(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object v0

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {v0}, Landroidx/compose/material3/internal/ChildParentSemanticsKt;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object v0

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-static {v0}, Landroidx/compose/foundation/BorderKt;->b(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object v0

    return-object v0

    nop

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
