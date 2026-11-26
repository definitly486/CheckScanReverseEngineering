.class public final synthetic Lqr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic c:Ly22;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ly22;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr8;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p2, p0, Lqr8;->c:Ly22;

    iput-object p3, p0, Lqr8;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqr8;->d:Landroid/content/Context;

    check-cast p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    iget-object v1, p0, Lqr8;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object p0, p0, Lqr8;->c:Ly22;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->i(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ly22;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
