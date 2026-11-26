.class public final Lyads/i81;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yc1;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;

.field public final d:Lyads/as2;

.field public final e:Lyads/tc1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/yc1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/tc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/i81;->a:Lyads/yc1;

    iput-object p2, p0, Lyads/i81;->b:Lyads/as2;

    iput-object p3, p0, Lyads/i81;->c:Lyads/as2;

    iput-object p4, p0, Lyads/i81;->d:Lyads/as2;

    iput-object p5, p0, Lyads/i81;->e:Lyads/tc1;

    return-void
.end method


# virtual methods
.method public final a(Lyads/i81;Lyads/fs2;Lyads/fs2;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/i81;->a:Lyads/yc1;

    iget-object v2, p1, Lyads/i81;->a:Lyads/yc1;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2, p2, p3}, Lyads/yc1;->a(Lyads/yc1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lyads/i81;->b:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lyads/i81;->b:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lyads/i81;->c:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lyads/i81;->c:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lyads/i81;->d:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lyads/i81;->d:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lyads/i81;->e:Lyads/tc1;

    iget-object p1, p1, Lyads/i81;->e:Lyads/tc1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/tc1;->a(Lyads/tc1;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v0
.end method
