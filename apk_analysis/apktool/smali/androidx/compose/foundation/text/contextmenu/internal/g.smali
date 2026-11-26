.class public final synthetic Landroidx/compose/foundation/text/contextmenu/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/view/textclassifier/TextClassification;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/g;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/compose/foundation/text/contextmenu/internal/g;->c:Landroid/view/textclassifier/TextClassification;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/g;->b:Landroid/content/Context;

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/g;->c:Landroid/view/textclassifier/TextClassification;

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->f(Landroid/content/Context;Landroid/view/textclassifier/TextClassification;)Lj59;

    move-result-object p0

    return-object p0
.end method
