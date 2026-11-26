.class public final synthetic Le9a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:[Lyads/r02;

.field public final synthetic c:Lyads/ti2;

.field public final synthetic d:Lyads/vq0;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>([Lyads/r02;Lyads/ti2;Lyads/vq0;Lyads/fs2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9a;->b:[Lyads/r02;

    iput-object p2, p0, Le9a;->c:Lyads/ti2;

    iput-object p3, p0, Le9a;->d:Lyads/vq0;

    iput-object p4, p0, Le9a;->e:Lyads/fs2;

    iput-object p5, p0, Le9a;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le9a;->e:Lyads/fs2;

    iget-object v1, p0, Le9a;->f:Landroid/view/View;

    iget-object v2, p0, Le9a;->b:[Lyads/r02;

    iget-object v3, p0, Le9a;->c:Lyads/ti2;

    iget-object p0, p0, Le9a;->d:Lyads/vq0;

    invoke-static {v2, v3, p0, v0, v1}, Lyads/ti2;->a([Lyads/r02;Lyads/ti2;Lyads/vq0;Lyads/fs2;Landroid/view/View;)Lj59;

    move-result-object p0

    return-object p0
.end method
