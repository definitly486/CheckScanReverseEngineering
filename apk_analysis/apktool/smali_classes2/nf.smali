.class public final synthetic Lnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Lll3;

.field public final synthetic d:Lll3;

.field public final synthetic e:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lll3;Lnl3;Lnl3;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnf;->b:Lnl3;

    iput-object p1, p0, Lnf;->c:Lll3;

    iput-object p4, p0, Lnf;->d:Lll3;

    iput-object p3, p0, Lnf;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lnf;->d:Lll3;

    iget-object v1, p0, Lnf;->e:Lnl3;

    iget-object v2, p0, Lnf;->b:Lnl3;

    iget-object p0, p0, Lnf;->c:Lll3;

    invoke-static {v2, p0, v0, v1, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;->b(Lnl3;Lll3;Lll3;Lnl3;Ljava/lang/Object;)Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object p0

    return-object p0
.end method
