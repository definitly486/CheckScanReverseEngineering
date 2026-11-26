.class public final synthetic Lvj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/material3/SearchBarState;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/material3/SearchBarState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvj7;->b:Ly22;

    iput-object p2, p0, Lvj7;->c:Landroidx/compose/material3/SearchBarState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvj7;->b:Ly22;

    iget-object p0, p0, Lvj7;->c:Landroidx/compose/material3/SearchBarState;

    invoke-static {v0, p0}, Landroidx/compose/material3/SearchBarKt;->i(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;

    move-result-object p0

    return-object p0
.end method
