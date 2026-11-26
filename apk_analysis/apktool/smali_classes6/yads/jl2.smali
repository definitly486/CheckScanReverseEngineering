.class public final Lyads/jl2;
.super Lyads/r75;
.source "SourceFile"


# static fields
.field public static final v:Ljava/lang/Object;


# instance fields
.field public final s:Lyads/il2;

.field public final t:Lyads/fl2;

.field public final u:Lyads/qd3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/jl2;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lyads/fl2;Lyads/gl2;)V
    .locals 1

    new-instance v0, Lyads/il2;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Lyads/il2;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, p4}, Lyads/r75;-><init>(ILjava/lang/String;Lyads/x85;)V

    iput-object v0, p0, Lyads/jl2;->s:Lyads/il2;

    iput-object p3, p0, Lyads/jl2;->t:Lyads/fl2;

    new-instance p1, Lyads/qd3;

    invoke-direct {p1}, Lyads/qd3;-><init>()V

    iput-object p1, p0, Lyads/jl2;->u:Lyads/qd3;

    new-instance p1, Lyads/am0;

    const/high16 p3, 0x40000000    # 2.0f

    const/4 p4, 0x2

    const/16 v0, 0x3e8

    invoke-direct {p1, v0, p3, p4}, Lyads/am0;-><init>(IFI)V

    iput-object p1, p0, Lyads/r75;->o:Lyads/am0;

    iput-boolean p2, p0, Lyads/r75;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/en4;)Lyads/z85;
    .locals 3

    sget-object v0, Lyads/jl2;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/jl2;->u:Lyads/qd3;

    iget-object v2, p1, Lyads/en4;->b:[B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/qd3;->a([B)Lyads/pd3;

    move-result-object v1

    iget-object p0, p0, Lyads/jl2;->s:Lyads/il2;

    iget-object v2, p1, Lyads/en4;->b:[B

    invoke-virtual {p0, v2}, Lyads/il2;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v2, Lyads/kl2;

    invoke-direct {v2, p0, v1}, Lyads/kl2;-><init>(Landroid/graphics/drawable/Drawable;Lyads/pd3;)V

    invoke-static {p1}, Lyads/pa3;->a(Lyads/en4;)Lyads/wv;

    move-result-object p0

    new-instance v1, Lyads/z85;

    invoke-direct {v1, v2, p0}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance p1, Lyads/rs4;

    invoke-direct {p1, p0}, Lyads/rs4;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lyads/z85;

    invoke-direct {v1, p1}, Lyads/z85;-><init>(Lyads/hi6;)V

    goto :goto_2

    :goto_1
    iget-object p1, p1, Lyads/en4;->b:[B

    array-length p1, p1

    sget-boolean p1, Lyads/li6;->a:Z

    new-instance p1, Lyads/rs4;

    invoke-direct {p1, p0}, Lyads/rs4;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lyads/z85;

    invoke-direct {v1, p1}, Lyads/z85;-><init>(Lyads/hi6;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lyads/kl2;

    .line 74
    iget-object p0, p0, Lyads/jl2;->t:Lyads/fl2;

    invoke-virtual {p0, p1}, Lyads/fl2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
