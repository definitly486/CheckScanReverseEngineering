.class public final synthetic Lhx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/hh1;

.field public final synthetic c:Lyads/nh1;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Lyads/as2;

.field public final synthetic f:Lyads/as2;


# direct methods
.method public synthetic constructor <init>(Lyads/hh1;Lyads/nh1;Lyads/fs2;Lyads/as2;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhx9;->b:Lyads/hh1;

    iput-object p2, p0, Lhx9;->c:Lyads/nh1;

    iput-object p3, p0, Lhx9;->d:Lyads/fs2;

    iput-object p4, p0, Lhx9;->e:Lyads/as2;

    iput-object p5, p0, Lhx9;->f:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lhx9;->e:Lyads/as2;

    iget-object v4, p0, Lhx9;->f:Lyads/as2;

    iget-object v0, p0, Lhx9;->b:Lyads/hh1;

    iget-object v1, p0, Lhx9;->c:Lyads/nh1;

    iget-object v2, p0, Lhx9;->d:Lyads/fs2;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/hh1;->a(Lyads/hh1;Lyads/nh1;Lyads/fs2;Lyads/as2;Lyads/as2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
