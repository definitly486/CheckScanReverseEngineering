.class public final Lyads/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/n70;

.field public final b:Lyads/c40;

.field public final c:Lyads/ma;

.field public final d:Lyads/tl5;

.field public e:Lyads/n8;

.field public f:Lyads/hk4;

.field public g:Lyads/s46;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Integer;

.field public k:Lyads/x54;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:I

.field public final o:I


# direct methods
.method public constructor <init>(Lyads/n70;)V
    .locals 3

    new-instance v0, Lyads/c40;

    new-instance v1, Lyads/vn2;

    invoke-direct {v1}, Lyads/vn2;-><init>()V

    new-instance v2, Lyads/ed;

    invoke-direct {v2}, Lyads/ed;-><init>()V

    invoke-direct {v0, v2, v1}, Lyads/c40;-><init>(Lyads/ed;Lyads/vn2;)V

    new-instance v1, Lyads/ma;

    invoke-direct {v1}, Lyads/ma;-><init>()V

    new-instance v2, Lyads/tl5;

    invoke-direct {v2}, Lyads/tl5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/e4;->a:Lyads/n70;

    iput-object v0, p0, Lyads/e4;->b:Lyads/c40;

    iput-object v1, p0, Lyads/e4;->c:Lyads/ma;

    iput-object v2, p0, Lyads/e4;->d:Lyads/tl5;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/e4;->m:Z

    sget p1, Lyads/ra3;->b:I

    iput p1, p0, Lyads/e4;->o:I

    return-void
.end method


# virtual methods
.method public final a()Lyads/n70;
    .locals 0

    .line 50
    iget-object p0, p0, Lyads/e4;->a:Lyads/n70;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lyads/e4;->c:Lyads/ma;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lyads/ma;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Ad Unit Id can\'t be set twice."

    invoke-static {p1, p0}, Lyads/jn3;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-object p1, p0, Lyads/ma;->a:Ljava/lang/String;

    return-void

    :cond_2
    :goto_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Ad Unit Id can\'t be null or empty."

    invoke-static {p1, p0}, Lyads/jn3;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/sl5;)V
    .locals 2

    .line 44
    iget-object p0, p0, Lyads/e4;->d:Lyads/tl5;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Ad size can\'t be null or empty."

    invoke-static {p1, p0}, Lyads/jn3;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Ad size can\'t be set twice."

    invoke-static {p1, p0}, Lyads/jn3;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_1
    iput-object p1, p0, Lyads/tl5;->a:Lyads/sl5;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/e4;->c:Lyads/ma;

    iget-object p0, p0, Lyads/ma;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lyads/vn2;
    .locals 0

    iget-object p0, p0, Lyads/e4;->b:Lyads/c40;

    iget-object p0, p0, Lyads/c40;->a:Lyads/vn2;

    return-object p0
.end method
