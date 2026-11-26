.class public final synthetic Ln14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/painter/Painter;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/ui/Alignment;

.field public final synthetic f:Landroidx/compose/ui/layout/ContentScale;

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/ui/graphics/ColorFilter;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln14;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p2, p0, Ln14;->c:Ljava/lang/String;

    iput-object p3, p0, Ln14;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Ln14;->e:Landroidx/compose/ui/Alignment;

    iput-object p5, p0, Ln14;->f:Landroidx/compose/ui/layout/ContentScale;

    iput p6, p0, Ln14;->g:F

    iput-object p7, p0, Ln14;->h:Landroidx/compose/ui/graphics/ColorFilter;

    iput p8, p0, Ln14;->i:I

    iput p9, p0, Ln14;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Ln14;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v1, p0, Ln14;->c:Ljava/lang/String;

    iget-object v2, p0, Ln14;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Ln14;->e:Landroidx/compose/ui/Alignment;

    iget-object v4, p0, Ln14;->f:Landroidx/compose/ui/layout/ContentScale;

    iget v5, p0, Ln14;->g:F

    iget-object v6, p0, Ln14;->h:Landroidx/compose/ui/graphics/ColorFilter;

    iget v7, p0, Ln14;->i:I

    iget v8, p0, Ln14;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
