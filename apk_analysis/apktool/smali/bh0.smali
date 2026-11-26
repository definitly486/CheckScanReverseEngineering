.class public final synthetic Lbh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Lnl3;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Landroidx/compose/ui/graphics/ColorProducer;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIILandroidx/compose/ui/graphics/ColorProducer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbh0;->b:Ljava/lang/String;

    iput-object p2, p0, Lbh0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lbh0;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Lbh0;->e:Lnl3;

    iput p5, p0, Lbh0;->f:I

    iput-boolean p6, p0, Lbh0;->g:Z

    iput p7, p0, Lbh0;->h:I

    iput p8, p0, Lbh0;->i:I

    iput-object p9, p0, Lbh0;->j:Landroidx/compose/ui/graphics/ColorProducer;

    iput p10, p0, Lbh0;->k:I

    iput p11, p0, Lbh0;->l:I

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

    iget-object v0, p0, Lbh0;->b:Ljava/lang/String;

    iget-object v1, p0, Lbh0;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lbh0;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, p0, Lbh0;->e:Lnl3;

    iget v4, p0, Lbh0;->f:I

    iget-boolean v5, p0, Lbh0;->g:Z

    iget v6, p0, Lbh0;->h:I

    iget v7, p0, Lbh0;->i:I

    iget-object v8, p0, Lbh0;->j:Landroidx/compose/ui/graphics/ColorProducer;

    iget v9, p0, Lbh0;->k:I

    iget v10, p0, Lbh0;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIILandroidx/compose/ui/graphics/ColorProducer;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
