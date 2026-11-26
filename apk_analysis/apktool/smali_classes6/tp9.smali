.class public final synthetic Ltp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/c32;

.field public final synthetic c:Lyads/vq0;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lyads/k32;


# direct methods
.method public synthetic constructor <init>(Lyads/c32;Lyads/vq0;Lyads/fs2;Ljava/util/List;Lyads/k32;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltp9;->b:Lyads/c32;

    iput-object p2, p0, Ltp9;->c:Lyads/vq0;

    iput-object p3, p0, Ltp9;->d:Lyads/fs2;

    iput-object p4, p0, Ltp9;->e:Ljava/util/List;

    iput-object p5, p0, Ltp9;->f:Lyads/k32;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ltp9;->e:Ljava/util/List;

    iget-object v1, p0, Ltp9;->f:Lyads/k32;

    iget-object v2, p0, Ltp9;->b:Lyads/c32;

    iget-object v3, p0, Ltp9;->c:Lyads/vq0;

    iget-object p0, p0, Ltp9;->d:Lyads/fs2;

    invoke-static {v2, v3, p0, v0, v1}, Lyads/c32;->a(Lyads/c32;Lyads/vq0;Lyads/fs2;Ljava/util/List;Lyads/k32;)Lj59;

    move-result-object p0

    return-object p0
.end method
