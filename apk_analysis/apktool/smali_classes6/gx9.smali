.class public final synthetic Lgx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/hh1;

.field public final synthetic c:Lyads/nh1;

.field public final synthetic d:Lyads/vq0;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Lyads/eh1;

.field public final synthetic g:Lyads/ao2;


# direct methods
.method public synthetic constructor <init>(Lyads/hh1;Lyads/nh1;Lyads/vq0;Lyads/fs2;Lyads/eh1;Lyads/ao2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx9;->b:Lyads/hh1;

    iput-object p2, p0, Lgx9;->c:Lyads/nh1;

    iput-object p3, p0, Lgx9;->d:Lyads/vq0;

    iput-object p4, p0, Lgx9;->e:Lyads/fs2;

    iput-object p5, p0, Lgx9;->f:Lyads/eh1;

    iput-object p6, p0, Lgx9;->g:Lyads/ao2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lgx9;->g:Lyads/ao2;

    move-object v6, p1

    check-cast v6, Landroid/net/Uri;

    iget-object v0, p0, Lgx9;->b:Lyads/hh1;

    iget-object v1, p0, Lgx9;->c:Lyads/nh1;

    iget-object v2, p0, Lgx9;->d:Lyads/vq0;

    iget-object v3, p0, Lgx9;->e:Lyads/fs2;

    iget-object v4, p0, Lgx9;->f:Lyads/eh1;

    invoke-static/range {v0 .. v6}, Lyads/hh1;->a(Lyads/hh1;Lyads/nh1;Lyads/vq0;Lyads/fs2;Lyads/eh1;Lyads/ao2;Landroid/net/Uri;)Lj59;

    move-result-object p0

    return-object p0
.end method
