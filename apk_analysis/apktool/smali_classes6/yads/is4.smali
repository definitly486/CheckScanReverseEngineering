.class public final Lyads/is4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vq0;

.field public final b:Lyads/vr1;

.field public final c:Lyads/bt0;

.field public d:Lyads/hs4;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/vr1;Lyads/bt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/is4;->a:Lyads/vq0;

    iput-object p2, p0, Lyads/is4;->b:Lyads/vr1;

    iput-object p3, p0, Lyads/is4;->c:Lyads/bt0;

    return-void
.end method

.method public static final a(Lyads/is4;Lyads/cn1;Ljava/util/List;)Lj59;
    .locals 1

    .line 25
    iget-object v0, p0, Lyads/is4;->c:Lyads/bt0;

    .line 26
    iget-object p0, p0, Lyads/is4;->a:Lyads/vq0;

    .line 27
    iget-object p1, p1, Lyads/cn1;->b:Lyads/fs2;

    .line 28
    invoke-static {v0, p0, p1, p2}, Lyads/bt0;->a(Lyads/bt0;Lyads/vh2;Lyads/fs2;Ljava/util/List;)V

    .line 29
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final synthetic a(Lyads/is4;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lyads/is4;->b:Lyads/vr1;

    return-object p0
.end method

.method public static final synthetic a(Lyads/is4;Lyads/cn1;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lyads/is4;->a(Lyads/cn1;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/cn1;)V
    .locals 3

    iget-object v0, p1, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-interface {v0}, Lyads/p41;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/is4;->a:Lyads/vq0;

    new-instance v2, Liz9;

    invoke-direct {v2, p0, p1, v0}, Liz9;-><init>(Lyads/is4;Lyads/cn1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lyads/vq0;->a(Lll3;)V

    :cond_0
    return-void
.end method
