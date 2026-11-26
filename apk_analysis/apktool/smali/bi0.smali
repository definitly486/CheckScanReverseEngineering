.class public final synthetic Lbi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/foundation/BasicTooltipState;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/foundation/BasicTooltipState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi0;->b:Ly22;

    iput-object p2, p0, Lbi0;->c:Landroidx/compose/foundation/BasicTooltipState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbi0;->b:Ly22;

    iget-object p0, p0, Lbi0;->c:Landroidx/compose/foundation/BasicTooltipState;

    invoke-static {v0, p0}, Landroidx/compose/foundation/BasicTooltipKt;->b(Ly22;Landroidx/compose/foundation/BasicTooltipState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
