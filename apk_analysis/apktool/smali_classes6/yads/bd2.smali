.class public final Lyads/bd2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ru1;

.field public final b:Lyads/ru1;

.field public final c:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lyads/ru1;Lyads/ru1;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bd2;->a:Lyads/ru1;

    iput-object p2, p0, Lyads/bd2;->b:Lyads/ru1;

    iput-object p3, p0, Lyads/bd2;->c:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bd2;Lyads/fs2;Lyads/fs2;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/bd2;->a:Lyads/ru1;

    iget-object v2, p1, Lyads/bd2;->a:Lyads/ru1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/ru1;->a(Lyads/ru1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lyads/bd2;->b:Lyads/ru1;

    iget-object v2, p1, Lyads/bd2;->b:Lyads/ru1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/ru1;->a(Lyads/ru1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lyads/bd2;->c:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    iget-object p1, p1, Lyads/bd2;->c:Lyads/as2;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    :cond_2
    invoke-static {p0, v1}, Laa4;->b(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method
