.class public final synthetic Llf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/Path;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Path;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llf5;->b:Landroidx/compose/ui/graphics/Path;

    iput p2, p0, Llf5;->c:I

    iput p3, p0, Llf5;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Llf5;->d:I

    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    iget-object v1, p0, Llf5;->b:Landroidx/compose/ui/graphics/Path;

    iget p0, p0, Llf5;->c:I

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->a(Landroidx/compose/ui/graphics/Path;IILandroidx/compose/ui/text/ParagraphInfo;)Lj59;

    move-result-object p0

    return-object p0
.end method
