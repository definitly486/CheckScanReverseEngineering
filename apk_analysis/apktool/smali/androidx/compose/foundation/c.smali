.class public final synthetic Landroidx/compose/foundation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/BackgroundNode;

.field public final synthetic c:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/c;->b:Landroidx/compose/foundation/BackgroundNode;

    iput-object p2, p0, Landroidx/compose/foundation/c;->c:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/c;->b:Landroidx/compose/foundation/BackgroundNode;

    iget-object p0, p0, Landroidx/compose/foundation/c;->c:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-static {v0, p0}, Landroidx/compose/foundation/BackgroundNode;->a(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
