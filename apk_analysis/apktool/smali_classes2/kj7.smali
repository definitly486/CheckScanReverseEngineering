.class public final synthetic Lkj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ly22;

.field public final synthetic d:Landroidx/compose/material3/SearchBarState;


# direct methods
.method public synthetic constructor <init>(ZLy22;Landroidx/compose/material3/SearchBarState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkj7;->b:Z

    iput-object p2, p0, Lkj7;->c:Ly22;

    iput-object p3, p0, Lkj7;->d:Landroidx/compose/material3/SearchBarState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkj7;->d:Landroidx/compose/material3/SearchBarState;

    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    iget-boolean v1, p0, Lkj7;->b:Z

    iget-object p0, p0, Lkj7;->c:Ly22;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/SearchBarDefaults;->o(ZLy22;Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object p0

    return-object p0
.end method
