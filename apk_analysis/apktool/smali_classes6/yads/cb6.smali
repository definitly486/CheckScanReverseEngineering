.class public final Lyads/cb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wb6;


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/d9;

.field public final c:Lyads/xh4;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/d9;)V
    .locals 1

    new-instance v0, Lyads/xh4;

    invoke-direct {v0}, Lyads/xh4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cb6;->a:Lyads/e4;

    iput-object p2, p0, Lyads/cb6;->b:Lyads/d9;

    iput-object v0, p0, Lyads/cb6;->c:Lyads/xh4;

    return-void
.end method


# virtual methods
.method public final a()Lyads/h75;
    .locals 4

    iget-object v0, p0, Lyads/cb6;->b:Lyads/d9;

    iget-object v1, v0, Lyads/d9;->t:Ljava/lang/Object;

    check-cast v1, Lyads/vg4;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lyads/cb6;->c:Lyads/xh4;

    iget-object v3, p0, Lyads/cb6;->a:Lyads/e4;

    invoke-virtual {v2, v3, v0, v1}, Lyads/xh4;->a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;

    move-result-object v0

    sget-object v1, Lyads/c75;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyads/cb6;->b:Lyads/d9;

    iget-object p0, p0, Lyads/d9;->i:Lyads/c;

    iput-object p0, v0, Lyads/h75;->b:Lyads/c;

    return-object v0
.end method
