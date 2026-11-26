.class public final synthetic Lu31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ldm3;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu31;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu31;->c:I

    iput-object p2, p0, Lu31;->f:Ljava/lang/Object;

    iput-object p3, p0, Lu31;->d:Ldm3;

    iput-object p4, p0, Lu31;->g:Ljava/lang/Object;

    iput-object p5, p0, Lu31;->h:Ljava/lang/Object;

    iput-object p6, p0, Lu31;->i:Ljava/lang/Object;

    iput-object p7, p0, Lu31;->j:Ljava/lang/Object;

    iput p8, p0, Lu31;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Ldm3;II)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lu31;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu31;->f:Ljava/lang/Object;

    iput-object p2, p0, Lu31;->g:Ljava/lang/Object;

    iput-object p3, p0, Lu31;->h:Ljava/lang/Object;

    iput-object p4, p0, Lu31;->i:Ljava/lang/Object;

    iput-object p5, p0, Lu31;->j:Ljava/lang/Object;

    iput-object p6, p0, Lu31;->d:Ldm3;

    iput p7, p0, Lu31;->c:I

    iput p8, p0, Lu31;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lu31;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lu31;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lbm3;

    iget-object v0, p0, Lu31;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lbm3;

    iget-object v0, p0, Lu31;->h:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lbm3;

    iget-object v0, p0, Lu31;->i:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v0, p0, Lu31;->j:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lbm3;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v1, p0, Lu31;->c:I

    iget-object v3, p0, Lu31;->d:Ldm3;

    iget v8, p0, Lu31;->e:I

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/ScaffoldKt;->a(ILbm3;Ldm3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lu31;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Lu31;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    iget-object v0, p0, Lu31;->h:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/material3/CardColors;

    iget-object v0, p0, Lu31;->i:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/compose/material3/CardElevation;

    iget-object v0, p0, Lu31;->j:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/compose/foundation/BorderStroke;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, p0, Lu31;->d:Ldm3;

    iget v7, p0, Lu31;->c:I

    iget v8, p0, Lu31;->e:I

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/CardKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
