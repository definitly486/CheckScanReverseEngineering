.class public final Lyads/dy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/rv5;


# direct methods
.method public constructor <init>(Lyads/rv5;Lyads/et4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dy;->a:Lyads/rv5;

    new-instance p1, Lso9;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lso9;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lfh8;

    invoke-direct {p0, p1}, Lfh8;-><init>(Lll3;)V

    return-void
.end method

.method public static final a(Lws6;Lyads/dy;)Lyads/fy;
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Lyads/jv5;

    iget-object p1, p1, Lyads/dy;->a:Lyads/rv5;

    invoke-direct {p0}, Lyads/jv5;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lyads/ey;

    const/4 v1, 0x2

    new-array v1, v1, [Lyads/fy;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Lyads/jv5;

    iget-object p1, p1, Lyads/dy;->a:Lyads/rv5;

    invoke-direct {p0}, Lyads/jv5;-><init>()V

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-direct {v0}, Lyads/ey;-><init>()V

    return-object v0
.end method
