.class public final synthetic Llt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/dj1;

.field public final synthetic c:Lyads/ds1;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Lyads/bj1;


# direct methods
.method public synthetic constructor <init>(Lyads/dj1;Lyads/ds1;Lyads/fs2;Lyads/bj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llt9;->b:Lyads/dj1;

    iput-object p2, p0, Llt9;->c:Lyads/ds1;

    iput-object p3, p0, Llt9;->d:Lyads/fs2;

    iput-object p4, p0, Llt9;->e:Lyads/bj1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llt9;->d:Lyads/fs2;

    iget-object v1, p0, Llt9;->e:Lyads/bj1;

    iget-object v2, p0, Llt9;->b:Lyads/dj1;

    iget-object p0, p0, Llt9;->c:Lyads/ds1;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/dj1;->a(Lyads/dj1;Lyads/ds1;Lyads/fs2;Lyads/bj1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
