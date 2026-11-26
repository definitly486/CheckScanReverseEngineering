.class public final synthetic Lpl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lnl3;

.field public final synthetic i:Lnl3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILnl3;Lnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl1;->b:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Lpl1;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lpl1;->d:Landroidx/compose/ui/text/TextStyle;

    iput-boolean p4, p0, Lpl1;->e:Z

    iput p5, p0, Lpl1;->f:I

    iput p6, p0, Lpl1;->g:I

    iput-object p7, p0, Lpl1;->h:Lnl3;

    iput-object p8, p0, Lpl1;->i:Lnl3;

    iput p9, p0, Lpl1;->j:I

    iput p10, p0, Lpl1;->k:I

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

    iget-object v0, p0, Lpl1;->b:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p0, Lpl1;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lpl1;->d:Landroidx/compose/ui/text/TextStyle;

    iget-boolean v3, p0, Lpl1;->e:Z

    iget v4, p0, Lpl1;->f:I

    iget v5, p0, Lpl1;->g:I

    iget-object v6, p0, Lpl1;->h:Lnl3;

    iget-object v7, p0, Lpl1;->i:Lnl3;

    iget v8, p0, Lpl1;->j:I

    iget v9, p0, Lpl1;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/text/ClickableTextKt;->b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILnl3;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
