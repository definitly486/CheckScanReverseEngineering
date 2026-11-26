.class public final Lyads/wd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzo7;


# instance fields
.field public final a:Lyads/br0;

.field public final b:Lyads/fs2;

.field public final c:Lnl3;

.field public final d:Lnl3;


# direct methods
.method public constructor <init>(Lyads/br0;Lyads/fs2;Lnl3;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wd2;->a:Lyads/br0;

    iput-object p2, p0, Lyads/wd2;->b:Lyads/fs2;

    iput-object p3, p0, Lyads/wd2;->c:Lnl3;

    iput-object p4, p0, Lyads/wd2;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final a(Lnl3;)Lyads/wd2;
    .locals 3

    new-instance v0, Lyads/wd2;

    iget-object v1, p0, Lyads/wd2;->a:Lyads/br0;

    iget-object v2, p0, Lyads/wd2;->b:Lyads/fs2;

    iget-object p0, p0, Lyads/wd2;->d:Lnl3;

    invoke-direct {v0, v1, v2, p1, p0}, Lyads/wd2;-><init>(Lyads/br0;Lyads/fs2;Lnl3;Lnl3;)V

    return-object v0
.end method

.method public final b(Lnl3;)Lyads/wd2;
    .locals 3

    new-instance v0, Lyads/wd2;

    iget-object v1, p0, Lyads/wd2;->a:Lyads/br0;

    iget-object v2, p0, Lyads/wd2;->b:Lyads/fs2;

    iget-object p0, p0, Lyads/wd2;->c:Lnl3;

    invoke-direct {v0, v1, v2, p0, p1}, Lyads/wd2;-><init>(Lyads/br0;Lyads/fs2;Lnl3;Lnl3;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lyads/td2;

    iget-object v1, p0, Lyads/wd2;->a:Lyads/br0;

    iget-object v2, p0, Lyads/wd2;->b:Lyads/fs2;

    invoke-direct {v0, p0, v1, v2}, Lyads/td2;-><init>(Lyads/wd2;Lyads/br0;Lyads/fs2;)V

    return-object v0
.end method
