.class public final synthetic Lor8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field public final synthetic d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lor8;->b:Z

    iput-object p2, p0, Lor8;->c:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iput-object p3, p0, Lor8;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput p4, p0, Lor8;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v0, p0, Lor8;->b:Z

    iget-object v1, p0, Lor8;->c:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iget-object v2, p0, Lor8;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget v3, p0, Lor8;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->c(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
