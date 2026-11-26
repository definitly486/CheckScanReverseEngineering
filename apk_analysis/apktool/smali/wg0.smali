.class public final synthetic Lwg0;
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

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwg0;->b:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Lwg0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lwg0;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Lwg0;->e:Lnl3;

    iput p5, p0, Lwg0;->f:I

    iput-boolean p6, p0, Lwg0;->g:Z

    iput p7, p0, Lwg0;->h:I

    iput p8, p0, Lwg0;->i:I

    iput-object p9, p0, Lwg0;->j:Ljava/util/Map;

    iput-object p10, p0, Lwg0;->k:Landroidx/compose/ui/graphics/ColorProducer;

    iput p11, p0, Lwg0;->l:I

    iput p12, p0, Lwg0;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lwg0;->b:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p0, Lwg0;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lwg0;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, p0, Lwg0;->e:Lnl3;

    iget v4, p0, Lwg0;->f:I

    iget-boolean v5, p0, Lwg0;->g:Z

    iget v6, p0, Lwg0;->h:I

    iget v7, p0, Lwg0;->i:I

    iget-object v8, p0, Lwg0;->j:Ljava/util/Map;

    iget-object v9, p0, Lwg0;->k:Landroidx/compose/ui/graphics/ColorProducer;

    iget v10, p0, Lwg0;->l:I

    iget v11, p0, Lwg0;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->o(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lnl3;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
