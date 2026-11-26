.class public final synthetic Lho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lbm3;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Lcm3;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/material3/ListItemColors;FFII)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lho;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lho;->c:Lbm3;

    iput-object p2, p0, Lho;->d:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lho;->e:Lbm3;

    iput-object p4, p0, Lho;->j:Lcm3;

    iput-object p5, p0, Lho;->k:Ljava/lang/Object;

    iput-object p6, p0, Lho;->l:Ljava/lang/Object;

    iput-object p7, p0, Lho;->m:Ljava/lang/Object;

    iput p8, p0, Lho;->f:F

    iput p9, p0, Lho;->g:F

    iput p10, p0, Lho;->h:I

    iput p11, p0, Lho;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lho;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lho;->c:Lbm3;

    iput-object p2, p0, Lho;->d:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lho;->e:Lbm3;

    iput-object p4, p0, Lho;->j:Lcm3;

    iput p5, p0, Lho;->f:F

    iput p6, p0, Lho;->g:F

    iput-object p7, p0, Lho;->k:Ljava/lang/Object;

    iput-object p8, p0, Lho;->l:Ljava/lang/Object;

    iput-object p9, p0, Lho;->m:Ljava/lang/Object;

    iput p10, p0, Lho;->h:I

    iput p11, p0, Lho;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lho;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lho;->j:Lcm3;

    move-object v4, v0

    check-cast v4, Lbm3;

    iget-object v0, p0, Lho;->k:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lbm3;

    iget-object v0, p0, Lho;->l:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lbm3;

    iget-object v0, p0, Lho;->m:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroidx/compose/material3/ListItemColors;

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v1, p0, Lho;->c:Lbm3;

    iget-object v2, p0, Lho;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lho;->e:Lbm3;

    iget v8, p0, Lho;->f:F

    iget v9, p0, Lho;->g:F

    iget v10, p0, Lho;->h:I

    iget v11, p0, Lho;->i:I

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ListItemKt;->c(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/material3/ListItemColors;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lho;->j:Lcm3;

    move-object v4, v0

    check-cast v4, Ldm3;

    iget-object v0, p0, Lho;->k:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v0, p0, Lho;->l:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroidx/compose/material3/TopAppBarColors;

    iget-object v0, p0, Lho;->m:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v1, p0, Lho;->c:Lbm3;

    iget-object v2, p0, Lho;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lho;->e:Lbm3;

    iget v5, p0, Lho;->f:F

    iget v6, p0, Lho;->g:F

    iget v10, p0, Lho;->h:I

    iget v11, p0, Lho;->i:I

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/AppBarKt;->z(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
