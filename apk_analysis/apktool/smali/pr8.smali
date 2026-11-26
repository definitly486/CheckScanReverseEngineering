.class public final synthetic Lpr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic c:Ly22;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpr8;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p2, p0, Lpr8;->c:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    check-cast p2, Landroid/content/Context;

    iget-object v0, p0, Lpr8;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object p0, p0, Lpr8;->c:Ly22;

    invoke-static {v0, p0, p2, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->l(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ly22;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
