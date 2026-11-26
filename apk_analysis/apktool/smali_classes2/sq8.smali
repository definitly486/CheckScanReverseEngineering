.class public final synthetic Lsq8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TextFieldDefaults;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic f:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsq8;->b:Landroidx/compose/material3/TextFieldDefaults;

    iput-boolean p2, p0, Lsq8;->c:Z

    iput-boolean p3, p0, Lsq8;->d:Z

    iput-object p4, p0, Lsq8;->e:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p5, p0, Lsq8;->f:Landroidx/compose/material3/TextFieldColors;

    iput-object p6, p0, Lsq8;->g:Landroidx/compose/ui/graphics/Shape;

    iput p7, p0, Lsq8;->h:I

    iput p8, p0, Lsq8;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lsq8;->b:Landroidx/compose/material3/TextFieldDefaults;

    iget-boolean v1, p0, Lsq8;->c:Z

    iget-boolean v2, p0, Lsq8;->d:Z

    iget-object v3, p0, Lsq8;->e:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v4, p0, Lsq8;->f:Landroidx/compose/material3/TextFieldColors;

    iget-object v5, p0, Lsq8;->g:Landroidx/compose/ui/graphics/Shape;

    iget v6, p0, Lsq8;->h:I

    iget v7, p0, Lsq8;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/TextFieldDefaults;->c(Landroidx/compose/material3/TextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
