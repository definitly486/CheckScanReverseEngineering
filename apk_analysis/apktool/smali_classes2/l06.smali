.class public final synthetic Ll06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll06;->b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iput-boolean p2, p0, Ll06;->c:Z

    iput-boolean p3, p0, Ll06;->d:Z

    iput-object p4, p0, Ll06;->e:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p5, p0, Ll06;->f:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Ll06;->g:Landroidx/compose/material3/TextFieldColors;

    iput-object p7, p0, Ll06;->h:Landroidx/compose/ui/graphics/Shape;

    iput p8, p0, Ll06;->i:F

    iput p9, p0, Ll06;->j:F

    iput p10, p0, Ll06;->k:I

    iput p11, p0, Ll06;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Ll06;->b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iget-boolean v1, p0, Ll06;->c:Z

    iget-boolean v2, p0, Ll06;->d:Z

    iget-object v3, p0, Ll06;->e:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v4, p0, Ll06;->f:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Ll06;->g:Landroidx/compose/material3/TextFieldColors;

    iget-object v6, p0, Ll06;->h:Landroidx/compose/ui/graphics/Shape;

    iget v7, p0, Ll06;->i:F

    iget v8, p0, Ll06;->j:F

    iget v9, p0, Ll06;->k:I

    iget v10, p0, Ll06;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->c(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
