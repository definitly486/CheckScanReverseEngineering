.class public final Li;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lz54;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lru6;

.field public final synthetic g:La08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La08<",
            "La64;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr07;Lru6;La08;)V
    .locals 0

    iput-object p2, p0, Li;->f:Lru6;

    iput-object p3, p0, Li;->g:La08;

    iput-object p1, p0, Li;->h:Lr07;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lz54;

    iget-object v0, p0, Li;->f:Lru6;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lru6;->b:Lzya;

    new-instance v2, La64;

    iget-object v3, p1, Lz54;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lz54;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lz54;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iget-object v1, p1, Lz54;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    iget-object v9, p1, Lz54;->e:Ljava/lang/Long;

    invoke-direct/range {v2 .. v9}, La64;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p0, Li;->g:La08;

    invoke-interface {p1, v2}, La08;->a(La64;)V

    iget-object p1, v0, Lru6;->a:Landroid/content/Context;

    iget-object p0, p0, Li;->h:Lr07;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/ServiceConnection;

    invoke-static {p1, p0}, Lny1;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
