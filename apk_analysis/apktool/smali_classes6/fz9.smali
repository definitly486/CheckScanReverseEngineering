.class public final synthetic Lfz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/yi1;

.field public final synthetic c:Lyads/ii1;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/zh1;

.field public final synthetic f:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/yi1;Lyads/ii1;Lyads/tt;Lyads/zh1;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfz9;->b:Lyads/yi1;

    iput-object p2, p0, Lfz9;->c:Lyads/ii1;

    iput-object p3, p0, Lfz9;->d:Lyads/tt;

    iput-object p4, p0, Lfz9;->e:Lyads/zh1;

    iput-object p5, p0, Lfz9;->f:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lfz9;->f:Lyads/fs2;

    move-object v5, p1

    check-cast v5, Lyads/hd3;

    iget-object v0, p0, Lfz9;->b:Lyads/yi1;

    iget-object v1, p0, Lfz9;->c:Lyads/ii1;

    iget-object v2, p0, Lfz9;->d:Lyads/tt;

    iget-object v3, p0, Lfz9;->e:Lyads/zh1;

    invoke-static/range {v0 .. v5}, Lyads/ii1;->a(Lyads/yi1;Lyads/ii1;Lyads/tt;Lyads/zh1;Lyads/fs2;Lyads/hd3;)Lj59;

    move-result-object p0

    return-object p0
.end method
