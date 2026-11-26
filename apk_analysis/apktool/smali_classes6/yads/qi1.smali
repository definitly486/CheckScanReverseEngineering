.class public final Lyads/qi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oi1;


# instance fields
.field public final a:Lyads/aw3;

.field public final b:Lyads/vl5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v0

    sget-object v1, Lyads/un4;->d:Lyads/rn4;

    invoke-virtual {v1, p1}, Lyads/rn4;->a(Landroid/content/Context;)Lyads/un4;

    move-result-object p1

    iget-object p1, p1, Lyads/un4;->a:Lyads/vl5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/qi1;->a:Lyads/aw3;

    iput-object p1, p0, Lyads/qi1;->b:Lyads/vl5;

    return-void
.end method

.method public static final a(Lr07;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lyads/xc3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/xc3;->a()V

    :cond_0
    return-void
.end method

.method public static final a(Lr07;Lyads/qi1;Ljava/lang/String;Lyads/ji1;)V
    .locals 1

    iget-object p1, p1, Lyads/qi1;->b:Lyads/vl5;

    new-instance v0, Lyads/pi1;

    invoke-direct {v0, p2, p3}, Lyads/pi1;-><init>(Ljava/lang/String;Lyads/ji1;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p3, p3}, Lyads/zc3;->a(Ljava/lang/String;Lyads/yc3;II)Lyads/xc3;

    move-result-object p1

    iput-object p1, p0, Lr07;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lyads/qi1;Lr07;)V
    .locals 2

    .line 16
    iget-object p0, p0, Lyads/qi1;->a:Lyads/aw3;

    new-instance v0, La80;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, La80;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ji1;)Lyads/du3;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lyads/qi1;->c(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/qi1;->c(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lyads/ji1;)Lyads/du3;
    .locals 3

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    iget-object v1, p0, Lyads/qi1;->a:Lyads/aw3;

    new-instance v2, Lg7a;

    invoke-direct {v2, v0, p0, p1, p2}, Lg7a;-><init>(Lr07;Lyads/qi1;Ljava/lang/String;Lyads/ji1;)V

    invoke-virtual {v1, v2}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    new-instance p1, Lh7a;

    invoke-direct {p1, p0, v0}, Lh7a;-><init>(Lyads/qi1;Lr07;)V

    return-object p1
.end method
