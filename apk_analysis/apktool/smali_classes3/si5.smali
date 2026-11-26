.class public final synthetic Lsi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ln07;

.field public final synthetic c:Ln07;

.field public final synthetic d:Landroidx/navigation/internal/NavControllerImpl;

.field public final synthetic e:Z

.field public final synthetic f:Lfr;


# direct methods
.method public synthetic constructor <init>(Ln07;Ln07;Landroidx/navigation/internal/NavControllerImpl;ZLfr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsi5;->b:Ln07;

    iput-object p2, p0, Lsi5;->c:Ln07;

    iput-object p3, p0, Lsi5;->d:Landroidx/navigation/internal/NavControllerImpl;

    iput-boolean p4, p0, Lsi5;->e:Z

    iput-object p5, p0, Lsi5;->f:Lfr;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lsi5;->f:Lfr;

    move-object v5, p1

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    iget-object v0, p0, Lsi5;->b:Ln07;

    iget-object v1, p0, Lsi5;->c:Ln07;

    iget-object v2, p0, Lsi5;->d:Landroidx/navigation/internal/NavControllerImpl;

    iget-boolean v3, p0, Lsi5;->e:Z

    invoke-static/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->o(Ln07;Ln07;Landroidx/navigation/internal/NavControllerImpl;ZLfr;Landroidx/navigation/NavBackStackEntry;)Lj59;

    move-result-object p0

    return-object p0
.end method
