.class public final synthetic Landroidx/compose/foundation/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/MarqueeSpacing;

.field public final synthetic c:Landroidx/compose/foundation/MarqueeModifierNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/MarqueeSpacing;Landroidx/compose/foundation/MarqueeModifierNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/l;->b:Landroidx/compose/foundation/MarqueeSpacing;

    iput-object p2, p0, Landroidx/compose/foundation/l;->c:Landroidx/compose/foundation/MarqueeModifierNode;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/l;->b:Landroidx/compose/foundation/MarqueeSpacing;

    iget-object p0, p0, Landroidx/compose/foundation/l;->c:Landroidx/compose/foundation/MarqueeModifierNode;

    invoke-static {v0, p0}, Landroidx/compose/foundation/MarqueeModifierNode;->c(Landroidx/compose/foundation/MarqueeSpacing;Landroidx/compose/foundation/MarqueeModifierNode;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
