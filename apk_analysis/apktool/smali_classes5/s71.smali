.class public final synthetic Ls71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lx71;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lx71;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls71;->b:Lx71;

    iput-object p2, p0, Ls71;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p1, p0, Ls71;->b:Lx71;

    iget-object p0, p0, Ls71;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lx71;->e(Ljava/util/ArrayList;)Lj59;

    move-result-object p0

    return-object p0
.end method
