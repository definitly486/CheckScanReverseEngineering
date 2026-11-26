.class public final Lyads/tc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/g02;


# direct methods
.method public constructor <init>(Lyads/g02;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tc1;->a:Lyads/g02;

    return-void
.end method


# virtual methods
.method public final a(Lyads/tc1;Lyads/fs2;Lyads/fs2;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lyads/tc1;->a:Lyads/g02;

    iget-object p1, p1, Lyads/tc1;->a:Lyads/g02;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lyads/g02;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p1, Lyads/g02;->a:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lyads/g02;->b:Lyads/f02;

    iget-object v2, p1, Lyads/g02;->b:Lyads/f02;

    invoke-virtual {v1, v2, p2, p3}, Lyads/f02;->a(Lyads/f02;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lyads/g02;->c:Lyads/l42;

    iget-object p1, p1, Lyads/g02;->c:Lyads/l42;

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
    :goto_2
    return v0
.end method
