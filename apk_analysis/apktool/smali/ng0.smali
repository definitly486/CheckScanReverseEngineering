.class public final synthetic Lng0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Lnl3;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/util/Map;

.field public final synthetic k:Landroidx/compose/ui/graphics/ColorProducer;

.field public final synthetic l:Landroidx/compose/foundation/text/TextAutoSize;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lng0;->b:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Lng0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lng0;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Lng0;->e:Lnl3;

    iput p5, p0, Lng0;->f:I

    iput-boolean p6, p0, Lng0;->g:Z

    iput p7, p0, Lng0;->h:I

    iput p8, p0, Lng0;->i:I

    iput-object p9, p0, Lng0;->j:Ljava/util/Map;

    iput-object p10, p0, Lng0;->k:Landroidx/compose/ui/graphics/ColorProducer;

    iput-object p11, p0, Lng0;->l:Landroidx/compose/foundation/text/TextAutoSize;

    iput p12, p0, Lng0;->m:I

    iput p13, p0, Lng0;->n:I

    iput p14, p0, Lng0;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v0, Lng0;->b:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v0, Lng0;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lng0;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v0, Lng0;->e:Lnl3;

    iget v5, v0, Lng0;->f:I

    iget-boolean v6, v0, Lng0;->g:Z

    iget v7, v0, Lng0;->h:I

    iget v8, v0, Lng0;->i:I

    iget-object v9, v0, Lng0;->j:Ljava/util/Map;

    iget-object v10, v0, Lng0;->k:Landroidx/compose/ui/graphics/ColorProducer;

    iget-object v11, v0, Lng0;->l:Landroidx/compose/foundation/text/TextAutoSize;

    iget v12, v0, Lng0;->m:I

    iget v13, v0, Lng0;->n:I

    iget v14, v0, Lng0;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/foundation/text/BasicTextKt;->i(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
