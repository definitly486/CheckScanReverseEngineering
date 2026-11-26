.class public final Lyads/gy1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lyads/af1;

.field public static final g:Lyads/af1;

.field public static final h:Lyads/af1;


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/af1;

.field public final c:Lyads/af1;

.field public final d:Lyads/af1;

.field public final e:Lyads/l42;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/af1;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v0, Lyads/gy1;->f:Lyads/af1;

    new-instance v0, Lyads/af1;

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    invoke-direct {v0, v2}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v0, Lyads/gy1;->g:Lyads/af1;

    new-instance v0, Lyads/af1;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v0, Lyads/gy1;->h:Lyads/af1;

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/af1;Lyads/af1;Lyads/af1;Lyads/l42;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gy1;->a:Lyads/as2;

    iput-object p2, p0, Lyads/gy1;->b:Lyads/af1;

    iput-object p3, p0, Lyads/gy1;->c:Lyads/af1;

    iput-object p4, p0, Lyads/gy1;->d:Lyads/af1;

    iput-object p5, p0, Lyads/gy1;->e:Lyads/l42;

    return-void
.end method


# virtual methods
.method public final a(Lyads/gy1;Lyads/fs2;Lyads/fs2;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/gy1;->a:Lyads/as2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lyads/gy1;->a:Lyads/as2;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :cond_2
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lyads/gy1;->b:Lyads/af1;

    iget-object v2, p1, Lyads/gy1;->b:Lyads/af1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/af1;->a(Lyads/af1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lyads/gy1;->c:Lyads/af1;

    iget-object v2, p1, Lyads/gy1;->c:Lyads/af1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/af1;->a(Lyads/af1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lyads/gy1;->d:Lyads/af1;

    iget-object v2, p1, Lyads/gy1;->d:Lyads/af1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/af1;->a(Lyads/af1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lyads/gy1;->e:Lyads/l42;

    iget-object p1, p1, Lyads/gy1;->e:Lyads/l42;

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lyads/l42;->a(Lyads/l42;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    move p0, v1

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_1
    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v0
.end method
