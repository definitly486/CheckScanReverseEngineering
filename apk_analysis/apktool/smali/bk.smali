.class public final synthetic Lbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lll3;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(JLll3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbk;->b:J

    iput-object p3, p0, Lbk;->c:Lll3;

    iput-boolean p4, p0, Lbk;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lbk;->d:Z

    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    iget-wide v1, p0, Lbk;->b:J

    iget-object p0, p0, Lbk;->c:Lll3;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->k(JLll3;ZLandroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method
