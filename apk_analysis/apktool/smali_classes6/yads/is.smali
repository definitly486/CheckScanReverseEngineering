.class public final Lyads/is;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/ea5;

.field public final synthetic c:Lyads/ks;


# direct methods
.method public constructor <init>(Lyads/ea5;Lyads/ks;)V
    .locals 0

    iput-object p1, p0, Lyads/is;->b:Lyads/ea5;

    iput-object p2, p0, Lyads/is;->c:Lyads/ks;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lyads/is;->b:Lyads/ea5;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyads/ea5;->a(Lyads/w80;)V

    iget-object p1, p0, Lyads/is;->b:Lyads/ea5;

    invoke-virtual {p1}, Lyads/s03;->c()V

    iget-object p1, p0, Lyads/is;->c:Lyads/ks;

    iget-object p1, p1, Lyads/ks;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lyads/is;->b:Lyads/ea5;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
