.class public final synthetic Ln06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic f:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln06;->b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iput-boolean p2, p0, Ln06;->c:Z

    iput-boolean p3, p0, Ln06;->d:Z

    iput-object p4, p0, Ln06;->e:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p5, p0, Ln06;->f:Landroidx/compose/material3/TextFieldColors;

    iput-object p6, p0, Ln06;->g:Landroidx/compose/ui/graphics/Shape;

    iput p7, p0, Ln06;->h:F

    iput p8, p0, Ln06;->i:F

    iput p9, p0, Ln06;->j:I

    iput p10, p0, Ln06;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Ln06;->b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iget-boolean v1, p0, Ln06;->c:Z

    iget-boolean v2, p0, Ln06;->d:Z

    iget-object v3, p0, Ln06;->e:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v4, p0, Ln06;->f:Landroidx/compose/material3/TextFieldColors;

    iget-object v5, p0, Ln06;->g:Landroidx/compose/ui/graphics/Shape;

    iget v6, p0, Ln06;->h:F

    iget v7, p0, Ln06;->i:F

    iget v8, p0, Ln06;->j:I

    iget v9, p0, Ln06;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->b(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
