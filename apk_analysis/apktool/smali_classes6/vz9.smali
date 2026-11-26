.class public final synthetic Lvz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Lyads/jk1;

.field public final synthetic f:Lyads/tt;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lnl3;Lyads/fs2;Lyads/jk1;Lyads/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvz9;->b:Ljava/util/List;

    iput-object p2, p0, Lvz9;->c:Lnl3;

    iput-object p3, p0, Lvz9;->d:Lyads/fs2;

    iput-object p4, p0, Lvz9;->e:Lyads/jk1;

    iput-object p5, p0, Lvz9;->f:Lyads/tt;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lvz9;->e:Lyads/jk1;

    iget-object v4, p0, Lvz9;->f:Lyads/tt;

    iget-object v0, p0, Lvz9;->b:Ljava/util/List;

    iget-object v1, p0, Lvz9;->c:Lnl3;

    iget-object v2, p0, Lvz9;->d:Lyads/fs2;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/jk1;->a(Ljava/util/List;Lnl3;Lyads/fs2;Lyads/jk1;Lyads/tt;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
