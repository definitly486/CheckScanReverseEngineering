.class public final Lqy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqn2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqy6$a;,
        Lqy6$b;
    }
.end annotation


# instance fields
.field public final a:Lw93;

.field public final b:Lvn2;


# direct methods
.method public constructor <init>(JLo22;Lw93;Lj46;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lqy6;->a:Lw93;

    new-instance v0, Lvn2;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lvn2;-><init>(JLo22;Lw93;Lj46;)V

    iput-object v0, p0, Lqy6;->b:Lvn2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lqy6$a;
    .locals 1

    sget-object v0, Lgx0;->e:Lgx0;

    invoke-static {p1}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object p1

    const-string v0, "SHA-256"

    invoke-virtual {p1, v0}, Lgx0;->e(Ljava/lang/String;)Lgx0;

    move-result-object p1

    invoke-virtual {p1}, Lgx0;->g()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lqy6;->b:Lvn2;

    invoke-virtual {p0, p1}, Lvn2;->b(Ljava/lang/String;)Lvn2$a;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lqy6$a;

    invoke-direct {p1, p0}, Lqy6$a;-><init>(Lvn2$a;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lqy6$b;
    .locals 1

    sget-object v0, Lgx0;->e:Lgx0;

    invoke-static {p1}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object p1

    const-string v0, "SHA-256"

    invoke-virtual {p1, v0}, Lgx0;->e(Ljava/lang/String;)Lgx0;

    move-result-object p1

    invoke-virtual {p1}, Lgx0;->g()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lqy6;->b:Lvn2;

    invoke-virtual {p0, p1}, Lvn2;->e(Ljava/lang/String;)Lvn2$c;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lqy6$b;

    invoke-direct {p1, p0}, Lqy6$b;-><init>(Lvn2$c;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFileSystem()Lw93;
    .locals 0

    iget-object p0, p0, Lqy6;->a:Lw93;

    return-object p0
.end method
