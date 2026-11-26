.class public final synthetic Lk48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk48;->b:I

    iput-object p2, p0, Lk48;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk48;->c:Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    iget p0, p0, Lk48;->b:I

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->a(ILjava/util/Collection;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
