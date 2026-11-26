.class public final synthetic Luq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;
.implements Lxl3;
.implements Lcom/my/target/c1$a;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Luq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public align(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    iget-object p0, p0, Luq;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Alignment$Horizontal;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/Arrangement;->b(Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Luq;->b:Ljava/lang/Object;

    check-cast p0, Lxv;

    invoke-virtual {p0, p1}, Lxv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Luq;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/eb;

    sget v0, Lcom/my/target/eb;->i:I

    iput-object p1, p0, Lcom/my/target/eb;->f:Le6a;

    return-void
.end method
